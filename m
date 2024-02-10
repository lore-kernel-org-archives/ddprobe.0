Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131E227471
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707550697; cv=none; b=DARz7ngNwe4z7Bhfj6pWIIbs/cMP1pYFo751SYjLGAc/TiV/m4XsvZYUBW7dt7+QzRXFLEQBOjbiVTZ+QOIO2Ida111lluct4iDI0X1BBqL/jeYFZyr3cihQSEiBpZRig4di9FsWOeS53KvfpxsnQOHg5qB9oR35uNLpjp35m3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707550697; c=relaxed/simple;
	bh=Rg94fHtGo/7HxcsOWuC4KWmNSDtxMWEgybyMnb8c5j8=;
	h=To:Subject:From:Message-Id:Date; b=gjAJEBsOjC3VxH5DgSGigjuknn3GeAdupRFJFLbcqj+9DGKM7//sBp7p8f7Ozs+w2htfb88ukp1ZMnFp1CmOodGDGciCTzSUD+ttKeFj+KN69unuIej7Et+RfBXgJoT7kR/csSIsM1oBdIY2WLxF5a2MLRr1xTjLk6fzxOu2cUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBJdef4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBJdef4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EEBC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707550696;
	bh=Rg94fHtGo/7HxcsOWuC4KWmNSDtxMWEgybyMnb8c5j8=;
	h=To:Subject:From:Date:From;
	b=fBJdef4p8L0s5QoBvbI9Wt0rpUicXgwlOum64nh7/g0liPEAVQct+DMDfFM5gDlr8
	 3Uslmg8xh3I7SjAaT4axY+qNiSAL9wFA8BKwz2uCU+v8m57u00CaTPa5JzvnQ81lMT
	 b2isLWLUyvveAYQkJWtgX6oRyyXGYuwLCnPu74l0YNPpE4dKPrKVMNea07m57RVcMX
	 rOHRC9D6GI7nHfIY82QlINVnPhWomEmTcLhvsTNVH46ilreO5HlxVxvJtV/F3T/twm
	 GUO+db/cITNvRklM/wFASePk2WW6KtUa8WprNat+UV+GKN2b9udGaenErxA7/XpL60
	 QtIe/4mDROThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C995C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170755069637.6350.13285482177911662175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f58d15b3e7240d7fa3a7a75f98be7976d1d3fb4bca5d5f2bb425e1a487bb60
Date: Sat, 10 Feb 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707550696
