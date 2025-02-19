Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348921FF7D3
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739983134; cv=none; b=BEEYnpV/om0Yq0uiOCdD9Lefmvzz5Xu02TSutD/THl8W1O55I4HmLviByzuz+r8IJiSiBLn8Pzi768Ox9NsmuD5EwN2CjC7gzlAuZ5T3bLPs2c8a4YaUYZRhJpGJLn8c3jB6VmzdFgKiZg7BnQ9D7xVCrgcTgSlDSsFyoerGksc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739983134; c=relaxed/simple;
	bh=3obafQ32prT3G7G0ExtRsi/7wkeu4OSaryjV5BM/mTw=;
	h=To:Subject:From:Message-Id:Date; b=EjHdqrpB1FGyr18cm9Oppz7c2v8ypiJxo0jKxJ226A6s0ilb02K7JIpz4ADS0OB1QXLjQQDmUZ9kEr0BxQyKbPx0aJIfeZ1O3Bzr4c7qK6bJvIJWRs6XXmIFwSCncv0wNBLhDw6n9oYHe5WnmtBxnBYbq6zLTCb/73LyzEPGT6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncdv9yCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncdv9yCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2C0C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739983133;
	bh=3obafQ32prT3G7G0ExtRsi/7wkeu4OSaryjV5BM/mTw=;
	h=To:Subject:From:Date:From;
	b=ncdv9yCdo/oingVuugXQFwerO/NCvCnhAzRBzNNlZK97zrlssguWl7uNpUBrES3I9
	 txsXE842bqZKFbfVrtYCs50vm9WHSYJOKT9azcahD5MZQefOMVGJNR+hiOdcf3NqVK
	 YdoK8PR9xRg/eqIMloho+GtffQoB02VTrFDJiuhzZGm00B2ub7rJXgckADipHeYPAN
	 s8ekEiRwSe2x/Ub6TUe5psDCSCXL/AeWamnXeePnv51GdAw0TDL0P3ih69Xoe0xL3Z
	 dWbtBi2cmP2MZyazp31PMBIL/00GIvtn6j9/qr5bl+3erVqAQLNpLYOjudQx8h7b2f
	 fXu0jM7T1NhGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99264C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173998313361.765.4663119102026288862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc66b276f92151946340d30cae14318b3889713999c7b3634cc99bcd3bd7414a
Date: Wed, 19 Feb 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739983133
