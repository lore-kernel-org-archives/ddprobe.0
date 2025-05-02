Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332262581
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746176994; cv=none; b=nYjDmgDvsq0kukplt8p8C5CQMEVFJWVTb3NJmNHwfNw8aMX/neCn6+84cnOd4Xv8DTEIWwNJEsCXQFxWl9FbzO0zNm481qS0K43H2qTMrRd+awbXkG6IJFqi13aeDAU9yWCII6l+vLtj5fsH+krM5rx1cFYJU4zM/Z5ZQPoYqoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746176994; c=relaxed/simple;
	bh=NW8oBQZCFplCM9bdH1VdUSas3yY1REV156jjn0SyBl8=;
	h=To:Subject:From:Message-Id:Date; b=FwikthxP/LphUiFeFIPvel64NjcTyQhcbxszSjl+IWyw6Vmx7E861rEPxslMdoynL00/F66xykjYV2uO/l3nkdJ9o1dGQmuivtDSSqsvjxCQQcnjDf/3Q94gNrpTYA+NCR3vSSKRujAn4MZ9LppfF6mD8sHxnEAmU3BWeTivYaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvh3aENc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvh3aENc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1168C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746176993;
	bh=NW8oBQZCFplCM9bdH1VdUSas3yY1REV156jjn0SyBl8=;
	h=To:Subject:From:Date:From;
	b=bvh3aENcm+0BM+JG+i9Cjbu16elLp94JRPdzAc9JH00IWveQPrWzrZI0d9TWGiQdP
	 wI1UOKsBXyqgfn+Y6/o2afIJsdAyB8ZhmOhQYyKxP2h5kYkaZAvNfd8SW4xkGcwMIZ
	 WpmwF43QxLszicPBPTzIUzWnAJmIR+0Fs/XC6T/ObViB0LfsILU/60fRLN+LAgHDHD
	 g7cqSA3LZ5HPtyTZ9ctVeDQimJvXoYLmS75KNNd0yi1r8AC62ncl5MlJ+jUj8PGCXd
	 zNVdBr4NNerZkAManp00rw6kTyE/Tk4CZ0CvT0uQc7OyltitIfHq/gCcVlZdN9j6y/
	 NNuxV7of5rCqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBBEC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617699357.11243.7069814156782586582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09b9825293781475afce8e229c28cfc05e9c0e07691c609107f57f01bc93bce
Date: Fri, 02 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746176993
