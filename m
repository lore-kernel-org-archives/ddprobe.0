Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340C6315D21
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779846154; cv=none; b=PGFacj2K0d1UAyTgSGqY/VPvp1TRnveT9tTMndtwFQaxCduAWhb+vhBsag/vf8Mvye3aFR0yJkXEQZHRYAB0rklG59YYxKR8Be15M/a2MMFz5llxDxSREFNWoP+GpfZg4JshHQr/3vEkYjRcBcdhPRsfztVqWVwc/MmsrtHS8dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779846154; c=relaxed/simple;
	bh=keskfHJz/oZW59cczyFdFk7eUSJN2q7jMymgYzSp9Ek=;
	h=To:Subject:From:Message-Id:Date; b=WPB1dgFJA6IEctD4+o2iMcvwtlYXQQi4g0AJ3d+fbL8mRglAOlDQs5sT0nzjhzRvm4wcPe2OLRhE91S5uDov+oYKq93+D0G5FMCJgZiGuKBP3dLb9B4ZBmTiRMNpDU8AIlOsf9ZZHiYEENxmhDtkLBnxxjPbIQif+e4XL7cPq9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdgEdPPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdgEdPPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B6BC2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779846153;
	bh=keskfHJz/oZW59cczyFdFk7eUSJN2q7jMymgYzSp9Ek=;
	h=To:Subject:From:Date:From;
	b=cdgEdPPq/JdR+5U+V8dvR8AuJCGjWRdd8UWcJEbwdaA/Lha61MULvQNOPV3rB8q8m
	 tkC7L89+2gzsVeRapyRg+WZmsiWdujJxeHpa3BpqWp1RxGVbxD/so5dqD2d7QC8jE9
	 PPxVoSwI1tYQVIwcKv8JjIfb9CgX7QPZSJ8t5DU0EAlQ9XgKBNb4X8BianKP3EarBS
	 ZrewiWnQzJT3Ntivz30mZmNZDAx0nsdB3W2ES08aXSkjXukyvp59vMLgnp9IcNXN85
	 QST1PasvBNEU5NeIckuJ9ID96bEDoCRiKpa1WzueNyNOe59UvHP2Dm62Hhuq+Obat9
	 cXAr69+evz7wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06D6CD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984615371.25702.9043178594420004336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a85ff879553f13a5fdfd9e02e765d3763cdb8af9538ffbd38fbfb2862e3a6c9
Date: Wed, 27 May 2026 01:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779846153
