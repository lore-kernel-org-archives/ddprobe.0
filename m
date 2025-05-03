Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BDE8479
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746236394; cv=none; b=qTFoQTDwEbka7GVPjcPy6VPHhly21eVhxX1Uz/b3TE7LPwFFcFHOJZgclMQBqf6+KojnBSCV0WwoYsprasMZUS8QFQTdJRaND1X98FHcvM0RzSfOnsGE6Rt5F6CCcybymmpWL+eoCE6nMVU+inTuCcMJaKPOqEHC6aiWmLrIPSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746236394; c=relaxed/simple;
	bh=PTMGF9Arbkq7O5SD8Al7dDNJG4e44qWNff44MtAuTkU=;
	h=To:Subject:From:Message-Id:Date; b=ofnH91dQWVRmfAY0aU60CH02+3hoPUe5woSSyu7OQjCFfeR8YaF/1f/Inq+pr5gfmCx7fxp5yqCogmNZMqIFeAaA8bbTAMp5WsB0E73hY1a0EiK825+mWCYw3yAdO+RY+7BJWTfGufOxnk3lEZ7F9SgGJmgZJubE6M50cLD+iqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGLSpW0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGLSpW0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B7C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746236393;
	bh=PTMGF9Arbkq7O5SD8Al7dDNJG4e44qWNff44MtAuTkU=;
	h=To:Subject:From:Date:From;
	b=EGLSpW0IbB4bySBp1nLNkK16cVGSBCH17znihKY/Cyr9QRqBdfEYTUNnMQY1RPm9E
	 XfE2YmcrjGpH7xQlZO+FSuUrYolz+Ap99CclO+yy0mYpBdQKppA3d/cDlgb5YKKZaT
	 A2RKh2MgmdOl9nLO3bhHNuPIYfKuLuAV7RUBvlzXk0dYxhQw6t9Sze20oMUShDDyAP
	 EmFym76xWhkujHTLIFE8APei3RKZY85Bu3GeADqd+JLs1cep/+D+ow8+aHa52TXv/l
	 utG2YMnH7bwFLLjMBhrIdq6t7RIHtXHkcztT0shHNhizGHvBKdGp4PK+us9ApdMvXY
	 JI2GStxVGtKqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C62C3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623639357.11517.3386905758453717061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1ea657f7cfa43ea5c38e8ec39d0dee409da9c2caed30c295643d756e0a0a80
Date: Sat, 03 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746236393
