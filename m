Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AD027A47A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749543594; cv=none; b=JJoWpK8d9uFKBXytCh7OBswf23Ugh3SQ0uWYGDSnpBhVTJ+bNFk/zg6GETbBqwHo+a8ONcr+B8912DfGDt2u5K2YFD4aH84/Fwip+k3OVhHeyBtvMHQipcsycglKCaQRRYE1LxGgN926TqULhACqYYmrXzmdJbgGuXrxccWDq6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749543594; c=relaxed/simple;
	bh=u8oPnqU4bkynG3nMdqA2VjP3UiBFjm0bLOjmxDvZ2y4=;
	h=To:Subject:From:Message-Id:Date; b=SVW7btT2Lr4zLzvX3EH/Ows+4Tmme7OjrOnZqdYqcRfvYEyoXopsta1E6D0prQFVtq2XRAQ7Cw/Vn+kneI1tr+duR+/KafB7eR2cKbTsh7YknbVzA6zcfg1jINSeu+Ohl/G+stRIIUpbaaj4U2Trx/6T2HxM/1U2IputHjiZU8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+peC1MF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+peC1MF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE3DC4CEF3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749543593;
	bh=u8oPnqU4bkynG3nMdqA2VjP3UiBFjm0bLOjmxDvZ2y4=;
	h=To:Subject:From:Date:From;
	b=U+peC1MFas1ownNg3iJ8DLGrCMbaC9AMvKX/t7yskdack9dJbB1N6V/mh0AKnUWGQ
	 TKoG8X9ACiBZzUt49s65AeLYj7m7k72V7AM2d4WUCW1zlwN9OZeg5cMk/JAvwocXbt
	 Dl3DOEtmXEi4N9iTX5+Ac0MZof0DgPTFFBrJ4nwUKimr2I/rMXxUhtvyJoe48EHwRq
	 lGbyiAJfgj2toLvTzXV805/KvjbxEz9VOtRWH+5xKjgYN0BQrJZbUWLa51XWsnqTGz
	 cBDdxeSBDklGp+3GM2Cy2vXyo+Rx4e5BrE07au29wvIAiwc4qt8nJ/+E8WbC7FIVMd
	 KO1PbkQ1cYL8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AADC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954359360.8786.14811672439193522485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f2decdceac7a680485a21ea4eead0f4869f07965b0a7275ee9a21b9c065078
Date: Tue, 10 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749543593
