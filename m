Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43592242D89
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779904954; cv=none; b=LL1UWs5YlAyftRIa+u/6HNe5a2jYasEQKwz2XJcv5iVK+EiCSvjax1vczRTcw0GRWV4cU238+7x6goTn6c4dah6H+04ZZBgs8TRw1sA9L5Ti68bmDsEjSFFbSlitbE5Br43oZZLispfXQJlg+T157PdqnWz1E4x4kv2geUOHm08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779904954; c=relaxed/simple;
	bh=I7ZEPcIQBxVcMLAgQGSHFSVzDyDsfgOd9WOxVWVOLJE=;
	h=To:Subject:From:Message-Id:Date; b=BOWvSLPTBsPENtUv5xc/cUCCkJNhoWIPyu0s1VlgRBV3zrYsFRwCYK+uDvorKJkqYN74HjAyGTM+o1J3bvvTkhgcGi28+GbnnSznrcFZ2pjatBWmKBd0bve9Yn/gYULCosayPEd5J0ZMd1J4Im/nZEJb1xM4duM6V+uSP670x2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGqcfU9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGqcfU9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE60C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779904953;
	bh=I7ZEPcIQBxVcMLAgQGSHFSVzDyDsfgOd9WOxVWVOLJE=;
	h=To:Subject:From:Date:From;
	b=VGqcfU9HGMA8Ee/+gn2bfBAPZkfnMAYbuszUBw5gVrr308N8CTAnsUrP/lXLd1tsK
	 E7djA7Z0/OFSOVQI5Wn880VylowztJKBU8Dl+vcbugbQiKQOXd01N0jSR/n1EvzwUb
	 FPKFVE0cEzhntDM/UZz/L9SA2Fx13Ix2/9TBYCXfnedBUbR+tRsC9Nbu9BPwKcTznU
	 pipxDIMZd/LN4TDWh7lK8MqA0i0wGc0NAi6Lb2xereMXHAmYP3KnHrhKH/lSHotXe/
	 Hvai1IsPGPqfMHR27nw5eP6tmKlASGKfAmrKl84/CmmyZHvBdM8czs+eax31UrBjFv
	 IseKsOsjqhr5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C021BCD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990495373.4792.11432834689949133809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a140aaabe86dda559542a4e2fd90b9175834b5ea2841c277adba82786a7f514a
Date: Wed, 27 May 2026 18:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779904953
