Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13676199D8
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761006595; cv=none; b=I8Fz1aHOt1LSsySFxNlkVKKbNfYicKXhal5S5QR4IHd0uTXiGoI7TTsJ82PQXTmwY6OkdLuF0j4kVhL1gLZD+YGrtl0yfRY4KrCnTS+fGF6I3Ww6AyShf/G43I7Jbw0Xl0ptgdtrAaB8/u8ZlJ6/oBqrpXctWehfW3ncj3W/Ipk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761006595; c=relaxed/simple;
	bh=bvSkY38596z/js12q5nBifGSWQJCPzhF78yt/Rj70O8=;
	h=To:Subject:From:Message-Id:Date; b=aicxuAqSTVUkL5zvK2GAdhCs1DNRDhs2KfTK3KN2JwHHiOojGeXfvs/M2DMRqaIGmXwbfDR9J9TmvbcTX0i6uTqnWbcXEkwCmdeVE3ao9SosJ+WOkA0Hpq1xEY6nXK4ql9/m+TCNhuluv2/ryjICa8mgJ8/n8nUfRUgTIZuzLDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1zps5L+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1zps5L+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4370C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761006593;
	bh=bvSkY38596z/js12q5nBifGSWQJCPzhF78yt/Rj70O8=;
	h=To:Subject:From:Date:From;
	b=G1zps5L+Icpx1pOYngDb3EAY390hiv7MMnzCaODS/URJiuCoHFglKv9PAYfimyccG
	 bKzDfNuAVoDKF2j7nfTBWifsv7jwIqnWFlsSpWuzk8nfg3g0Yb6mQK8worbJdu8i9u
	 mgumgYE0B5uqixsUhN7M2jvSdTPshJk18gimnbji/lyT0DrJyjVT7AUT/vWhMrdn1R
	 675KsgFcScqdmOxSEabasMQlhud/v5TLtn2gnqI1rIPsaPuI3ReR5o4exCz0BPp9gQ
	 CDCmylMhqJKRLOkvjd7xNMT5ltNL8uoy8Gr6ixO8zCTRTVNlPuIx5GWHp08VNMCv5n
	 U6DmoHm3lRIWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F59CCD1A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100659358.16509.2367989788380658559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c620ce771beec6cd7e7dcf8a33a0a2ed393339d5b804a0600f6c0d1017ccbe22
Date: Tue, 21 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761006593
