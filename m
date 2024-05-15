Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AEDC370
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715731943; cv=none; b=J/Xq24cLRBifsdDdUXR852W7S2mN0iF6dQZXLKAHWpVA9oR08LUY+qa1t6IJVvitV7ljfrmlaDqMi+Uh9BXELs5GmCSUpRZzUI4oj/g0/tJ02hqzjv49m4cv7adW6/azBjjkiAXmhGZZPXBLX6GEeqnsx2+11VMwit34Xkg/Msg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715731943; c=relaxed/simple;
	bh=lfvYvHetXa2rXUhlZGMC+nfdnaiwDXCNmnyVg+sBx3A=;
	h=To:Subject:From:Message-Id:Date; b=ZIW/iVfHxInP+YJ4wmjzcSEr3V8EztjmVLIPrFBx2NZTmPpmh851KEgOy2Nkggk0d+SoIKxE2c9f209zjhBC0MCiYd0hS+b8o8gPMx+b2xnuWt4qSoSQgm5QvWjdF0BiBpmDxz09DiR3pYmSmA4Q12u9OpiotapIMGZaN73q994=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBl1xppM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBl1xppM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E751AC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715731942;
	bh=lfvYvHetXa2rXUhlZGMC+nfdnaiwDXCNmnyVg+sBx3A=;
	h=To:Subject:From:Date:From;
	b=cBl1xppMBIQo6gQdhgXnQkUwE29c+teHEktUkMnAlpa01wEIQLUq24sL2cntJnUMl
	 faEuPCIinX3AFRiwLoAN3Vau6y09sAtPIfPtBlBGWBcHdrkSQpGzgJxDc14zcW1BsG
	 pF4EHbCSJL07kpkDL9aPxKc3S5HKZEL0LmArinlAXaQ5g3Oy9xX9JebOa+m3z+Rc6X
	 ZaevKx5IY+HihCkE4ohkwUeOZpV3HVYWJazqzto9eZdPTXmEaNDLlpcISUuKlrRvX3
	 7mCGY1DN1fFe+nXMBiMHJIiXjhO/P5xktPvrJ0RAqXqyAeNfMLh6qldDfy0YkRY3cB
	 0Ec0R6dPKJ0Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5F6C04FFE
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171573194280.9878.9033568469174140621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ff9f04be08b691c793967b872f1dd5483b0cc05e645093d2672a2ce5ee6a30
Date: Wed, 15 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715731942
