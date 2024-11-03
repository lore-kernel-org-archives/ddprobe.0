Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426482572
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730613354; cv=none; b=TTh44PwyCpqAlSSBg48SeUcFLrgwThRZd1QhQtbVdezGlbpuRwmZDvcChWwJi32Gi/1WmNjkPt+b8g4c0EGfwTrcKwpmrVOAYaAMUDuft36AL8E3a9XnozQAVrWCmYmQ+VWd+UYHmFPHQnMy5QeOyqkKdob/+VtSqz8LcVwcYMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730613354; c=relaxed/simple;
	bh=MlvM2DQin9umDy+jdgu/1m7nMOtTiVbFq7JP3vL3YiE=;
	h=To:Subject:From:Message-Id:Date; b=vAd/a4ljpseYRNIPtILKYOMLf5gfdFKNVue7O4277imJpkTacA8E3Pdg1VRGlJEsMw/QzxJ+QbFXT0Hd2swUSMcQ5SzpxikixAlhmBSzsuXqfWfDxonmqblMkYKCfrugALAYxFbmgOlUCvc2X1JxJeCLTUSUU0J7P/3lWQofSIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxN+Eu9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxN+Eu9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6AAC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730613353;
	bh=MlvM2DQin9umDy+jdgu/1m7nMOtTiVbFq7JP3vL3YiE=;
	h=To:Subject:From:Date:From;
	b=lxN+Eu9TIxlGLyhf13S+ggB/9x7s49CWc8VHzGHAwYMz8DebbS+DLZB4/gXp4NFDf
	 Tdzs8ysQ0jQThgni6FzOtR/uNKab0alnuOjjLBPtaK5O8oe6/Rqi4m6oG2bmcLTSo+
	 Y+ObjLUEg3igjp3H1v1KfMYtS0mqy8MBqOUy/HvHhBWugVlLdYwhIwfknUhFMW8gK+
	 4J8Zuco5VqVlDVAILKNZC+KxrMnsm7Kg7oeBAZyubTYVfE8kZSS4Sp7DyG4+81pRKd
	 HWc2XahTDridXTqFIK3tRTRdQEa/mk2JlofoiYzQ+NL6QUpSTSiYYRQegUZPaBeFmv
	 md7wTQU1MAgPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE9E67806
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173061335361.15015.6866598285512802409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c3ec3a11acb8c5a10335a0edeb6cc6b83fc171717e9e571477a43c4cb04b14
Date: Sun, 03 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730613353
