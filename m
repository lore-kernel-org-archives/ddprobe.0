Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0D7847B
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722665754; cv=none; b=SlmxfZVxc1Mzx5V5v7aT6RQxKWGHzcl/+Y5fHe6GRIpkOxhYChgOhUYTSRCTaZ2R047lpe+ZbwGbFAbl40/yat4drP8kk6CuBe7a74cG+MhFjCkeaUBSV7vwckhLbrwUu4Twlsro0R0EnRHl2iX2VMS9SO3V3yCQQj+YwDHqg6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722665754; c=relaxed/simple;
	bh=/b8kzgH+00hJKN0eieRA3elV98v9WeGRPXdoLIbKObs=;
	h=To:Subject:From:Message-Id:Date; b=PUjOw+e3tXccsI00q12xAioUeDLhw2lYqCCcv6db3xdcjSJXYJBZyCoGL8j2IEX4a22ILR1x8RqIYnFqTvM8a77X3NvpQSvlX3u4b+zJp2LxBHAIXeA+rEXOvQOBY+3UTTRnI2mSeF9iYdn5DeXkYaYfsOmXq6jtJ4TR2De9cr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQVxo5yX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQVxo5yX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5E4C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722665753;
	bh=/b8kzgH+00hJKN0eieRA3elV98v9WeGRPXdoLIbKObs=;
	h=To:Subject:From:Date:From;
	b=GQVxo5yXOqVclNVDEGnOj4yi1ObcS3ddiSWaEnqECCwBX/ibbjX6n8bMZrrSDBrk2
	 fKBRoU0LySoFrH7G9GS73xOlfGqR+fpKLdj/xFMmsISbgs0qoJZ4cTKgdVxf3FQoMQ
	 5weXV6fV08jPK0eVR1xkZ6iCznbzQoct/TzJri25bmC4a7G82MDITKqoN287Arf81M
	 5KgqiuQORrp9zKS7DGPuLf8MW7LUwIYtTKn5pjQsgTltt9kuM8vhNlQqvasqPqUA0j
	 ZL0oHs5n1nIo3Lmxc8FUrcTXX3wDxqqwgqV7BKA0ZbYayn06e3XJP8cHUWOZat1xuh
	 t5CaB2ueSD4+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA704C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172266575368.17779.10777932133386342356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c69a0021e056c0a72c55534a8c59bc3a068b146e99d17788dea897001c117e1
Date: Sat, 03 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722665753
