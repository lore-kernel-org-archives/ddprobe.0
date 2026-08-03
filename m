Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7C5433E60
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785783034; cv=none; b=feE6Qfyza3LCsjATTNiTB6JCS/Q9ic73mUROHEflA1/GhtKBSlZo5AUAPANg6W2znYcy7M7SV708PCe7XEFRAfZ6z037UmTTab++7pVXOoi2uigq+LqoHWE1MOIZiD0QJ8S6R6jyqLWhqDaheKp9kz5AAYeZas78OVYrFZzRf8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785783034; c=relaxed/simple;
	bh=mpR96LaqHBqFpSOF+aPddGGe0GI8mSXER2qYfByF/z4=;
	h=To:Subject:From:Message-Id:Date; b=ZZvBDJ3t4MWCtxzTDXaq1AzPnQQR5piRiTaTWJuI4jEVammIJ6csL/wbnL2MeTEc3VNmUskoblsysZ52j2yuadKGU09RGP2noJXf21posjORWqPCYQ4/CLjnoWa2XLITvOJI8AqCXIMqM1Cc/nvubLj3iTo1D2oGwQUvQd/NKpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aujZ9kMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aujZ9kMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CAEC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785783033;
	bh=mpR96LaqHBqFpSOF+aPddGGe0GI8mSXER2qYfByF/z4=;
	h=To:Subject:From:Date:From;
	b=aujZ9kMtzdL17lrg5AD1YYbyVCXONkrPS9Q4UvaH/cW0SBh561S0ZdTxvE5dx1dHO
	 c8/NIME5kk3wkPsm2JwnD70a9J8EErzT0QeIO5mSiETgWQmx74G7XehSuCLiS7Ihst
	 orN7HAKxKfx3vRlG+LNYhsyKBMZi/E/vbUSd4a62y0622njy8Nb5OXKep5hWFE5jaK
	 pXmdAWxIC5nS28HHFcskOGAFA8DWjmQefAVq2j4iIuqK/4eE4asFWu0c/LwMTDb3Kx
	 O/cP2GS3TTZ6kSdwTb2suvgeIlWGG0i9kmS+sPYiyXTpzIQW17NK6rzZk1UTYbPDB0
	 CKJTmeueT0EjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD21FC55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578303369.12861.423725764354305726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea90d7f08b430d5ce9a9dff0426646798db671387e6d8b60096dee42011bea0b
Date: Mon, 03 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785783033
