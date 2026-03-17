Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DB11B4257
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773723294; cv=none; b=uCVTS5K/Kle/IvosBuhBQuNLjm5Ylh0RsY8pgdIOQBqzPOnbJK2+Zzv06PCkg/tNnhiXgFs7a7DM8sphwjAJp64ccZsH2F+nxj/80ycD5c/7jCndZdb9+RLXse0We+Ko4DcTnueRvNkhgGqBiPlQ5TdztIaQy89z0Pfb9A0PCbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773723294; c=relaxed/simple;
	bh=HzlSIhrZhsmY+KEFqQsPiaIHm8SnnrcjPo5HqEoLVtI=;
	h=To:Subject:From:Message-Id:Date; b=PHBILu/LId6vmVhEF8d4PU9gjOmHD0JCq4ahN6n18RecvJjtgal58jIL7tfO1s9DYoX0XJzu/fGuAxyrb4V18TRNrMYTkBpOEO4S9FND7pofRvAmGfF8lycF7kSVyqQbTb6bLdXDnjfP4J+eKCep9bjafiJnlUMoevUWdESCz/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9XrOIEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9XrOIEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F71C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773723293;
	bh=HzlSIhrZhsmY+KEFqQsPiaIHm8SnnrcjPo5HqEoLVtI=;
	h=To:Subject:From:Date:From;
	b=s9XrOIEBlfe4JCjwGuRqXl1Ih8eXvroTfxII/CaO6OHnfrjJhZaDpPONrFN+AADz9
	 /GFElBBjVqbRjR+zaXExN9S1YJ68Ha7XUn9lpwGej6qS1QGpUXMBpjrN7lDzkr6Whv
	 1M+d6CMarz+hXTJF0dsZNsiaWptf7MYdpTJEgoVAKj6IXBc0yjd8uxm93WbnXtVTZo
	 PLv2lXPEwJcYSa/+qv+m5qRj+Zm1iYFve3IobKS02FOa4DlRbF/S9s7Vfcq6LESBuY
	 ZFornD8q5Crscsu5Rb/lflYZIamKFe7qSEagUeY5V9j0MYAO4JWHVsBjiHJ2MCJfEL
	 7453in5qQt3xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D1FB5EAF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372329358.6544.6120600514829171526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08c6e6119132d4097d1500884bb76d25ef0b70e4c54ac12adc0055433c116b4
Date: Tue, 17 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773723293
