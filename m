Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC2819DF4A
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751558994; cv=none; b=JGYHjhG9La4eHfV2U7WJMCVdOzADdUH4erIfDckGBvqnGahahvZG4GI4R//A8RTWMMpeUlqTYXv64CZZKRaiIPtoCmOlEL2in7B6sZ8AxT5GjhsgyzS1hGRBhEn+QXGpoYEceLIgBS/LNi+U8wMMlzJq4Mw21dkYpqPBAh30MaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751558994; c=relaxed/simple;
	bh=12OtVHuR1HHYPcejFl73NZ/EysYBPtHCrGPBm2bzrMQ=;
	h=To:Subject:From:Message-Id:Date; b=suxUMJJ3QFKw/L+/puyNQuBoqOsoATCNYmjn25CGTaE5NbLoqMQbnV2yCoOhrpq/gMW5QQ8NKAuoOwn9+QLuVUl/o8O+e7jIrbRqMwgiRNk/wGtj24UAnZuUFaQAoW23ts+ppPWoIwgDV658MACrED/eopkmJLg/CaCLgKZWMuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0S9S6Fg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0S9S6Fg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D719C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751558993;
	bh=12OtVHuR1HHYPcejFl73NZ/EysYBPtHCrGPBm2bzrMQ=;
	h=To:Subject:From:Date:From;
	b=V0S9S6FgTis7lyrqc6gyLi/xrhDs8o6PWFsGfrYuqGXdOGGq7gV/TFtRwaxyIzPN7
	 Gw2ES83HyoBHMpOawzEELfc8upqXjUiqgfkEJOUEQCX6HvEjGGWC8VLptSDXBc/qcs
	 7B1nuRinqM2WsToPXzGuLxizN8i7ZX1xTbzlJxmbfsTKqpMiiuE2CzDB0pNtwGJOD9
	 x9Z9WYWwCn5va7bSEMR5U53/g7JYQ+Fcy5QiZxNFhefavR2mULjUdKIIEI3D8xh7H3
	 5YeBrYHeFUVFb/K9UBexYY/qGV6zR7DvobP3pZ2AZ0LnJlpqCfhmxgJZ9Ggti78VO6
	 Yy6opEIZv4+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC1C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155899357.18254.856517560189556571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5aee687ef8fda2a9e6ad15870f8bb6a1c5449b344c495e0f15eb5692ebb510
Date: Thu, 03 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751558993
