Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15828332918
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778025454; cv=none; b=CWY52iyjRFwvUh9d7q5tVIC4kgBZy+X54jCB5gsMRaV80y7n4T+a+lzXPCsOuh6HucVXAjL4wxIHyxTbCIM8tCRjYZFOqDjddI6Ny73rFUQq/DcAbQUBK8EyFUXRf/EeXdaYWV0HXbL0hPLTMYYSmcmG10oVoy7qAR4906RCwyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778025454; c=relaxed/simple;
	bh=s9c74RSgPDWRSZkv8pbWlbay0F4qiknA3c8mnvwb+JE=;
	h=To:Subject:From:Message-Id:Date; b=mlMpSgQqXjLhmoLIOaRZz1Lh9yhyHItlBa6Xld5FPEXTPmV0KMR6AEeCeynAFq9Z2iGp+V8sTta7pKMp/vqGoyUJrIvOdN1i/ukC7LJUL8gRNOPMn17byRshuwb2JFps/y3XUv9OVS9n2Lmt4+69QfHvU4J7g+SzjB5SI50C4kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8JhR/c7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8JhR/c7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F2FC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778025453;
	bh=s9c74RSgPDWRSZkv8pbWlbay0F4qiknA3c8mnvwb+JE=;
	h=To:Subject:From:Date:From;
	b=k8JhR/c7deAVT8K9BpjLd4qplxqDYHy4ay6jQMu/9asFUO95/83o9s5Nw00wVjPR2
	 bzw2tsn+16MSVnJJFxH77s6D0otOxMCB9P+OIZ4JvREq+tuwSqBXor7SzBc0+wma4y
	 EdX3VD2benfpxyWQvHQ87DK+ryk29T6hMjjoY9yNZApHT1r8JVsaUA7fO3/1iIbLdg
	 pdWf+csfSI89H8OfPpO5yIwjrK/HNubfA0hdJ0wLvhGytxTude150q4/4yDU8ai1KC
	 WEfXkWEtTdjfjwjQT9PzBt6j5R/sBwqlNQH3RdcqGePoqQPL9X6OyeIxRLK/x9eiL6
	 gdc+IxZuR/xrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA1FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802545369.15631.4275252840470956454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8abdf25cb7c16c3b749c5d82b504b8bcf60a5f70e5f7f5f92e0ac353a6b646
Date: Tue, 05 May 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778025453
