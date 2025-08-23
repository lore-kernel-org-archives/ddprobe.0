Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6A3223338
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755935394; cv=none; b=OgFTEtXzHvccJtoWSrMNUY5tf/asy07CtNSsG4ShGysrGGEL8wdDctS9M6MZtAvr0Hr5HxBMCtB9hOz+u+3ht1Q2XXtmMMBUyJhmXRrfHhOlaF4RtAlyw0Blq3UPVaNFjX8TZX/yaIVNT0mJgBP2ruNgzsdi+xiocCPZ61TsS4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755935394; c=relaxed/simple;
	bh=NYV5PPEQI9511MeX6L4ldyL+tP+a/uzJt98gqjae0vo=;
	h=To:Subject:From:Message-Id:Date; b=eW8fcYaKpn33AZeq+kexOufdphd7X9B/D/yrzvEReFGB0A9Mgka7jMNR4dp4w791eSQ+XSI6svPQC4hW8m2fv+bolRGMGVvNpRo9SMxK1iGcaq1d5mizfCZxCKHlMxsJe3xVNucH831m03JEMswUs0ZQEJRIujbIiBc+2QFdW1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqtZNbc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqtZNbc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23CCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755935393;
	bh=NYV5PPEQI9511MeX6L4ldyL+tP+a/uzJt98gqjae0vo=;
	h=To:Subject:From:Date:From;
	b=IqtZNbc2qEt6tDLVT+XavxcKjBNmDYlTNCdH7I1yaHgHFVGbGNk+57riVssZYdomB
	 ypKVH6M3MW9k2bfNChYpMaj1Iz6IHdnSNfp4bxbjhXPRjXi1s41IHkMnMuRPlTsvm0
	 4R1aCZvNjnXs3zu67qBDgDannAvt+VZ/X4tOhISXR6z9EPfFU2V+pgJ+C3K83BSck0
	 7IGN4BuWB5wHU02OQcmY/SowQWtEpi+mmqhxL6rQK41kEU3kcLS8i26yZRuYjb/3/9
	 hMjcPtcEGNnVky0cJlBy1ggAaxGA7wKSDLnLI0srIs3Jv0oVdKx4+QWvnDzdxyiUBw
	 UYpXY7HQWlaRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1FCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593539357.29557.17080910724346248550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5df2405e5f2dae1831c6dbe4eec5adcc9f91e5abcb4411d17d75a2429fe9244
Date: Sat, 23 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755935393
