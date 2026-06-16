Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34980449EA8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781630794; cv=none; b=lMvO0SRG5zCgORV6lCP78DveHxJXZq8Eb6fxETNC97caBGnKaSY9+BH4xhLFb5AclMrMgPqZbRGpT/Mm2MG255b5zxGoA7+0HTwK0sEf6hFi2kWzdmKYzq7UjUB+TeLyWuJTu8tzzqKnq3R59aefWQNnyr0mIhj+Ic9Q20ZeVcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781630794; c=relaxed/simple;
	bh=L0zGXqhtHqyJzfNMx5Vl81CwvhxVpbcWPs+tkP5GrLM=;
	h=To:Subject:From:Message-Id:Date; b=qsUNKFB1spyuyMCnLSAK+rgaKF80vmUHUKs6E9ICPxXlgMFEJWl6mByXNfC4kKUs2BQAyJAD8QiIA0EkIOvGyChI9iyPC0An9ZpVEimMYPCo7s8vxrqEXKBDFYT8CwQX7GsdBfUzdYNUOE7mjCuUKYfsYHyk4Cp+QKf9AzBs6gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUHpO499; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUHpO499"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DD6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781630793;
	bh=L0zGXqhtHqyJzfNMx5Vl81CwvhxVpbcWPs+tkP5GrLM=;
	h=To:Subject:From:Date:From;
	b=LUHpO499m3xRWu8EDDT7c/okzSmAEUsdXdK+57SThCLzFjH+J2kbQ2HDpy7WTphrY
	 kdOHX1b816tOCEW45T+Yjqg1KubRzTSjvZ3tFBsLhRyuDihWaikSLABbGk3aWBcH52
	 9ZKDQAvfQJ/z8Kx4ZeWXnWBqxohjYkkwBXKyUc/tu+AQnqrBQU4uLTWaiVscld9eKh
	 ht8a4lHlsDqufODNNC7rrDbpDirWPhZf/3KOvjBEwheZ7O+z2+pc7fncJmTTTrSDWl
	 H0fRHz9N0fNS79iBVMzKM9ZRWv5BCX8m4W9qcMEM7radcUau3Wn5MBdbyekj1Bt1H2
	 wQtpPOLJ5tQMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AF2CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163079371.6135.6211474646011485115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e7c310b6d769ee97caddcab5c8c231cd8bbe19dcfbfcef4e49569a378e7099
Date: Tue, 16 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781630793
