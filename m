Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6BD926C3BD
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779028234; cv=none; b=UJpUtLUFFuduIvAggpUXsJ9xViojm6u3dtQA5ZAisnnuRoFppPm3iLqHUvscBaT7diEc7leSJ/Q6GLPMHaqeu+5ockcIB5uZ2jf2ODqG3udPE/pUnOItmhS2891iPPyfXOGRDzSYxLkNrxn4112KeL5LFsVNB2sx++XSybUqhUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779028234; c=relaxed/simple;
	bh=6EMrNDVRhW+VyPKz8Pv1ZLosiXTCoJnLGZi4vd2PYes=;
	h=To:Subject:From:Message-Id:Date; b=Wrb7+nG30idF+HEJe0PcDsk6IU99eSGwN8HfnbenHg4j5sRiT+xIRJoE7iS9aWjfYts0RwamOO0AOKFRZyyDuXU22phbKVvozP1m1dkMEdYkUnvmo6qSAzaH08U2iHLNr2oUYmXRyvDQNu2qTjh56aKyGOUIEKALlh8aVdcGBgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhGmod8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhGmod8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF809C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779028233;
	bh=6EMrNDVRhW+VyPKz8Pv1ZLosiXTCoJnLGZi4vd2PYes=;
	h=To:Subject:From:Date:From;
	b=uhGmod8UfhpuAtnSZj6dMd1PzxMivloZEv/Y1DI29XVYa/MJUeG4WJuaKCF+i9SO9
	 agqGl+7ED9wbc5A7XrXFMprgFE9qa4bX9A4PjYFfu4bt5v4VfxcdiFQOfd95LeMS/I
	 RJUwf/b4acBIKGXvhXaCMwiyrsr59RNCCUlHsrXjc2AwPVh0yK8JtOhoFbrwE9/qJA
	 jDtwWvXIpMDiJt5cjPL3RAWdRq8kV+UGrJtMt/tLiGx5uuM84YjWGW+JgzZxzqswf/
	 hH4FyTPmDs76Efvzw8+k2IdiQ2t6/1Y4du3AT7KW3GAhUPczOV6ssJtqPVk/4F/zIL
	 x/GxY2aNvF8HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18FFCD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902823369.14576.8652887553821173198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c419d6d1ea1796bf7171c6178827297bcb0db7c996dfd936d5451c35513845f2
Date: Sun, 17 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779028233
