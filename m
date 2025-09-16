Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19641284671
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758056995; cv=none; b=CdYMXdMEz1fDsh+ZR51RF+vae4G4tV9pagXvg+OzB2uzUUR2miCu7RuFWifrwM9ZSHlXn9xLlPSt9BQIbDFpFFd4VFrqh/YloQyNC1+rSUo5MuM3aRD4glnEI0gu7APyTjQngvipndnHOpdK4RemZQ2EdOrG2OjtBR8XaPEJzeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758056995; c=relaxed/simple;
	bh=SwmCNyFccZetZh0yO5P42by+EEhdbvTKLkTu01luaKk=;
	h=To:Subject:From:Message-Id:Date; b=BLekoGUPX6wYR8FjIl8p5FXHAeo2djHRWOebQtFLl3/GSghjCJehMC3qBPbBWggVzL6cskSuJxwqj06VhZZyCnzkTRYhkX7LAaJtSC/k+Rq/fh6A6u4gWSD3J1YZ+uhnxUR875kTCfdocrX3sktynr3Zj5dInQgTEB6A3kYkXW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuXSR1kG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuXSR1kG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4CFC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758056993;
	bh=SwmCNyFccZetZh0yO5P42by+EEhdbvTKLkTu01luaKk=;
	h=To:Subject:From:Date:From;
	b=CuXSR1kGb0qSb8BMUDh5o+OmXfxDdwKL71YFnkvY2QMCo/0NMGxu2J4sHm8XFSo20
	 POBTy6i+9j4SZJaT3Wgg/X/foMLg2lxLleLwtRqOoQiwByI4RaJHGqTHzI0ThRNXGq
	 4uw7Q4eCBuMzSMb03XlQ+766NVQB/3c7yfCF/DyWl9sLiaQZhFZxNIORwfK7Ohu29l
	 tVi36woCWztkAVkiGlx66ux4EAbXpGlF2wTALjvcdoIrP4WIjaXRBvVKcvSUVnCiyo
	 rubUgxhN0NYjf4Jy+rHWyHX5El4gfOqutAUCC7ZEmoELU2imYRkk14QNi9rLRs11Ta
	 x3N0332FenYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90258CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805699358.4685.4033874765954968925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca52f222789db33e9475baa097664318b19f906fc472d570c506354feb4c8b83
Date: Tue, 16 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758056993
