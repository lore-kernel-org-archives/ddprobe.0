Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4812571B8
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773409494; cv=none; b=kMstrq1g431tvb6hb88TjOq/0GjZE5qZDIx2BK+EUDy4ownD0kxeTu0m5N7fE6SzHTtdZZ/l5AKDbTLp/RzPd6spoYwMU3lb/KSdV7GqcFV+WLcdQvVZIIhbs/Mcby/FGKP+eb2S4TVFMnbb5Brgx1slGQ2AL5xJ9timgKNecDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773409494; c=relaxed/simple;
	bh=B6+4w+sHlQqjkjJjtEKLmTdTL+8KlKtNYOdiKYGCoLY=;
	h=To:Subject:From:Message-Id:Date; b=uGjPEPlM5nX8dbfZGh+806MVYerPCN0NS/8l4I9Rt1bmU/DOJVtJvFk1HqKXniNxR9IHprWEBzkNk3PP6Ox4XqSxadrIOdaSWEH5QwltugPNzwt1I5yA0Hjl572yumgqr+6AURi9kqWQjMKQsIsOMEvtXsFnqWOpi4cr3XhgbqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9GoqCJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9GoqCJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A430FC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773409493;
	bh=B6+4w+sHlQqjkjJjtEKLmTdTL+8KlKtNYOdiKYGCoLY=;
	h=To:Subject:From:Date:From;
	b=i9GoqCJWi7F6XnIbhFBXxIbmo0KyaFHv3AWpjZOIvi/KF2/GVzbtj08yuKxosZQZk
	 60dlXoaU/PR6k5AOz8aGMenoyypMupUUaDudbXnyd92197CUrHB5NlZvk80wAkzvVf
	 bMOkmOLsnr0+PauBy7mD9CgwiRYsCOmNgcZ7l1DuTjBDracmC7UHri0lwyCehbDTU+
	 czseQg6ZQiX8gcELtO+D6JCqXCBuP5kNaW/8JVqVBus7kgvQiNQWAgzSBJvpvOrU1r
	 dJSRNLk9nnecCMLAXFk8TKGnCC6M5uTRTzShqFvPnNQ7VRFl1VRRs+PLutr/dYO0Ss
	 U2FE5BqVBVG5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90564105F7AC
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340949358.27381.348495796420449994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ec864e9884cfb04222737177e8a2431de4a8dd6edf77a7cae1051c44ee92af
Date: Fri, 13 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773409493
