Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19569330B22
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870494; cv=none; b=MA5+L45L2ghd0i2jPMv6NN192wY961KZBFRWecoXZJAUHMbEW7NsHvDkoo59t0ACH9HFM1XjRROqGN88bd+p0pY8AYTkxfEv2UmH1+wBtbPm04xmIGOezZBSxfg3v/dWSOBYUD23jmqbGBwX3EZZLLoTa2HIDor02wek6IPxcBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870494; c=relaxed/simple;
	bh=FWJW84It11QcU94Q6V0l/MHzTYIeK3scv227fFx4dw8=;
	h=To:Subject:From:Message-Id:Date; b=UQqiMXdYurJ4vQZny68a2RFJV7ZpnoengpQjQB1yRbntOixgYOWxK4QknDfS7OpGVVeVo2vD5M6Uj+AOPSeCUmlYelHvRMOF9ISzDsL+RrTlgSmALeBrMx3UmRs62iYEclal4Bm1BSbJm9v7Lv1FAU8tgniVAS16Py4ylc01r0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5aXR94p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5aXR94p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A346CC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771870493;
	bh=FWJW84It11QcU94Q6V0l/MHzTYIeK3scv227fFx4dw8=;
	h=To:Subject:From:Date:From;
	b=V5aXR94p+XvuAVQqXyKB1JrM+w5lD9LiG6DRmYAk0Zkgvn4jwAnJ5XdJMfGg6MpqT
	 qjKHrFTC4HQBDVgCXDE8PqjByrIvvJAImxTfn4CmkFp3RVER4DmFacSAIOnkeh4OT9
	 AJZTBtL/YUBZ6RKVVG7WbjY/obmRguuowiE+2wRY15g0wQ/wKuF6dsYKZnLql2fmlJ
	 mGBWDEPX36G5aTH9ZqmPjixv+eivElKg1aWoI80I+1BHcqsO1d6lugFZRqlcjLC8G8
	 oGSOUwwJKs/2GAT9DOx/h/HqYRc+zFjm4BRRdi+FTVuXij72IR7gg7ES2wqmis+k/R
	 abmtVG48ZK1eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92889EC1118
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187049358.21354.16847371108410977352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a744ccb8225ff5ffa14bf66ef7fedb69de9a949b7f561df32f1b9d90b2f1f80b
Date: Mon, 23 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771870493
