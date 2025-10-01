Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14381E8331
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759313993; cv=none; b=ZAcGPEpetYflDIGR3EzJikA6keg9cXr3e6Gxc3H1ZxKRiWolBaA/1bg4GKR+XwtUASKiaNiMKDZmZuvwAs6LiGk9oNd4luVs8xdpvHHV9cqs+GyIdM7sf9DB2Ti9ygUeEbyXC3b79DRCV4v1sEDatF/D40Ay8lwTDVhcq6J95M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759313993; c=relaxed/simple;
	bh=/9EF1hJgvuoYXDB+8Tsh9Zks8GxvEih08JpNnNSFp8w=;
	h=To:Subject:From:Message-Id:Date; b=OrzFyRNYtVJxG3kAy9Xz5HnDtr0I27GekrNRwKHSHKoFwCFaAqUMNbdcDVlsDbB8AeCTUxq+wddyhvl1L20o9/GC/m6elYrpAydxd8owKzyPq18jB0TVcLQjECwOACIixRYx+zAC/aavEH4aY4HdLIFSNumkPhtnAsudL0C5xGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMRS5HCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMRS5HCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F5FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759313993;
	bh=/9EF1hJgvuoYXDB+8Tsh9Zks8GxvEih08JpNnNSFp8w=;
	h=To:Subject:From:Date:From;
	b=WMRS5HCMaVYqGM2oVPeHS5JMa/m63Rhgk9wmNLutgWfc3sXizBP4gUZiB4t253s63
	 +IFnfWb1xY3i+FsZeaZkwZoJ1Al8u6uCAib+YMew8njlNANan2SGzPBEAYm8r3vJvA
	 Reja2pxg1u94MzR1qdadJJ0isv0xojXeEi2TOk1bjpbNM7//ux7R65eENSAOLR0o4s
	 MnB+yof4OQVvjJvlidUfv1HSxn5PabyMfToKge19P9Q8JddMSmfoDRZfXgFqyJOANe
	 r1vibDNCzOenL81tXN0y7bXTsZz1C7iJtYaA5B6rfg0dnkl1sZ1mGm/oD3jq6fG1bv
	 R9/N9p8NpMa/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEFCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931399358.26852.7757895602167776931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e0c882ece41bb02803877eae9dc27b6365ec2392c5ebeed11c1efa18c3e762
Date: Wed, 01 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759313993
