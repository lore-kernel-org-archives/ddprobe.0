Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F91226E70E
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763934714; cv=none; b=W7nZmE7cNCDtjrifRSPJd4Ute2aOpGpd2i9vw0y+G8DCRK2f2JZoNA/Puxbv+PNpyl5kpZkYz6cE438+jHc+TBlACNBfu3LFFTE9XZb01qwGDbHFOL5oBPVMHkVTIyAQTW5y2DVN/YfEe2P7GIm7DfZWi65h+TA7l7etDtPl/b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763934714; c=relaxed/simple;
	bh=2q+M2CFSetQFsIXZqJvZ39zmCZX/Ciw18xb9cZsjVb4=;
	h=To:Subject:From:Message-Id:Date; b=axzNbhJZRdb9HagqeI/wo1OmNdRMaIfCBS50jAnT5BJIdvp7QPq3vc04I318NbWrtNwI14GnqGsE046EaOorzKc1ucR9HPi16ypCd/pooGbgBnNTYsM7HQuqQp2/5OL3fPoC0nLmmVSzun/qFfc9fvPYPh4/xKHzz1OrxcIZyHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKXdguaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKXdguaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEEBC19422
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763934713;
	bh=2q+M2CFSetQFsIXZqJvZ39zmCZX/Ciw18xb9cZsjVb4=;
	h=To:Subject:From:Date:From;
	b=CKXdguaD3jopgkSJQfxpleoB5KeQXCTZdjD3anfwJm5JJKYDXVaj5mK1PDLoZmvqL
	 jM4oovkKecxmMmt3f0561Be/28gQB5NNRQ95Ic+/LIQ9NdE7ZqugHhN+/UutlHe4UD
	 oAAvruH/kUU+uVrni9CX2Vm2/z85rEaMC0r1no8OvzQXobE2+dn3i9t+haUmEXBnw0
	 LZ0JpPZPvdO/bXl22nwKR+jLamQfv8PEmUAbRKKjNuBRIBZllVu6cN4RZzwpL1O0uz
	 YG9k6hgEH5JGIOxLcM9ZoG9wb2H0mhw6kzzdhphL6rqjoA+AT1eZKsKH7RqmdpamLP
	 7DyDmWxWfnmdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99726CFD316
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393471358.11003.9872505720281160020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554f225d397e60bc4946380d26379baee5424684bf2c731f6ed85ac2cfc73c58
Date: Sun, 23 Nov 2025 21:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763934713
