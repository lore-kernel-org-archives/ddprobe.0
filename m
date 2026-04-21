Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D77E1E89C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776737854; cv=none; b=iCG29q2zQwXOwM+uHiGEz3e8kruLLiWETsHk8pYJ0OHjKxUBtDlAtL3snSsDelOBlFBSeNcMLUnI4QpQFuUyhgJBfIpCP7MnDoxWtgiuqQrV8468C8TD2fVXeeiPfxc4jU7IxZX25xp0OvKFBqqFFvtI5CK7ilUpEL5XyfoL1cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776737854; c=relaxed/simple;
	bh=k98TaVECNiGgpmiVvLqbjP8IF+QWtYTIn/ZhNrvybNg=;
	h=To:Subject:From:Message-Id:Date; b=rI3VxLPF4+WiZ9r5hj3U5QWdbKWWbY5H70Ngb9R3FiQsckGtH2n8DzrBB7wOJ6YMlLJpN6QD1I809ivEIi4E9Q1tE3sXcBPQh2FaU9P9Uf12HkNuxf3pRS8I0tzRepE799ds8Lg8EV1bTbVVD2LlifuMwPIh6sVwhQ3tkLo59Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MK9sA87M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MK9sA87M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8A0C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776737853;
	bh=k98TaVECNiGgpmiVvLqbjP8IF+QWtYTIn/ZhNrvybNg=;
	h=To:Subject:From:Date:From;
	b=MK9sA87M+ApL7xSfD04ZUhedZr115e8MQGABiOeiA+gpgu+kVqdLflWYzaPysaUnd
	 hxTgPNW0I8lJiMuOfMX6BOfOtHIf91ojaOUNkj5BYbeSf+OB7JT8DE52aFdN/x3AnR
	 Or73B4EfxaNaSkhWrbVSL+aeJdkPOPE0LzfIf4f9j6SuI9jEUVQ9zNn2O0gBVmv0YZ
	 6zNsFH4pIx7wNZfiTblC3rr46lRHADn0SVYHs2LVQPwq2abqmDefRJALhvTjNTVoJe
	 YMAAV1+rXVN4Yq5eTuqeYi/lbACiauuhKXgGu1OULWo4IUS6Qs2S0Pdt8vG1t49otP
	 7iSNANgYMmSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A87F5A8D1
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673785368.13892.1571634572746091943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8553ff6d921d9b98b08c2c4a7b017efa19bbec5f54e35076f482675044e91a
Date: Tue, 21 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776737853
