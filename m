Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3953C158538
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764086574; cv=none; b=MGZmx0NL4EoDK7je4v8DlUY594NU5yLgZF9a1YYyAkFAoxmaLHVceeQryi4SpXBVGOEDSRa1W54Zs0H9JTH0VpwRIuwxezs6GkA5WxaEe7dLgUl0BKYsWqTdZf7GuV8WbrsVv48/ybLV5NVOcmIGIe31fHtDJdNYp4Klym7AZP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764086574; c=relaxed/simple;
	bh=cMFkIR6Gpnr7BLj53BdFBaZrMG75YJ4YbZK5/7YjVvc=;
	h=To:Subject:From:Message-Id:Date; b=V7oWDY5brcUCcW6iGGBltY9/gGkqRTVval46m++7bADQ0N04ghAZcU6em168yQOj3PFHjEXUF2rCWcJX0wGBmLBI7mqq0+5Z1/nMsyQn8qczWyUGHjcyeX1/6WHGWn1l6YSTVcElkzq1lrvtV0bjIn665rXvwKT/n1+0FSpTe1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzqOZilN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzqOZilN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B607BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764086573;
	bh=cMFkIR6Gpnr7BLj53BdFBaZrMG75YJ4YbZK5/7YjVvc=;
	h=To:Subject:From:Date:From;
	b=UzqOZilNbVg7d5Ut1hkUnQFMzP/vf+67OUvCr/52MqHzfOksB7If9/0DkZOlnQZpk
	 TaEDVIOiK7cdsWSISKkFg0gQywoeFaJNaaOfeKodh7q0LDyQzpXASH/pYkdBLOKu6F
	 K61flegLN/GaZN4bgOKu0rG8aKehfAh50WkYxpxyuslYLXmtBrmMaks6QlvOqvNB03
	 s0IB5C+v3j3Vk4Z3T5qRTpBxZ9JaCBGsEpALAUF9aZe6Lo2jSoEHXBpSfTCCgNqtfA
	 TyxzeM1tjc6tWSUuC1A23udU0hYclWIR4x8EoAkatIRousmLuS6CIZhzyruUWgmMvC
	 NoH2CCvz8DIIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F665D0EE04
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408657364.1816.6241414017289557020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f50cac1c31dc401edd9849ae97b9aba9a35d6d0dedf11e2df9e3e10a70596b
Date: Tue, 25 Nov 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764086573
