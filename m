Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275891684B0
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760891394; cv=none; b=DaOLvhtDeHguNl5Yq4javqZzqFKISJtHQmKTTkiddU7Y9NF+bA9qc8ssBGbt6iVZ/2abfhKuWoZ4mpuzyjeKsZQ1S1WF8KcF7uqOSiuDlQdFITaxhVOvoq1G3yftKvQDD3DZRWGcVuBK38j7apZl5qxIGZgzzuzPyaV3IQDubdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760891394; c=relaxed/simple;
	bh=tjdcZ3Qbkc/22FJMfcY0RNrWGOShRqqnd2ogQsI49zU=;
	h=To:Subject:From:Message-Id:Date; b=u1qZlU1Zu+i+Ore+bEum7pwhN5ZtN9Cj5LN1M54/qGE3X08Opkh4BPZhLveJQB6c7A5BHleAYpWK4y50f+VS6pRj1FKbIpYlrQEpSpfU+sBsInRgb9nuqDNa6cfmXIvPWi1Ny6beem4kWSd+wahHTcyiYN3HZLtjda6g8jh+4As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onA1NiaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onA1NiaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6776C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760891393;
	bh=tjdcZ3Qbkc/22FJMfcY0RNrWGOShRqqnd2ogQsI49zU=;
	h=To:Subject:From:Date:From;
	b=onA1NiaF3aUw7q3CYD2Mi7GguCqyYbE5Qb7jDAqTLpuydo5dobOYxYmehGqgo6Qi4
	 FHl9IhDt2lY/jL5Rq3kS/iQSfMLOH0CwzaWGQXKZbWunizWHoy+sCji/GqzEBGKroz
	 4nlqD5ai4HYjaQ7knrDp8myhIs2NhS2aUcA9fSWmx9xXdeRpMs592hOr/+z69K9Juu
	 ZfRkxnBD5Wg9+7V15BbVuq6mz8miUw9cmCEn3V9K0+V2YOmRAxtCm0VlqslscrlGjd
	 XN3bDTy2k+vGoJnsItafDEUcE6DX8cMF/9AMlGHcIEiEdnXxGKCtdvnmPV0qJ6btwS
	 uEnzJaUIcC7ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9736FCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089139358.28717.17606809249572892970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc071a3db4e5db2bc768832c3c98b1e5f5e5df0d337a6e16b129c4bba1e3479
Date: Sun, 19 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760891393
