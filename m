Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200AE2AD37
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777243654; cv=none; b=E+3DfEiZ/EX7hXZzitfk/O3aHpvPVAm6y9GjyGQEQPHq47BhhXHqqA0cbfEg5OCGER04gNnafUjTHjDJV9SzjU/1ooxV33UhhrcTZoZoWkvD8eu3A2RNNvSvL72RgQTRefNRojNHduAtz5MCQH9vyObWzarFKnvqxLg3GIQpVRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777243654; c=relaxed/simple;
	bh=CnQOxAzCQl0v5X3rr+Pn+ozyRQxW996vFPEEynmhWVI=;
	h=To:Subject:From:Message-Id:Date; b=dz19ebRfuCbUFOQSTRfT7B1+J3qfwwg3HN+QTNm7LayayLDL1VuP49frV+6nvGQGMM9HpfCqz8RMeOUrD/SeUNR5eMLoauoie8IPVLDZEVeAOoDubk/LfMS8OhihK7w3V1NeHF3/1jlntl8DxCruI8JRg9duAVYkWn8LppfccY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b419/PUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b419/PUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C214AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777243653;
	bh=CnQOxAzCQl0v5X3rr+Pn+ozyRQxW996vFPEEynmhWVI=;
	h=To:Subject:From:Date:From;
	b=b419/PUB1cKXZ5U5Xl+Ht/AkAljlOyuPM/ZvNZx1zdL7ANMztNtD0g8LlIYh2ytEe
	 HABu0iE39czpsHAT02zwJ3Rv8a1lPgpcLvezqCOcAK6Tv1ylvhaOF9KWiY/ufhld73
	 RanxEBtT8JLoOAqUk7Av7N/nZd+5uAoIPs368g9SggRZzIxZf3xL7NEvOd+fcEf1ZN
	 SXaBNTxGfdGtjIj9hTpaD7qC/7OiyCOh9+0+gexDvBLBU5UY9KQfhFVqKhyG3bLIUz
	 MJ2bw/o1oQXvolxPORT+iAvpMdUvTvnjpRtcq10Zzi06whrWjKIdLeWwOMdVW8kOrv
	 TjafW2GONc42g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF531FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724365368.29422.14678792140665968620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a57cc05acc3e26f6ff7c20e11bc79562baaa1992aaf8a9f62c58ac1db63c548
Date: Sun, 26 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777243653
