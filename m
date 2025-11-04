Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2766126FA60
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762253394; cv=none; b=C6O6W//9htE9pLuuslwYpyy9bBo/nscEr6DVgJqO78KesiIDklQbp2CuDJdelGsca37+kNVPeGMTptDhgoNtVXhwOQayZLBuEs52eaA06JEdcgxokWtE4+b8th0OUASk91DJf9shE5/D478gr2/Lnj8S4ZjiW6UPxx+HLiFlzmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762253394; c=relaxed/simple;
	bh=BftEI/2TQDF3Ab+DJBtWBSIF15NWAmSrlQAVMVH2V6s=;
	h=To:Subject:From:Message-Id:Date; b=e15dU9RI0FptlblzvRifVO3JJSkailWUvTUefa+a4GqFRxVwVqHqywbEqgON681iIhJsKqjOMLs67i5T/dNuOanoj5LiR27zYjEgc3cA0N3WGrKei3hn4ICoc4Az0vHIM1yIIxoYtIjd1+3UsAK2ccDOcsxKLpmRJ2sYu5iLM38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvAHA2fx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvAHA2fx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4783C116D0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762253393;
	bh=BftEI/2TQDF3Ab+DJBtWBSIF15NWAmSrlQAVMVH2V6s=;
	h=To:Subject:From:Date:From;
	b=qvAHA2fxsOaU20Idawbr97yfNUeNwKt9vs2RBveKMbJhJjsi+DT5rgx5uiPVvE9Gc
	 WNNQ2VJ5U5bn/nWz2U0nW3oJEI9Pt1aU2OCFnJUK2e3DCWHXV/9GDUuIoM7X+vhsmp
	 9146qZ0dQjBJSzTuM/5iu+kE+CDsUwfNj5m+2MQnwOGqbYzN4PeqhQ3IK4MRVB3ybn
	 kj7/wFLWOvKwncjowUUdDWCoQBW9KEYBQeq8nncU+1yn67g1wpaEBwLXbzMQUDAdso
	 GkgTXYwcrXf/agAm196JxkTRXs8aG/uwZE9AS2442PBiZYyuoC5+OfK9M2Zk3UFR0v
	 +JzTSfVz8bxHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0FCCCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225339363.5665.16342038158464674632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54fd3138bca3e9af62fbb6a3f1422af54be0ba4aaba9e35d1b395970b4207eb5
Date: Tue, 04 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762253393
