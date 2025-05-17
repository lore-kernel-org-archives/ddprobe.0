Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270F420E000
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747502994; cv=none; b=jTT2W8UIXhdXg0LxoJQK4TSy0XVU+wXA4SPUMWdweAXorf4bTz3jsQFdKWJiNKrKS4de9fDYLs/s8H0Ju0oMar2rewWzXSxgA0sorFhw/2SqvB7jJxt0s5KBHX20He3CcVZjbX/Nnd+teye2tMxmdS8HTIWjA6uLCmVCo8hmFoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747502994; c=relaxed/simple;
	bh=Ln7b4AiWAO3MkiZW++axTjawmInHyD5zfzFraHkmwkw=;
	h=To:Subject:From:Message-Id:Date; b=Wh+/8ZDNDVIdwzJYgHl8+i/rCVC2da0Rm8P4kv1kPCU8OiWkn9NpEN7sEIJqhDITfG9zgqFcEWbPzQXCC3skzFVMUJNJ67M+2iJmp76kNFLe82hprpxCSdcTZjBLmtrU4Lep7UQmJyyf+sJBzsSEvaZ0JuE3Ndd7VEMtoUouvGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O66Jf9Vw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O66Jf9Vw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747502993;
	bh=Ln7b4AiWAO3MkiZW++axTjawmInHyD5zfzFraHkmwkw=;
	h=To:Subject:From:Date:From;
	b=O66Jf9VwY2QtlP4aNuohY1t++OtqmN0dgj0/dh62fjJAeWod+qGfTedRQIKxtLCsB
	 fFpFM8F17vkailvzuK1tCXy1hgw6KqXwwrWYstObmLWF47ZDLkb5RGkdhJPEtmDQtA
	 0XxQpiSZQyXtgYruaQengxZAyz49W21jcBe0TNmWvM9rFouHcIP3n2kmN+LTP4Kd/F
	 jBybZtczPDpykQd3cEdALbHLYuAfWgw1QY/HnaxOj5MeViZcOVtO+/H0Yoy6CnHDIz
	 E6YpBwDY06/wf/G/pQQFK0VWcp6ff9gWKAWjEKpGxT8bjhFLKT6r7V7kCXHhtMVTIB
	 tZRvHIBvGQLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D9C3ABDD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750299358.14986.7838869683039016599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9f7505b3f0387e23f94ff4b40238535f646dc3e5d66add7830eee848645829
Date: Sat, 17 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747502993
