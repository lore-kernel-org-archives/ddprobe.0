Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB771BD9C9
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765585374; cv=none; b=AbXFbaCpzYxCr7ZIelbVOirdq0mMaco+NXPs0vmZbN2dDv95TCWymFUjnNSF6r0Ujz9zsMwulsgRU/5Yo2dmGmtM0hNMBlO18fBN4YnZZ4aP80kBUdhf6TtqDiXg8tB1EMNYfKDQXWiu3HLgY9j8toB3cJaSSe1o+QVMHPkmNo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765585374; c=relaxed/simple;
	bh=m9+qb0QT821t4C/CExzbiDdG6IbCfQsxze5MLSZwxj8=;
	h=To:Subject:From:Message-Id:Date; b=Ubs9jM86pE7kVPtPAz6JkWucPU/csZK23I7GuDeZfaIK4mXp4RlQBumQMOyHUVhJ+yYzzLjBp7ot+eh5JCIT+CLhjpGDUDfxHKRf2I+hOUm5vz/wkT2orUdIygR712mp48ZJVr4EoBvRR1rUfKMwBu0yDro0G/fhHjXfctQtTFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIzSAFkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIzSAFkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D39C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765585373;
	bh=m9+qb0QT821t4C/CExzbiDdG6IbCfQsxze5MLSZwxj8=;
	h=To:Subject:From:Date:From;
	b=TIzSAFkGRocE2J+VHS/vhZJyJIMbPaTD6Plqel9QAv2OMgEyPoZSZNMM5w3diSB9l
	 1TIgLaJ/lX5kjx3Pr0kW3bqqvsI9cS1FXVc1YtDMXCaUAd9ybhgllU3zQdZjZaKfH6
	 KHn5sxeKon6Bgf91dwgxbLyCaBzcSi3UqENOe03xeVjc8qX+9vw31oEKsYNI5Z6zT3
	 aG5I3DF5c60+vxNawexNutvLyWaoW3UtgIQmp2BlZiT+APIVBiCwjGsZqjY4Nhs7RJ
	 TY1LTwVDt/sG4NOM+C+DogqnmPREQ0nQmlcBN0IZyXz3DO5i9HztuDrbhaIrFhQXgU
	 45EnMSt2/hUag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FF3D59F52
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558537358.730.4418605269018286986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72354704f3fb8736bb72f3ca3f7f0bcd1bd57bd52a6d13e3710201654834bc9
Date: Sat, 13 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765585373
