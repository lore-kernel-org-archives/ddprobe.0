Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD391E4BE
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784941234; cv=none; b=q+9NrZp7PVbgBdvBB4lrXvK4EKhKNbWWTiPvd4eINORRnnFMIU2VV+iAZUMUVo86Il/C3wIBwWtVKEusLo9gxqbqiM3E2ogGVPcMklwtQn530igFBVJHuDYc8j6FcMjYUSM/dghZGXfiSxb7mQskqTptRKNr5jDWkAmMq7NKPJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784941234; c=relaxed/simple;
	bh=3XWX7bPDPe9SNZFK0IZC8WzyWQ/mxgW57xxS8fhuRhE=;
	h=To:Subject:From:Message-Id:Date; b=KUGRq8O7U1eidU1z4QYElSeqlgyZGQO/gxKHa8UDkSzsf676inJJ9o9kPowkXIodGky+k9S3uDknvM5AK57qT+WdiXdAhwk5HehkGB1HL+zWzvGcn6vhDZVWCjFe/ioayT9eU0nO05/hUSzA/lg3v6WJovGIO4sPrG9wmvE1lts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DamuJKaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DamuJKaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13A8C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784941233;
	bh=3XWX7bPDPe9SNZFK0IZC8WzyWQ/mxgW57xxS8fhuRhE=;
	h=To:Subject:From:Date:From;
	b=DamuJKaLu0JItUZrZpIYK4+QCviH+B5TW2Qp31AgJ58FS/6+i8P48G5++mvj7eOVG
	 V7Thz+lBsfJWitwhdWDa7lUoHvhNsaoAbpm8kJkNeR13HCH5xtUnakB2ByIAY2+aAU
	 038BWmlzofxt7l/LXaaaW/h5V9ZvlmuxK4pS0U4/2IDmRj1Z+/qj+j7VlwKtFvay3W
	 PG2aDtC+h3DYa+xhRWyTufQIApAq7tVG33kLjI/Af8cRNudOlt65iEBFxBWVoX+4XP
	 DtXIzNfpdEOVqIcc7D9G9Bfzrp9IJw4Y9oVIQXF97UzhNrCUPhR1Fd0d0Xc5cJ83Lp
	 XUfLZnVbpvK0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA04C531FC
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494123369.20432.2072297520194037090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3497acc259febceff1fc717904cf59227f2b89d62a99ad66b25241ad69d8614e
Date: Sat, 25 Jul 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784941233
