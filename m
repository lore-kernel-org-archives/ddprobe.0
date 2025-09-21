Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248B622EE5
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758434994; cv=none; b=qZR+1h67poOo3Lqx6izcRBnBjP3hd5ZkrPzgG/eFYPe65tERWdKAeA6lt5wJ2Uq1vvVUgkKYoj85chpSEavDpq1jA+uA1nGMML+nulzhLOOsiQmLow9T7dHExzUpnUgHoFgO8otU41rC0n7QObVSp+15k66ymh59pPYzlsq4Yiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758434994; c=relaxed/simple;
	bh=CPP42ERSTlUp+Vqw7h5FO04hhUNZGhA3TA9weWVvSSg=;
	h=To:Subject:From:Message-Id:Date; b=G+0icd7YsHWjiE0O7+gQqUD7CPNUb/Kb6jCIZLw7CdNryRubMT05FGIzbcpLV4J7M0HK+TAwtCMtNY6iBbdZPSUmMjTtX22zFHawmKNjBUmfFfzBJGcQohi8Gvi1o12YCWTx5E6LYuvIUggxTmrNyhKrvHSD8xizqkbjtFSs01Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5K6OnHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5K6OnHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C7EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758434993;
	bh=CPP42ERSTlUp+Vqw7h5FO04hhUNZGhA3TA9weWVvSSg=;
	h=To:Subject:From:Date:From;
	b=k5K6OnHClTHwHC0IQz2sppzxzdQYyklE5ggrmvjhk3hA1bKe3DpKfZNSr3CobGBbu
	 d+PtpvPlc907o+8jC/qWBhvN1WpkoO2frA7MMuO9TCM7RDCqx448tdlZFhaqxcLMSG
	 3tZDcsXL80FbYd6Z6j/Sn6lr91p6XDrB1uku0izlybEP5gbQP+T56ADjcFfBe8B+Jg
	 ZUrZ74OG1vybq32+Q62V6/Rey5kVql1yCqUErHD37ccJAreu7Yk3avfa6sAc/zvVmq
	 Mjdg4gsIJdKg5AQUfI/m+lMg3bZGVGXo3FyKFNStwnoREDU4gE8XYfoyGnzC5m+KNK
	 ySfRq3ONCsX0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92932CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843499358.24622.5267861636815519637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf3a45bae5d0765c2835e076a2b0c139da75da95bffe6a30fd6df49d38e7904
Date: Sun, 21 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758434993
