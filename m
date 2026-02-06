Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108C832939F
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770395634; cv=none; b=V4RBHgv4k83In9p/B8qCcqJJKEI6EebusYcKagoVwOBZB/yfwzz6ROq5ZG+R+7asiVics0dBFRXCthPsfpISKCAP0ZRZwamNsWZQpqF0J4DTZQgclnmwCg2/2RYsvkP/6QwZ2Ih2TMLTV2Qmrg0hkbe2/ZGr3dgo7i/iS2Syo5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770395634; c=relaxed/simple;
	bh=Bc4xZoV6NM4gS+718eC6r0AHdiH24mvUVGz6Kb8A9j4=;
	h=To:Subject:From:Message-Id:Date; b=SH1TuyQQUc9mJV7qawtSytD3+txn1rMEr47yn+/fp8DwLW/IodGcXdwhZnDx91IWrPyF2rdg+KqzPLTdHvZIEA3cHpCqiHRIfRwFgcwOvVK2nfDxHxzYjuI3w0G66xR4w/8ssGhmnZHYWCQbtPu/MOo1nluQ8OzEFMPwwgOtsCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCHtAYzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCHtAYzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B47C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770395633;
	bh=Bc4xZoV6NM4gS+718eC6r0AHdiH24mvUVGz6Kb8A9j4=;
	h=To:Subject:From:Date:From;
	b=MCHtAYzZsZEEBLeLOLzlw4C4zBEJ1X0tkhxvlHJDKkMTas7r4OW77AcDnsBkWIVge
	 JdmBHlkKkLZCn/1tBCc56JoNP6CBu/jbxd8Z/fKUhuwJ4WHJplHwqzLrEKJmSdyP7T
	 Wi4xN1VzH4WdMkAmuBd61M6Ppbejz4xczHSN/EMKSnGtCSWrOP03wRAVWJbklnrlkd
	 azaHrW/eBRwEQznTA+6kSxwP3CZjXjNKgDu9K3l3QUrtITN6SRVVcjxVNsBbyW8rtu
	 zZDXFcmKCGaFo5va1vN5lYHX4VzFY9htv+KTIRdi3pAZYqA5lOqdxpRE/m/RPC+aa9
	 j+oakgh3l12ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92396EE20B5
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039563358.19900.16342908552996230360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc8e43df147b15be71f364c9262143edc347bb4864cf56e4da73e19ead4fae5
Date: Fri, 06 Feb 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770395633
