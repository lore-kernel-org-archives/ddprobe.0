Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2397EEAE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758950994; cv=none; b=dTKZpHQN79y5BcGF2/gDm+ifmGQVi2Z17Jn5Alp8Yam/xEMaOgpQ3Ba5K/1tRoeiawxut+3C210YVoQ8rnxtNrN/YzHKFhtiOlae+DxPHmbv4GcdBB7RdwyjdYT55QwoyXTnwyMQLaAvRk1xusP4FKaJG/5XM7iDRze60NKF94o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758950994; c=relaxed/simple;
	bh=OqJX1LEDUR8ngtB/Dkd+BxT+Hg7m9vLUiFBVvMQiT8c=;
	h=To:Subject:From:Message-Id:Date; b=BzBBQ2oAJYWpgBVmFA7s5kd3Y/ApZq89ftLCMYxqHeW/VfZ366BhN7uwE+i9p3gZZ9rLTlszKIc7newSipX8QpwVpSWf9Av7OG1vUtE1jIVvKsWrd5XhylJXdA2Nf9YYk89gZtDt8gnuBratF8v5euWsDF/Zsm25nY91PBZ3q8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vItOjt7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vItOjt7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F02C116B1
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758950993;
	bh=OqJX1LEDUR8ngtB/Dkd+BxT+Hg7m9vLUiFBVvMQiT8c=;
	h=To:Subject:From:Date:From;
	b=vItOjt7bguYMuPmaYIunstKucsUwgksjUsaiQzgIwRabJni41hJufYuWb4BmbSuda
	 TzV2PLAK1Lv2q8R3McoA+wX2qpj87tULwkSECYajd7PJDQ/HeH+FgL78yTeKKWFbui
	 523d5pV3c3Fb1bUFhomHTpcw421EUmoZ6gbgh3zOXrC3EsaVCT69FZxvwNcJiPq91p
	 iBB6rVDhkgYrSAXGimgg/DNDuXUIX32I4OXNcL7N8tP6PBD/0pT7Ld22YOqkNJS+Gj
	 FLEt26fNTF39h5N7x1sfzy+0ZmASnyIWHEduYYaSWayKB2H/qYCCiecDtWkRzv9R46
	 KMaPunFkUOPxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925EACAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895099358.13228.5117642349141685215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae388e8bbdeb2aa11fd737acc438616e5350123baf5f31551d5f9840c0b0753
Date: Sat, 27 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758950993
