Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F601386C9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735947354; cv=none; b=QxhbP+fxIvb7NkE/Pcro7NF8DOoB2tMVzhL/zafmcV9QggPq3VVm/YMdIR9D/wwJYoiIvyFQnO0XMwljCC1o55vtsx+3b90clWTkm+bdGHwchYMlU1jEjaYuTKqpinpCd9ZUU+MTF3Ec2uUCSxXOW6rCCoiQekh7PZV+OWQOlsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735947354; c=relaxed/simple;
	bh=GyQZbFa7pAVxAKsn77jeX4D9raYBkQVgm1/yqB79L5I=;
	h=To:Subject:From:Message-Id:Date; b=dN+GggLnrL9NlVjI1mJKhR8kg40yoFU7fKNyrb7Dc59AahSroZXE1jGg/w2Cp/ryHgfg8sgXyU+vVE3z6f2yYNsOqJTTsPHQEmV9Fs7gzSE/ojicKWka7PwTGV2Y92fYb6EIbQN+ppAkFcMRsDVRgLmyy5K+ydzw9b1qBojFZHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJ9GYNSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJ9GYNSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7403C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735947353;
	bh=GyQZbFa7pAVxAKsn77jeX4D9raYBkQVgm1/yqB79L5I=;
	h=To:Subject:From:Date:From;
	b=ZJ9GYNSi1yzNwFBkjJnfearWcach+jNdjCoIRdgNpEkH83i1PfOe2tOiTCZsEl3km
	 wSW7IyzDM71xaw91LStHr4mMU/h5/3856dDPtoyiY8POa9bYzVbz+jMnvZmiurf3T6
	 1jHUktMAFMTCmsOAP9W8Yr217N+pKs85j6jw0MCU/vyt2P00puj53Ws7WSsCFC0MR8
	 9fPtDS2K6fohiHgG4CWVTj/yOesGJ7zAk/nQCiy1IpVbSqiEdjXFGq1/o7clLsBU59
	 IF9/Lp0EdlOeg7OxFi1/Gt4WUCvH+f+Ppv2RRAofJiPxP2OuGHH6+iY+z3+bc4DXVP
	 Oam4nxs5dnoXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9796CE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594735360.26549.6527027533965061998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e0ab39fa8b6f7711ae425534679d4806e76e72f63a215680231987ac3e77d6b
Date: Fri, 03 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735947353
