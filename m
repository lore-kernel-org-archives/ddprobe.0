Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD7F21D3F0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755550194; cv=none; b=phWdNP/35hqaQ6fX+cW1xeqvX/JaK5lz/6x3/1cHbe1Cu/WZ9eeXIwdK3hp913T1xNR9N8hhaqPnIM2qfhkpvVmifGxxJP6Nnw5YysQmsDJv0TcRTG7Hef1aeSWtJKGiv4UfiuLWVbunlwYr3H4Jiyk5y42h3LfyO+oFOcgh6Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755550194; c=relaxed/simple;
	bh=3sY4D50OQ++Ugabweq6oZrXBsJw2TFfaawEy21yi99I=;
	h=To:Subject:From:Message-Id:Date; b=j115m4GnQdItJxFg7lmwOTYnlg1IybH55UBbQP25yxE32ll6mIEscayP1COHu1g/ALSrGx3cJcO02YfKuGFHLDpA3VD4dQlDcC/3G1w9wiwzjJ3Sd7iDVMDiIUMWi4m+iw/2+NHZZ+WML27tsYXSHXkCyvarLOWIINTGujtOsSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eT3VLxR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eT3VLxR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10D4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755550193;
	bh=3sY4D50OQ++Ugabweq6oZrXBsJw2TFfaawEy21yi99I=;
	h=To:Subject:From:Date:From;
	b=eT3VLxR3ckZl7CHEAccDX4SSOeeEJcFKB0QxIDdvNCQTx/BvxaRc34I7k06FvEdpV
	 hwSuAj/4Yl+cafxIc2++JIOTufoL/LAFoKGCAKra8e3YJtIiAiXCCV+68eSg+pKN36
	 FimZ5s1iqYhYru1W+RqHKN3mQtg6dkgRghyExUPuddSFRLn9ZAj1KsyhEzkxC0iBwG
	 SjJs0R0wGltNgaTMWLnnN2asD+qdd182tOt6qSBmyOE351ismousMpdBeXMmJYc265
	 vs1FmHC1HYRVCxCJoNHfSQ75RkisXtTqNSOibDmdgS5W6kDFrJY/aqa7YG6yUVk6NB
	 zM4MH4KmqrAqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BFACA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555019358.11998.2635968736728061642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c25c5930c79dcf7b562a313efe9b185c793ec2987722977676cb39bfc6b7718
Date: Mon, 18 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755550193
