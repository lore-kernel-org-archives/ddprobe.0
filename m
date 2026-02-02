Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6913C0C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770002034; cv=none; b=UAoMuUPC6nsumJDO95DXD8P9JJTcqncA78/yTjPGVsybkIfw6B+l+PNT+YthFSbh9IallMficX3M/vHbfXAtzkrburEnu5dvuYlAWq5aCoSaJY6vKwLnPAN3vo59RqYQ9XdVrE6cNgqSiDBmhqV7qt1VV1jgklr65ecZU4uW4Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770002034; c=relaxed/simple;
	bh=D2573y2T195iKyjLZq0KPMQmu4Vn4ubKMBWFAZxP30g=;
	h=To:Subject:From:Message-Id:Date; b=KG2Yp3iScEjsxyIPujAuBiRAmjzZ1nLdv7SYtNsaLSJX5G9v3aPBRyyZxSFGC7tyzaR6+zn102iJsczsWJaxttjJ+W6zZLDAaQgPdeWGts43mcuVMfvhKfcGscAf9B70vSs0+q4N0FUnXuoEe+qcgmtu//9QNDCIRwakqzBr8Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niIc20cH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niIc20cH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05D8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770002033;
	bh=D2573y2T195iKyjLZq0KPMQmu4Vn4ubKMBWFAZxP30g=;
	h=To:Subject:From:Date:From;
	b=niIc20cHjFnxqaSyy6qlcEdVPJoXWzfgu9r94IP9Za7sgkctY2lQPmcg/Joamw6XO
	 v0DMjpR9kKt6f+fP7KFJefI5bEpb+1bjRUDE0TJVpg4lQk/fu5i21YejUrWrfB1e4x
	 KEA3JJ08rXawVmrw5pqNmA5sFgfIMxm3Bv4D2y/UHUNtXce4M875u80atCXyYzPRxV
	 vWh4AhbJEwbAIIfKpQh3Yr494BKhhnCMcvP5JqHdrnz04WNCp1vqlJgxuimcJaBlGv
	 RFlJfVveO3+eSkZ55rl2p2i3g+lInzc0Io25HpchsmXNGOv0n4m4PltmESkyXfKxNF
	 0LnbIT5vG3Itg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED45D172BC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000203359.28577.18349387005543631194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac6a3adb5e5989ff06a61c0d224055259b3ae969253aa8a0e14060a550a1076
Date: Mon, 02 Feb 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770002033
