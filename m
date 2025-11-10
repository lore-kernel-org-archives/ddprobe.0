Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219741A9FB3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762741194; cv=none; b=BR7N9UWO6un5+jGT1kFqxMtlpQhYePWr/m6dpQsEMl8znTta6aFax76sKOmlj1xvJkBSAN+yobIg/7Ghgai8VaNLd+CKd2MDmoUbvVBDF+6+k8LIqHTybr+jcydXYoHrfGBSFH+zlD75NbrwIo4iYG/Fo/EmPyDa64oEqfgx9kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762741194; c=relaxed/simple;
	bh=xM7/avYEOn3cJf5CEPcQIo7iqpTmI4Yv+wEMyWvz05s=;
	h=To:Subject:From:Message-Id:Date; b=jgXExwiyan3G0vy/UudEdpLNxfz7NN3jC8DD2HhIanBlXASyDn1wBSOgCIhovP96DFAJAvIdjFo3XNi+vV0WuuvwwwzHINgu3vcW6AddS4dTI5bP8vfZU3a+tsMr0fMJbgva8DlvKcHoR0HaRvylNhxz//ABvqFZrpymRxk49UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMoSdxdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMoSdxdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF51C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762741193;
	bh=xM7/avYEOn3cJf5CEPcQIo7iqpTmI4Yv+wEMyWvz05s=;
	h=To:Subject:From:Date:From;
	b=vMoSdxdrdNTdbSQkEY4GSuULSpOawABRqJjv+zDo4ZUrjwDu2GbV4AOEr8iz2/v35
	 3y+V2olsF22u1dmV8dR3pJEDoa9rakwiMOb/GClAE+3VRdhmxwTFP57ceh786jBGOh
	 FDSdUkzu31jToXkxCJFWJ5hckdUs6g6RGGZPzNFnGpE8pzm58A+3Sv1liwe+qPvYhC
	 t6TbnI18buBqGhORLJ4ybsJOJkcE/lvU42Bc4gsdU40Oq+oMnvWNfE2bBehYtOQ/fm
	 mAun06e1h+S5f285LfsT2l3almnZrY0dI8DBjsi/BIGCqDw2AYL51zzLvY0D8PyP/Z
	 myngty6ZAH7dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F677CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274119357.17750.1163807803210511985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491454ecc4b7355dad42f5eb011ce9ac03882b40407a206743e8d325c72c1519
Date: Mon, 10 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762741193
