Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA3D33E1
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751643594; cv=none; b=p6VTAWGbgvpKtyRanvNTZDOJv0eEi2GMgH5Xpyb6qliFipA+M74MoV6O2Ilvt6th2rjsRE0lGwUID1Q455K4k6mtnRyBBjiuP2fQcRPskg0K8uSS5dnFWaop0rN85DrlIs76k/HuWLL2+dkE+P8xad/nIZj8IiRal8xX2cw1rmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751643594; c=relaxed/simple;
	bh=Es0jXZPWxnJHeUD0PiHXTG3gSwZSXuMz9SKcU24nBlE=;
	h=To:Subject:From:Message-Id:Date; b=q/amIGRUBNel4opbN/T3BuKnWOZxXVzfbjA3dkt1YvHNAzROty0sBLUOGFK+2m0EXuqtcTAw+iaUaQM4V6ti3mpIWosEtKmDzbvpl8KB3YD7MgqBiXuZUBBIHoH/TsZ0aQSjm4as9FfxeyiKhfdf5SNfwe8HFLje9k14vFi0IfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Io/CRg8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Io/CRg8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0158C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751643593;
	bh=Es0jXZPWxnJHeUD0PiHXTG3gSwZSXuMz9SKcU24nBlE=;
	h=To:Subject:From:Date:From;
	b=Io/CRg8DnBSo4/V71CDomQHTVPQV4FnouUnjsdqq9EP203xohon9X+4kvTX05G1pt
	 EiSqrVFMD2k/DLOOrgpY6s1x2E9R/DglwWyPyh/2NmX/upJ09UxsL1qGdt+tksJVJb
	 kXhq3mgyy6w8iMO9sV3SLvWVjjGES/oUr61anrz0AwqT9slFRMOAvdlYre9uiyvMIH
	 /xiNBD3dY0ehoSMf1QcH7DBFfvErF63PDTeKhMBxIAOOdZCFgZY0h6hA85EhOlQ9Xq
	 Cj6ymDSuCVxUl4rP45gM/MloRpLPuZLGqwrctU7QcuT7CNi2/uLiPgTSTqG/oR6SKu
	 LSFX8KxyjEBvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9EFC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164359357.9532.16426464204176223441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b45b07dcf9be3e370f7a66e64b6645bdf337fffbbbbe41de169d6d7f33e945f
Date: Fri, 04 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751643593
