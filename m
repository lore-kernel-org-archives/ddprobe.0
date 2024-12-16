Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2969E146A71
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734365754; cv=none; b=uD8vXAN/hcEJD5bZbKMtZIAdNHzIlsCZfy2s8ztiJC1UeIT+Fh60eGoY7E7CZAmzrJugIeiH/lqxjEtABcqC5pp89zejy4XZbJYPyrjMg7sMzfDFSMsuD/0KshWRsujH8tVOKB/EHwLqqdq+cVIE8SCKhB7MFIXvJHyzFE+3+Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734365754; c=relaxed/simple;
	bh=JSJlVjqvyo2R40/IXB0ODGiNlWit7NjdsoaTvqS9gl4=;
	h=To:Subject:From:Message-Id:Date; b=YtPNpZqSxcXPmyucLedWylXcp2bq14H8/himZxV4tXvYuDhDctuWQI5U2kg9jpTVndgKKirEf5mpxn5e7OQDX5OTyuSd/aC6CMNnA9bqI+EAJybDSTJyMsWbWRp5b9IbQlFGA2NWXlkLg/mdoAUvB45fg96qpDdHFEREqNBXY+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8ERyrI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8ERyrI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A542FC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734365753;
	bh=JSJlVjqvyo2R40/IXB0ODGiNlWit7NjdsoaTvqS9gl4=;
	h=To:Subject:From:Date:From;
	b=J8ERyrI3Whl3wq7T6P1/+ZWgGJdUPOOMrb56+QSa70HlZlsCDt1CIXARUusX7WhEf
	 3zyTV6MMYBLrSrlWA+YGxIlJxoxprxW/hYZsqTvLGYNAUJn6Q163Xeg+gEfp+J7wYY
	 jRFN9ps1Kz1MQGb8VAJkwrbc6bxhrbNAD9pm79/FgyeG7HE+R7+JD+DwXsOJ0G9qXo
	 Ve0ghHB5XUICYnguhan3H7gwEaWzmVf9JO/+xlPZdM8A9vxAq0OUruuX6d0H/SrEy4
	 gwf/q1vX2TMYDZjR0LCv5DuXdMKsSK9v8wBbTr1YA1AdOl9L0aWpHDpF0irFh6KV6O
	 qmqfXEBWBqQ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C13E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173436575358.11046.10648303421417722429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb401bef65ebd0c8e6be29dab4952cbe03166f5d77c10cfcc0728c6c75a180a
Date: Mon, 16 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734365753
