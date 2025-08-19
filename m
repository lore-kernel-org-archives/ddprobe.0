Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2376431E103
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755604194; cv=none; b=i/lvpFSHBOkN9Ur78YosstysQlUbyhN2gdo+QHsdInzq8SdawDdcvVFWUQsYaqszz7kkPCRnAOmyPqxGvZkNFHu/CBWNyYQPQgC8WuUNUrCzzDyqkaTA7HEib6iTZ3cxfRJR43UIoZpRR6181Atgx8HIyrUAT/mLDPiBz6HxqzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755604194; c=relaxed/simple;
	bh=B0H+Mtw1o0ezn3ah8ROSE5Xm9Ljj9VltZQLycz0mGyk=;
	h=To:Subject:From:Message-Id:Date; b=nA4DhfQv/BOpYjeosYncyVElqZZ/rKtgox7eGlWThL/nDcWgSTfJG7fgJcTsoPvB1YnVFIhZ81eE3ILUC3HalbJmv/t4QqMarGgngsCEOqIU1w6uTDHLLnihc01eThIooiHauvX/CxjIVwBcovAzArXb06usiRdbldRe+MNHYZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOcTJ461; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOcTJ461"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755604193;
	bh=B0H+Mtw1o0ezn3ah8ROSE5Xm9Ljj9VltZQLycz0mGyk=;
	h=To:Subject:From:Date:From;
	b=eOcTJ461xW65l59s46i/JG1e9sXkdp4kIOWdwsAY5zRg4VXwPcfCT+sLKja/ZNKYa
	 SFeCzRQT72Id4kV7if+fWt8akDXjMHFIXzLcfq1yB2rozIKm84uSAGBoiY6ydHC+Ay
	 KWmP5K9bApfA6Xzlej34cd52pf1um55XT6hG6UgFEoXd97m6cNXwU1dukLr8Zg7rxO
	 6jGYpy+rDOzQvEdUbjD4enTntUORkhwfMc9HLEp5xmzvIC57m4dCfylYnAPegBJKYe
	 t7kP7eK9YdgRF+q8F3SVcIsuehY+imn5RsCEHLH/5minSfbfJ8RRQKv68LnJlfQ7wp
	 RB9Q/NuVEsS8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95267CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560419359.7979.17501892093101028596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5cf858d3f0e04d24b95db2a0672ff37d29da35a5abc9a9b2f9c5348d2fcbfd
Date: Tue, 19 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755604193
