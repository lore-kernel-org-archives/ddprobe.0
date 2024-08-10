Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D2221A0B
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723272954; cv=none; b=uGQ2+DR/CHj5yC89moiYvcPKOpOkRecrGjH6oDB8EFGxRuDhj0TZ867y8Emk7Vqgd4QJ6kXuNMAmEl5+EHw96HQP4gQpZ6JHMAOtbjZjprk6YkErtZQ9vjZei+A5Mk5pWJkMGeLqgeM7jaNLJiIyapP++BXR8tx3tgEd2VtMJp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723272954; c=relaxed/simple;
	bh=zIRbEGuvQA6gbHme2DGDIpH89lvw8IBW3FjETUCBLI4=;
	h=To:Subject:From:Message-Id:Date; b=f/GLX7wI/VNqHhNI1AaDoJxtqzZL89zibn5/4DHSJmafMmdSM/vxV9xrf1HNXXZ7TsyjhCGbmose7BcJnkJM7dmiyLUtv02WK055gRuJx1mv2IN7IzRux91CVpB/WhtGpt91dTxKjciUle1vN/BUO0jqPVZ+jCJu5FN20OLRK64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHVAgxow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHVAgxow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C3EC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723272953;
	bh=zIRbEGuvQA6gbHme2DGDIpH89lvw8IBW3FjETUCBLI4=;
	h=To:Subject:From:Date:From;
	b=eHVAgxowVrIvtAIzUcLMofvYoqlaL7ueY2sauJHh8pyftRQFDCmGCROTySaDmP0Qo
	 LK3l0wpuCG+Yx9jW+ivoY6btABeIsOAPhB+VFFvI7TOwF92kBif+r+wfgeUnWwOugw
	 g0NUet/R5ugoBi6dOD+8ty2035cpdS56ByjzDgIobpjomuv9sWscg3PPs6TKqdhZSi
	 BbMUNZXrfrTCKfC3yVYcrBW/BReirwVuCYhxvXhtKizPBKOyUNBOgybNJZ5/K4Gt3N
	 g1bjU+HeL5FOziU1FE3t2V1xsgRmbNT5zmBnqnNXSoakMCzirnNhqSwbCaCItOW2Cy
	 uotmWUySsozcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991D3C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172327295359.10088.5074944430370282560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efac9a08bc3e7eaf91b9b075f307146e7db2a46c6482e08af46c38d6caaa57a
Date: Sat, 10 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723272953
