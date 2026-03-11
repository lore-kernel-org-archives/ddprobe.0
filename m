Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F29140DFA6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773207894; cv=none; b=ApWITE/OWI46xLLyybA9OVLejWRm0t9D0xMtA4RByifKl+CEVWQfuLAiaFgRQ0RlHhoS71mhj4R57j0oMMtgL1CpK57y1J+Jky9HNunuCiE6nR75e+C1kPUT+BBiPg//Pl0PUek25Qji2fGnslxa3HvuHTAV8ATCq1fAfDm/MYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773207894; c=relaxed/simple;
	bh=LUdoeJ2yejd2VCoKZhzmCCU1M0iApC0ZpCRespeI77g=;
	h=To:Subject:From:Message-Id:Date; b=Z7Wf4tWgoabsMh/HPu+Syg3pPxBpX0uGoPrEJrUJ3+8Ow3qQCoEortJLwV9mdqolOfJgfu8eJLI26vIiR4ZipM0TW+6/6st83L8j4sl1VmDX+2NTTprFAYbOzA41k5kYNak5HCL0DFuVaYcBeY5AiwkSlV2Fb1o0sjvc08b5h4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP4uV1Xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP4uV1Xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3372C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773207893;
	bh=LUdoeJ2yejd2VCoKZhzmCCU1M0iApC0ZpCRespeI77g=;
	h=To:Subject:From:Date:From;
	b=JP4uV1Xi/15gww+QCmoLJAvqWjg77rdIWDjvckaeDffc72JxvJl3s9HyAIxpYVtpn
	 g3dO/BjizrK/2ztbVjXiJsR+XkfXBr609pmdgd7MQO65u62570r4mxqfe3zMnzDbTm
	 +xKcF0zSgJciHjv1yUuVyO4xwxAih/AMbpcKysTpbrrJkUOGDSPqCRg9FTzSBuFXTC
	 DQnuxTUvvr/y1sg33RuGH0lJW9HSB7knNP/iGMvD044+O8biC5QyyWtk7jN2d1cpVO
	 vVQkleDHYGBSCHJQkCTH9+Ox7CLzUCQBtIMnMEvI9qNU9BEARVrnzVLubHW2Ee8B50
	 h+V6lXKVQ4/ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213DFCC9B0
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320789357.8897.16079449645789075313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdbbcba6ad118c8e5a045e2bede4c52466865d633869227902ba12ba51c4e7f
Date: Wed, 11 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773207893
