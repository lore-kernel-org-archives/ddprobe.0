Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1CB202C30
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758071394; cv=none; b=RFeWs2vcZSMFc8G2+jq/Ruual05j8FrY2qP3Xrhx4V8AdeczUTwF49H5y1ANDFUlSeLhu7x/LUs1up8nFFxvvPS1ZCD/Ff6Sgp4BrPJuRcwKPoIjqkLog3OE8dCa51geSgGD+9deJS7ScS0tzaGFXDhKH0Q5rS0dUwpgIbaYyoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758071394; c=relaxed/simple;
	bh=kgOdu/eXsUHZtFZ3Au0kAJgwGv/H0Ry9evFw+9B6iFs=;
	h=To:Subject:From:Message-Id:Date; b=TgLywhHPDHL3Ic8Y/GuRPc5xycjr9PDvPvrRIycT77+4XhhWLL47ttQjPskqMddvyTD11WgnGKk1Sj7lUgo5HsLmvVTKS70aGlmbkrlgOpbZjv/6kC7sm81kAxIzYShhF2dQRcGUW75WREZps319x7V5iFI72o/Nhq6XkvV8n9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RY1pmgBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RY1pmgBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8ABC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758071393;
	bh=kgOdu/eXsUHZtFZ3Au0kAJgwGv/H0Ry9evFw+9B6iFs=;
	h=To:Subject:From:Date:From;
	b=RY1pmgBGYNMlUpUQT2PAeggbWMpaZhj+8pY6Pln8qlq2eDyFulBoNIEH8GdiA1uYi
	 qVug7JWguvzWt0bbvEfFEoQE88CJW/O36zc7Sayx+BxZGcp5gV+sEuO0xddwsbCQdH
	 tLsQe2J+OCFi/62CdXR9Qm8+cMSNsDnIIVWqLONqdBhKS4M7TQmCjtgnJzdAPuoERH
	 HVUjDkdPqYs+AQWh3FLzLhl0sWQvv8rKkNOltg7mRe9FHnuSITzoeaNIlbsMl/4wxT
	 XkYBaFE7dkJnZPuNAO7OXv5vFd+qkl+m3N4woFm7pZTmFIzCy0UAKb2wfleUSnXo9I
	 C4nhva7T9wWiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F175CAC592
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807139357.20361.5197990362541005233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afb0858efcb2ca55df8c8f5ebaba25c33bd737da964f4a3b2d669e1a3a1dc4a
Date: Wed, 17 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758071393
