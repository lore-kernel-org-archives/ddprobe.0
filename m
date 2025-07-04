Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054D19C54B
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751641795; cv=none; b=VyY2ROq2ye6aOifAC5Ym/JqT+Rd+/w9pmoHUkcweANbRGzb5DAQFJKXgup0wy1k34n6lpPS4LYS1RGaokDZEr8wXeKJbYmj7TebXwDulKl9qpyaIBQRPudBr2yaAc1x36EQdgJNwD8QP2cPsROy1tzw23/jArD3IqUHobTKZRyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751641795; c=relaxed/simple;
	bh=jOVIcim/1KCp1XEOHilJbUeTkGX4x6mT+g541wLbokU=;
	h=To:Subject:From:Message-Id:Date; b=Rf+6htVhJ5Ac9d3FRJpruEdbWXVagy83p17ukcagmI2gsd5CWH5aT6UMyy6UI+0dl7b44pWuP36FUbFxsi8EoAGQAnM/QIWJFkOMI3FvqNQB62eHfF1PlLh7y1sjCGWCG+ykEYezMSu2vrBoE0MxySDxHN+ZrpkxMtriyTaRP54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKEVYyPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKEVYyPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7159C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751641793;
	bh=jOVIcim/1KCp1XEOHilJbUeTkGX4x6mT+g541wLbokU=;
	h=To:Subject:From:Date:From;
	b=rKEVYyPYk9jJ3q8VkTp4TSFG/dywvE2mzYydxeYP83DxKcm34EM0GLx0u75/ScP3K
	 VcGMH/PevSckFm+G2uSszpcNnrl0SgSC7oqMDgbz4X15PDHYRmVEP4ZXdU5NNN1SN7
	 HSu0tcJSXeCg6oQonpB9+6fPFgWnm0RCoEwuWoaY/wg1Rd7XVz75JdegDh1srkcHnO
	 9J5idARi5TPCSvqTdABEadS5j3PLyrFBuNvC0xbpcyvHmekGdAEK9xKyDkFdx+9efq
	 mw4JUvVF3RtodJpOqonq9K4i7XwHMsa2xg/CG3OZpCQOgTDOot5UjIcnrD/Bq+TOfn
	 dRK2Uzhv68N5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F30C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164179359.26424.3471594734597938863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcefbc75297ed7155cbbdbea8e3573546681b42c3b39fe91d4390e5319e666c7
Date: Fri, 04 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751641793
