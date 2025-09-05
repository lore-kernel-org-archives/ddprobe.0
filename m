Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1967934DCCF
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757075395; cv=none; b=a9dIfpb6BISZqKJf/2pQXlKsjaciUR22arEL9/0AQDwlg6BY6Vsyo0osGHxGjj6Woy5LlAnIoFngpF6CgvaNxeZfXAem71fr6Ors0sAOA6L9oM5ZbW4P1zF49JCVoakS7WAdyvwWcg3fDsMXKWooqfzgRzTifRtcZGHbKQRVp8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757075395; c=relaxed/simple;
	bh=3BVPaYF5P1P12cMk42hEnwEke9lTB/v64a7XRWmWcUM=;
	h=To:Subject:From:Message-Id:Date; b=qRZizKrGRnUEncUdrFzlop/POWLY/i6Rir2HdQ3DIrLbWbZu6YkjrIdRw6kXJN4Nf2W47/xPqpr243kKi+pxxaY9Si+R3Y8zSx3Rcy/nSytsdVoXilCUPPoaKxCqr73bvkJ9phzdKkwMz4VYHApcFMVoG55jdjiFV0WPG1WTPqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2YUrDRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2YUrDRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A133AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757075393;
	bh=3BVPaYF5P1P12cMk42hEnwEke9lTB/v64a7XRWmWcUM=;
	h=To:Subject:From:Date:From;
	b=G2YUrDRPeS+RJHZmL10hcIfdIS9B6kTLo3VUTLz1P3gqD0ntTA/9T6heK4j8LUopB
	 tW/xqtQYVz5GgVhBpcdq/ESOaHEr+qe3ffHr5CyGukYQo6rSA7yK1j4UbyFB0F0Gqs
	 IGP8aizj3bNkoMWJC3CnLyVDfH9ZxCoNmHHNP4bkJlRmDjZn7ZH4e2UUhNNxSr1D7c
	 pdxkB36kZLjdQdxj+vLhXZHwrYnVAEgsr0JcDgLd7XAj8KJSdEuoN1gHF+6d/n4QS5
	 +cP3agkRFmXxOsDtxuCeHqLsk4P+GkaCTp7ZioZHuoedjaMDpltt3IYI7g0NrVjRuY
	 OnOFfibrl1NEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E5CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707539358.1184.11674929769770621641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dba1e202f48ac2e9783de9984b73aafc1cc927b74e3938ca6006cefb452cc38
Date: Fri, 05 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757075393
