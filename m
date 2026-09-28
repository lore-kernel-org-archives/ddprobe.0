Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486785013CA
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790633434; cv=none; b=u/RkiuWhHDEEZrQEn2FcAeHleNTKXK2+qikQ+M/C+fN8GEQvMQZcM51ILNFcL1WHgGz5JXkQQRiOEllWl6tkWrRyWW+q/a4FIdfyIT8Rb+yzisTMtPMTdkOHXwA95DsIMQPgqYVhKqeD/6n3GI4TSJb2HdXf35jrz7VoEIzbVyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790633434; c=relaxed/simple;
	bh=PB0rGnCKaeoWhfOhCbOXVyolwYnAdO5NZ4BPvcXNbxU=;
	h=To:Subject:From:Message-Id:Date; b=it+gVpyVejtNjvjdm0c/nnw90nIhb5H6zbadjbbLgmrbX1IeU0TXExL/52MnyelGJLbhwMWW3ANGmXz5s82eCgxbD16r/4CFKjvGPmrq8S2G8jZFcX/n2SKwB911VlpKncEusey8CXkMnoMPyuGj7I7gG1HsSo0IMYCQVENADJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHeJ3hsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHeJ3hsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3867C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790633433;
	bh=PB0rGnCKaeoWhfOhCbOXVyolwYnAdO5NZ4BPvcXNbxU=;
	h=To:Subject:From:Date:From;
	b=uHeJ3hsElwAFM1DgaPxreIUqi6LEL4Mw2KEP5bKqNs9hj+wXcSBGSb3k8DcqIVR/C
	 o5+yhAjI6ac6RHfrKOSK0nu642w9pQ/gK2O1sLZBuVwDou0ftimdTAxvqP/24LVnU5
	 +K8X2947xHzngrKunl8+OxR1aY6OD5sFRpZ3VCKhgOSUihvqeQmyhRKkz8W0SLGRW+
	 ANL65U/pLQwNVctC73qORRTrsWC6hSbcN6V2O42BDFwTQ8UzI/SbuW3TTWpv2Admyi
	 CCAtIriDHKdt0YnmCA/Nz/CsqHA80YsDtnDFltzCDNOGNE8HLgYyDpV3OfsPQNmnpG
	 U3wv+JR2KV5eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD7ACA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063343368.18592.14828958449291380768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3599e5aedc5fb8b4b879b266f3972172f9f15ea4c5a0b302e358702f250b58
Date: Mon, 28 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790633433
