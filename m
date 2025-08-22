Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207051A9FA7
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755898794; cv=none; b=tg+n1RTpsWI7FxjgBJoqNKpxA3RDQ+ETM9b3c60A2LIzoviSX8HMExuxA8uba17BHfFKxqol3QN6QxTdVWG2p544V/8FTWMCH2nXI2Jiv3Pc5Ij/3pXxJPIRlog6jeZh2/zjujkyLozzkIUUJefDWLNd71tF19pXhzCvUAj3P3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755898794; c=relaxed/simple;
	bh=NjX8l2ZlHX4MaWNXKGG0sbtdgvuTvaQDs2jB8lfINC8=;
	h=To:Subject:From:Message-Id:Date; b=Co93xzKSWKNNl/DOUyuidr5bpOt91TX6ejf5UskwbeP9xC9ZbrCx2tCPqKHwCFGJDwOZmdAdayAWeOJBUh82goKyl7z5plQaIgcrLFxFXtpRTnFKw7zeEv4oAVcNPzBcX6b/VE5DttL9XVPYVWhsVfMtqQqPIbdO5HQX9ZuoqoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqGNIsKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqGNIsKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DED5C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755898793;
	bh=NjX8l2ZlHX4MaWNXKGG0sbtdgvuTvaQDs2jB8lfINC8=;
	h=To:Subject:From:Date:From;
	b=pqGNIsKolcNPn91KVM5ZsYTY/OVSEBXyE7/GEbhU5W/CCRSfdlfo7OSk0q7eaJPtO
	 UO2urrq8GLv+TL/a2Ddye3xJwyTXt05cBftwyTS5xFNj9vcWRg2JYMsUhR5EL/0+Gi
	 hJpTq34V5N5u/FqN3G2spfUFWuIPRlF/9+mFdYWC7TPAUats9wIbbxY2HLA8pJ37rX
	 nCZTF4r7Y4Dm/ydzlj06lDJuv5OajOpo+PNIS00gGBgUHeuszfaSC2AvKJBMUcA/nc
	 zTEwzjUNj59TrS2uin0o7uASeCEMkoYB75lsDr4IzuI81/e84BQ4UwxL7c2XGvHRV7
	 ElYDza55nHc2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3D7CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589879357.22139.14309715854444893256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450cd35f2791fe926029e1fd4ff4ecd9b1376421c75a11e8a263b945a0bd316d
Date: Fri, 22 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755898793
