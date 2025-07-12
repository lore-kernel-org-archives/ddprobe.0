Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2671F81E
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752345594; cv=none; b=XVCca5hXsCFpWgpT4ScKXRtKZPVxJOVCqfvC+scSfb8NotSPdwNHxUvAp+yvgMSIIQqkh6CS2/cBoI0WdZlwafFolWcK8n3GXomuYXzyvLHVKbvRjPGcpo2GUOU+LFD17MeSTrLy85tzZ6nW0gkyXbsjR5mj86XUptN4EqNEaHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752345594; c=relaxed/simple;
	bh=zB5oFznV0e5UrSXQkygF7Toqqy1haGyvU+WmlfeHwWk=;
	h=To:Subject:From:Message-Id:Date; b=uQ1thoA0cRDdKLfim38LiRzLQe/RA3pkvPGMWicUhpdbZDhJSeFexdSlrFejDlswp6V+VgmP8xzqgx6WDGDwuZwB1D5FPbRfS88hnPzu3uEqmieVGcxSALrZQgpPpcWfUS+kusPT+fNS3/hcFFvbdeJ3sTytFFtgcDugxNNz64E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxHEO952; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxHEO952"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E23C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752345593;
	bh=zB5oFznV0e5UrSXQkygF7Toqqy1haGyvU+WmlfeHwWk=;
	h=To:Subject:From:Date:From;
	b=dxHEO952PXITErN11wval9GQedlhXeryWRJ5lSOOb3Zjtj4x/1P6TwvsuRPJlTb5S
	 NaAoeaku6bmb4hQFkW0p1MkBfB+sGaXWdpZZQTdMO+9fHrxngrjNK4VCPox+xrpxId
	 Jv4a7QkPKcTJrvlDrkTAy0ZsZ/b6jf1p+mM72vmbv2ejx9U9r/igvjqOf73hAKB3m5
	 fSyloPOLod2M1eowBFXYnqleqUSQqUrW0/mSaY4IXzhoG15WGiXmTOZdSaz2fMKWbI
	 bZKEZJSPp8V68VUjESSPiX+GCtF/PMSMz68AyTYO1XGDiAwzEz/fLU4cL+MvSG1oy/
	 +jm3lHBoj1Jag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92100C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234559357.14125.5277672739440915114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5674d5afaaf45e5f58eb54a72663ee6e7e51c42dd101cad5a046681847e0c6b
Date: Sat, 12 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752345593
