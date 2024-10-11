Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBA319FA9D
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728689754; cv=none; b=t/okzSXgksqtCMKefivoT7jrBrBKtBRoozs1Lk1kLGjKCMvbz0ehiffWTLdoTw5LSbv+5q4uzavF37+dc6yPtBJxyyhsuzLmIMvguTGjoeRnNXuM9ycAdCC0F7TcWcDOL8YivF3ZlJPhZntwXpNd84Q74FnXH5anwGV6MXkCN70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728689754; c=relaxed/simple;
	bh=+1mBDhjdtG63f2WUst42dvskYo/ueevnticqmEOcNT4=;
	h=To:Subject:From:Message-Id:Date; b=ooB/l9L6nIPDO40Hsr+Qe9ZHlwmiZHRNI3tng2piGq3dFARndIJuyeKAcE22LX00LtmDWslT92r4MqZm94d68ZL9vcp4XqXkqE6l+SRdGjCCVp3jRhaaJKVydqeA38x7MvdFQZ5+Cl3tC9TB8OhMSuc+obVQOI0AFc1rIrQQyaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thacWzvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thacWzvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EEFC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728689753;
	bh=+1mBDhjdtG63f2WUst42dvskYo/ueevnticqmEOcNT4=;
	h=To:Subject:From:Date:From;
	b=thacWzvTiGwSggu6D9f0P5PhyBSZCabcNIzblosM0BQHkXq90TktZH40maGbeCMyp
	 sXU16IX/81RU7WXQifeukXF7N54EjNZn6wZzt9GVHCTYNJ9j9xGC9z/IXCTdi0zQNq
	 hd/MayTL0LLd5STAmsbTdiMZ/6xqC/7je1iEnXzUoKnPNIFp04aqJUFKr8jifXhkF2
	 ASWCEzIcTXfjTanpRNif/KitXTME7jYH3H6Dh9CO8K00cxuv2M/gEvT7kGfs9MHDvZ
	 KcSFaXUDSn4Eu+iUL+w3VfcAAIVNCjR+PFNxAS4qaZAGf6fxCd6Mdn1uYueeKzNTB2
	 wnRZ6cx+fZg5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96698D0EE1C
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172868975359.5237.13100235407904502852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2a5fda3eecc8453c2b891b86de12618fe35c70401c4dad05992e6815e94e9c
Date: Fri, 11 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728689753
