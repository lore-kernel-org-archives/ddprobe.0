Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36972194080
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746211794; cv=none; b=La0Vygn8WLeVmZa+esIhctnjOqGVvZqWcqij9f1NZ/VxfkAi0Hjt+Du2ey2TK/EtxhpFg8zrhb5mwJwX5vqS8wTWAayA/FR0e5Y2zAzTH3Vz6QUCpmQ4gtkrXA1gm6hIeEykkuJNic5l1/RL3w+unWTlcXwhrm0dX1xMtP6ke6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746211794; c=relaxed/simple;
	bh=BxQXuyxXs25e4b2axvZCaSkjlIrV+ildf7sT2u4Rrro=;
	h=To:Subject:From:Message-Id:Date; b=nUJpBecfrfR53qTRViY/lOD2p4Gg2xQrBhopgRPfxU4OWFktAvwNfKtKws1b1FCa6MmBTHNW2GsfrzXLuZahJlvNj/fm2BeECqpuyd0SUPZFqK1B2Lhs3WS2RNs9eQEn7kJ6l0JXhfY/3IhEVsgCmad8Lfe9ACjI6JHHJWYpy9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6ICNpkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6ICNpkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19CFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746211793;
	bh=BxQXuyxXs25e4b2axvZCaSkjlIrV+ildf7sT2u4Rrro=;
	h=To:Subject:From:Date:From;
	b=L6ICNpkmFGOJrG6K/zlck70lHHi3rMzv6EApqKFgvJVDNMF1Q4wqmS0dLxgotaose
	 rYm/PtNswcjoBklT8kLc3n21Me26VkbFCBVi+470Ng8x5fYc0COQdNYYdhhMh5Kl7s
	 uAbm02gORRT+nO9j1zPxV11LBdbf17Ra1WQUpIDS6F448zQGc9ZylR22AKexoBbK7n
	 wQOWighNijfLhLhchFR1e/coEbl63xwUZCYoOIOQrt7XII0VvBb5PUG0Qkl8bVNJkg
	 HR3PqvpBXvFlnpgGFXYEVDwNhxNpU+vVJ0By9SrvA+4OLTK6tweQExxl/jezjQjOAl
	 zgXDy8XrSPEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F06CC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621179357.2624.6860980658325650792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a9c045e501715ea388058bc739a5c9308850b310dbb30e0632b87d23c2c667
Date: Fri, 02 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746211793
