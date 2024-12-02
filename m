Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C401D79B4
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733180154; cv=none; b=TGyLe8Jru0easLmOlrU2l23KGJoLev6HjW+uw2KpcFRUoZi1R2GSNKNbe1T4KsDG7DLBS4/ASXNAckxGJ4RVs/1pAZvUZtnrtKSIk4iqbxYD6svtufj5exR/sKkIvIswbZ7f7pORBWFuAc9KIsV2VXnxtqbPvs+VQG+g1JRLmBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733180154; c=relaxed/simple;
	bh=bhpOFoXTWrnBUAspiWmQyVyGXyib8nokHoHTCcHy/LY=;
	h=To:Subject:From:Message-Id:Date; b=W94z3UhCeh6Che291EnNbI+1IVPWa/8nWvhAxC3rrl0Gdb0soyd0d7HBJmYqsnopKE+x4/i9Z+kFW6hfFZ+0hdX1ZdRshUyQvGZ7kCNwksnEAIFlyIWqrQQbGu60AjdLSd18QCf4dePDhVRnhoSEqBbzi2I4OJ//2yndXE0tFho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYL0fGLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYL0fGLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B5EC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733180153;
	bh=bhpOFoXTWrnBUAspiWmQyVyGXyib8nokHoHTCcHy/LY=;
	h=To:Subject:From:Date:From;
	b=pYL0fGLDbUn5BPZrDvuhRwc3ceuTBAfdEs2DYxZckFkZLvvjBYoRgOOz7i6kfEvBX
	 Sm2kS4t5GqvCfqUaK4gxlTS4eDuWirD1OlSCyVTqbbxYYK6dUOYrXHRokb3DqcRzND
	 TbwPykxICPlHIjhpm3pSsIZdjbbmBO6zoUmvMoKRBo5vjsPVakoFK4HWgKb9STDI7A
	 CTOIK4nTYucbaHAIDVtUarW2ka9zU6JrY67sUYL5ScyshLNa75XfMeaAf6ZH3P2Sve
	 uluEFyyesGdZxE/j5hal98A+gi8w1SeZ4985SMZvszZr5tHrVX5dl5L8n1OapKTvxb
	 tzvOLuQvopQNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958ABE69E9A
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318015360.17059.11743579016827651262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ee36a03c09d5d9a462433cf5c215fc3d97dc5299c0b25b2adb1a670b933628
Date: Mon, 02 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733180153
