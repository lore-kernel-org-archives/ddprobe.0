Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B36241CBA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744902594; cv=none; b=EYyPUhwl1yCPmh9HodMZ6+7574dG5Nl74YhX4zzyxCg02LWOooG5NaYaFoIs3coHAG5ApHdG80Di38wF2RTAGfDs+q5N4uv6kgDQVQFzYVnzJHSVIql9aOqeUpwU/kiBfsEZpkYSKd+gaWqlr/adSwWAlYpTEDBaOlt4R3nex6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744902594; c=relaxed/simple;
	bh=PIGB73Sewi5TWOovd5opC3LjCf/KsEUtVf6ka9uGYRw=;
	h=To:Subject:From:Message-Id:Date; b=D/tcCvv2zQLdY66woVkepbR6poHJIIrdhV6WGyXh75fEYdyrlBR9iXjCJNBfgwR9GUCMvV4X7vDAAmK7YIOFN7T/aP++TUQ61SBJ6xzmpJyWFJIwKJEVKmvYVmlY5+fDPIj8RPSFfw/k4ehetN9+YxUebmlvhmURIpsM/LpaXH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQLjXN4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQLjXN4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA752C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744902593;
	bh=PIGB73Sewi5TWOovd5opC3LjCf/KsEUtVf6ka9uGYRw=;
	h=To:Subject:From:Date:From;
	b=vQLjXN4vrfJvEintWT21UVyuCMxfJz0wtnfxUrnSeOchNkS/nol6LA2qAyxYoeKgu
	 3d3HD6bQktRtpP9Krk6+NrmbOJxvC/inN4LcvMudENi60hIDRwC2rQ8jWnS8J/u1lz
	 NpQaYE+rhIp3zQfboXrRLnECvSFk5yFaAg+vSDPOOXtClz1zr5KYH3/phvFU8pI6nb
	 p+YwB35HKC/eNuEVfOmk98aAOmQF+2XVatVZM/uQ6FjrpGr+5PjjxS6zeAAIOahRQc
	 Phl2glmDPenkve/DAnHeoRx11CXsdCSMOB9EAIoeUTD+lhvseGyu68Bn/2NvoC44j+
	 ZO2un/D1V4Oow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DF2C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490259360.7794.18382126359142233804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d10ab700329c906e8c6d644867717ea445f01728fd67c0a0cc7bfc0e4feb6cc
Date: Thu, 17 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744902593
