Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E02A18DB26
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750625394; cv=none; b=HgS2XT6IR2T8u0LTMVEBu/m+muCfSZubwqtskVKbohTSxa2dGACGJJy3s0SnkOJk+P4GTQZm73eYVxMCW1FWVaNeEAo0OTimTEGbGS+0U2S+h0I1j3N2VjvXmZETRLNI3dweKtoLW81cg5v1BjJvly6d6wI3Op7O1g5VrUJvPnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750625394; c=relaxed/simple;
	bh=ZerE+G7HDAL9AC8QsKmr/8CX7iSdmwvQr8nF1X6GYCs=;
	h=To:Subject:From:Message-Id:Date; b=tCp88c0Kcz5a1ff3n0JKuwtYW+ettBv8DLQvaLgyOxnU+Uab3fgC+NwwnOlV0Pbj3xar7+fZK8xpAKBOTLxax25Iar4QRZGZ8O3fldOgvyVTmi9oUWO+UCWXovLKLOQGtvZF9ehaZvzyb8NM6IbsMnzEQ1tDBgOP2iCvRNHrPoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sk0XSjCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sk0XSjCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A318DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750625393;
	bh=ZerE+G7HDAL9AC8QsKmr/8CX7iSdmwvQr8nF1X6GYCs=;
	h=To:Subject:From:Date:From;
	b=sk0XSjCd3kS3TNP2tNpHPzhp9yxGoBAoXJ2qTnfV7ECSJAIuUNpNrDz6WMISmJ3nT
	 i1loDMdz8HTlQJOjh0/xcc4I+HZCZ3I4AqGnF8vNu4cTQQM/VsSh2KZHFJ//KfWE1y
	 ho8YSRklmVG2bRqU+f6KE/zn1kRr/LHjftDOybQ4H3UYeO52v2ERebpQBU2d/Poi9C
	 Qk1zMwpqS74c1zQFb4tLCeT5rF7pAGQRVniu6NWXXVctvLGMLhsr9D9GlT9+IQFboj
	 wihqf4oFloEr8KOe9BhqlZKwcnMxahhpyK8PDMDm5orrh+/OYjxCG+gB+gMuiAD0Nm
	 vj5NOPtRYEMdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD6C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062539358.16241.14965309560302906719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f7783883d0fedd585f38e28f07d06024005ac876391e8e61b60dc3e5f4895d
Date: Sun, 22 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750625393
