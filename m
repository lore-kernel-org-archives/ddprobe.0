Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1864345C0B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766810634; cv=none; b=ohhakZ2JViTaDxlLTPVCUbIaeegeA26snbnH3carPIyO29vdBQ6tBQOXI/8v7nEH0iQrgseBu3Q6M9FEqVbJ4VVuRCLtgGX98HiJG4d1zcldyrlN94KVg1Nb+bc9/qHaUxbQiAalsMlbEa+k0OP8IO1cWOMRV+ZmMLA0Ko2OqqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766810634; c=relaxed/simple;
	bh=o7KHzgt95crf1EkIvf3q+eH+fh8cXF57Y7Xp7k4vu+Q=;
	h=To:Subject:From:Message-Id:Date; b=pCtyck6wyc3kihDE96kDbBu+xgAz85FuIiOwztGVYysviV3S3nBy5PmeTQ2AvbOrZ7QtpT1JTCa1NPLoR+ZIvg6Oftnm38vFDXw7NDBiGDPFh0s9TvW8fVyWsXXuDv7vQHHvi9BJHvJcw/5ySNloSLIGqiKMcJYJDyXV1s5hOjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nte+McHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nte+McHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62B2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766810633;
	bh=o7KHzgt95crf1EkIvf3q+eH+fh8cXF57Y7Xp7k4vu+Q=;
	h=To:Subject:From:Date:From;
	b=nte+McHNwvu8BI/yiSec/jpTKtQ8VeRc0M8aOMtBiwebrq1h2fE/wxqjluADSYAUn
	 ARPYOe/9MZXqIbmUsC5dG6TH/UdPuKBvGia+rDvZNqR06u3QMs42hJJ1cYPIWDpW+Z
	 kQH/OBaQOg1yrHZ4eiUIFy6tdEuX8zY0HDXUlfEc2EQJPXrGlz/xd8CHQmbWrnUHcR
	 ZVcecrxe+UOvCeNW6gs7PzAICAcV1EzL8iVpyRKf4Zhqf5BYnS/0yFK6mXxbqF9g00
	 RDJq5Y8iPZPJXLAg8tjt4rEjEzrtmQFMtZqST+prMNUKTiZkXLnDVPYeNYRvl5GLGr
	 5U09YysgngyEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB5E7AD7F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681063358.2227.12332809061505258381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14a3e26b784a009c96372cab595bfb0ead1215a0996bbff4c84abc27ee9a981
Date: Sat, 27 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766810633
