Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A9118FDA0
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719433403; cv=none; b=oYAtJL5s2oRrhIXoqU1Xaz88MIBXeBWvNfdcXGExA2Kqqwrft/jFVCRuHqS/X8x1KL3Jt0ujdgV/9mh1mcETy1vtwxTIK7l03mChxncwG/j9ZuG0djHkn6qWZT82N5NabnrnjL/6SGbfOM0C+17X8LZMZLwIpgVTyd7ZYUCWz2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719433403; c=relaxed/simple;
	bh=WurNuZ0dfnWTmgWqpdyFdL57pQqvhIHHR4OBfiqWyuk=;
	h=To:Subject:From:Message-Id:Date; b=p0O1VaWgezKd8A4g8IB34FbMgFqh1xRq8Oxt6mWNVY46cCoLJ3bFpeUys4pBgATV252S1rDxNYL5181LYee17wfrgDbKx0cmxA8BDixH0Mi30xUEbv5UNym5bpbNSqi8zzIUXjNqlHkYNS3Vi4JqrjaO2V7NQwp3C0/m9iO8sps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+D+fjW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+D+fjW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE97AC32786
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719433402;
	bh=WurNuZ0dfnWTmgWqpdyFdL57pQqvhIHHR4OBfiqWyuk=;
	h=To:Subject:From:Date:From;
	b=i+D+fjW3Q4aIYAAg6rfa8iwV9ssXeerDXUJ/2QvS100+3iyNpbyOY1jSK/f2Hniqf
	 XRvrdBds54Pt70uYBD+px7yuhlPdw3DyEYL+DzY0xtxSN1as28c6GGCzPDMms4ljg+
	 j98kgZpYUPbdmCAMkBjzNaUYyut2XA4DsYlSDRFzgj2+yNMr8EaNYiaM8PbyhERZuI
	 Jc8sLbgNliTlebCGAvMgBM2EWjjDNCXueBfypadStFKR36HT8E9hR+MD4RnRzfCWkf
	 HwE55XFlDsbauf2gpGawirnR+kOgj2IET6JrY7BqQc9hyR9diT16Dwur3kXs6Bnfo6
	 nuPSeHPf11jqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69C9C30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943340280.10376.15436082377737748083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2bda7feb679fbbb801503d63583aee2c366b5d42bb644fff0f4909b472b4fd8
Date: Wed, 26 Jun 2024 20:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719433402
