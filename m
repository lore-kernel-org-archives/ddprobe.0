Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E91F30E854
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771256694; cv=none; b=HjE6BjyTACl+eP+OtlijqLja8kbwkS7QRAmdowI+HqF37B8yrxwPsJaGYzXxe5YjG+X67fMfHRUyCY6AE4aS05cNhrk6cyFF7iNqklx6RkI5FDTicYZlPd/AsD1QxV8ktr90SYFWkXSbT0KAEsTU3o9TolIHSQ3A/0MiQg6eiAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771256694; c=relaxed/simple;
	bh=GukgE2sd/i4GvDGi9mOCAqSUOuMeSvKUz8jn7YtIfQM=;
	h=To:Subject:From:Message-Id:Date; b=XMjF89F/YzegK4B8+WkixEgsEoDNLXKZ+F1fMOYBqagyS6yheY5wSMaX8LAQlR6U2IBoyEhNc6iGIzHwpQ6kB/2HEKVXoLGdmiMtGn0ZVsXmR2fNEq3LwaoCtmfg2UTKfpRpQ4ryB9R98Yuve0mSmMGc+frvObkEiw9yXrhjGI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3iCZiTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3iCZiTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE92C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771256693;
	bh=GukgE2sd/i4GvDGi9mOCAqSUOuMeSvKUz8jn7YtIfQM=;
	h=To:Subject:From:Date:From;
	b=R3iCZiTdn33bJwHw+G2wmhtKpBgAhadmVtVPtO9xB1JD9NLkX2vi2WH3RKKQmbAD2
	 XVsGK2PL/rdU+EzlQa9IRTquYpcldrdU62q+GeLP/4uJw/7zd3jyituVRjEMeuA0xh
	 wuSuXFWm1dVOfdoxzt9wUc94TEsZB221Np0SVQ+PkdSQj+8pFpXO0fCo4X5O8LveG2
	 +TguDWNQp5uqgRKCW9GI46t1rFoI2t/vDqjMCUCWDF3qEbs2x4WoaIl82txa3i4TYE
	 jDFkU48bSSCAOPHBMaFwTNfigOut/AlPwfEIPYWO8ROcrF28PZmZOPeDQdvMebJzHW
	 vzbmBhCkAEf8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADF9E81A3B
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125669362.27558.1637106634591198446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3f7e32fe8295da74d42e646d72d3d0c2fc867c9d692fa523a3f6295b228f0d
Date: Mon, 16 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771256693
