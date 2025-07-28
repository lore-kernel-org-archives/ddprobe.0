Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3612690DB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753709994; cv=none; b=njsK0calLaeCf7pajKxdqPgeMEMncDFsJnlKW16+RR9Vw84nrE9oySyya8HrSZaDbx3a5nghMnOV+836uaukMoKSHwQdrdNkdF/yoOIOw9uE1wg/OSXPCbKgrc79ewK+jnd2hywCDyeWBIpq2I17hCfWyga6ekYRgXnk+AkTJOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753709994; c=relaxed/simple;
	bh=yacxo2EI02Iu3xBFGdHQcySMuZNGped/N/C+LjawLGM=;
	h=To:Subject:From:Message-Id:Date; b=MJFbalcQBxjP08AAj0/voAEEeIwiSejrUgFniBFVbCwtA65o0G86MUqpWkT3FP8F/XAjyIWYEwo5x3Qz07CJEL29LnV0HQzcouwXqOdHop+q/DDukeaCIOOFCGFnKUCWruAi7ofdkn/P6I/1bKQZrfQrRHr53wLb/WaKRUSVOIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmA2R+oi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmA2R+oi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4100C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753709993;
	bh=yacxo2EI02Iu3xBFGdHQcySMuZNGped/N/C+LjawLGM=;
	h=To:Subject:From:Date:From;
	b=JmA2R+oi2RLnPkHPBkcS2fkfisO+3NbGn0rbg2ckl2N1kyIVzdciR5TlYmk+OyYlm
	 Tv/A3+XUK4mwIW8eNzT6+IY/6Yz/7kLQ09LcVnSjrU/8VuORCHZXsorYhSl7O7rwNt
	 /Zt/80ZsEfiCB4pVlWhntDhpRnI1nq8LB154nAfJeXoScbE4Yo35LvO5BUrEytkVI1
	 4kctYWo7uJPX9FJ+H6U2JgZq8MnXQzeNOks8+jBJZi5qi85WwO2ykw/SKcN5lLqALJ
	 CEqnhFP1WdmB8nyZh4a0GWyX6aLYgu/nMOReSCHAH3FfYRysLCP391eMEqntTmfX1q
	 OyISyjQX2EIhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD0C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370999358.4822.11139934003903851769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e063926a116f90338c61947be0f850103f6d6de900a9e6b6b178c3bfab0e13f
Date: Mon, 28 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753709993
