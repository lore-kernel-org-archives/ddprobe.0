Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC85BA3D
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732167354; cv=none; b=p9ggnvnIl8TybqEqzLGT/psleUMFsrhICFeeyFaCQrcE+UFsAxNPHfyWIicDSA1eRrWNu6/HS91WTB59mtYCjdlwtubXfDCL2AWzzf6QQKy6n787flNU3ZDUYIyu6sKcGBx+EyB1aRWL9/1RgkV2RvYFNE5PL+b6WfYRkYlleaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732167354; c=relaxed/simple;
	bh=3JqJUXtk7+GgYVK2IECEk62FgGeRlExIctLXIdnPgBs=;
	h=To:Subject:From:Message-Id:Date; b=IvETMryc0boXIuOTo6RwMHanmjnLP4KDhiQHyQGau7nyigzIK8AfLISkOTjxI78uRw3kPHvjNzOJNImal3PEm/sVsozO50sFGpLh/GDAH8evC7fToHfsQIz6cHADFLk3bA8CLVj2wUvkWqwlEkKD3re22hDSPQ3B9ZSvOQPxb88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7CCppsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7CCppsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF06C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732167353;
	bh=3JqJUXtk7+GgYVK2IECEk62FgGeRlExIctLXIdnPgBs=;
	h=To:Subject:From:Date:From;
	b=d7CCppsXQ2dKjPkitkerN53fqqfTHuW3EwmA+0pyOt10QXRU2OteFkMgiueVTAYGr
	 tBHlIfEvXsjjk35X5PsmZ/S7XYqSFdmPeuy8lMzUZecvRRSp10qMp280KQFIknJ6oz
	 LYP5+Ns6pTDqAJ7PHK4RCcECckMiO4YtSoqYISM16wf0EJximDfd6hja7hFb50LrVv
	 YJ6PEjZ7U5OB8dQ8MMisd0olcWuM0yJw9gZVdaeM8GLRsD2dMtv9pJLpKsbwohFd7D
	 bnRHz0pSEWYLSksikizHgoUgdh2bML8evNE5NvtfkI/svEVPD9Sh/1DEEhNSSjBdcV
	 2wGabtHvNmfyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923EFD75BB9
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173216735359.12113.426257688321715351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfc4541b4a7e73a09f52afd7ee2dd6d990c81dac2714cf3f5bcd3474ab4c536
Date: Thu, 21 Nov 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732167353
