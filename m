Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7A63502A3
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788034234; cv=none; b=mAz+9mqYDG9E+ecmTgSe2whH3fiflr7X6oPpc8bXLzeVgYnSGOvEyK98BdGSL/WsIJefyt9vJ0shv+K1gj6cny8/NoMa1KJiy5tSeIG493Ey8oC+Q+VlCRq8zKxRVo+zY6nf4hceTGBurLkuSNkq1pDJn3o+tFLtXGH3CcHCSjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788034234; c=relaxed/simple;
	bh=zcD+lydxDqCA6k8myEAk8vtSHzpoBVu8Zx89npefhvE=;
	h=To:Subject:From:Message-Id:Date; b=BnW34Wt8gSJqGkv2dFgZiQcAKGAgbZg14bXjb0hmCCGe/ZqffIQBhnHKTKYjlDfJ+9Bg8q1HojbGVu+LHQ69ofdFpaEv47BIE3OtAJqH495n6tVd58Gus5IUJCaPIrm7WXs8/b1sg4q6a9UuHzAHn97dzDlHgmQg2mEt9j7JS40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zn13WpGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zn13WpGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D571FC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788034233;
	bh=zcD+lydxDqCA6k8myEAk8vtSHzpoBVu8Zx89npefhvE=;
	h=To:Subject:From:Date:From;
	b=Zn13WpGYIObbZtpOaS7PwNBlLmNgoF/UbxzVgNmQKpiX6tsLID288lU/DUEnZ0Uje
	 tdiejHpI+BSpGM0mtzG2d8fmRgkBLpeqr0SQajAaOY0Rs2UrqDDccvd5QfGajIb6dx
	 A2TJqq1ePIWpiJ24VpRxVcbBlyAp02LukuUeQterZVMCZJCocau2sZtMCklhXzxezW
	 Pg4ihqKd1EANtFpgOvwDbfRBpGftfiOzyQE5H51Y6+Qb3FNbCir5zd+MyhckhWqtU7
	 cJiOVEalv1kywn2IL1DnsyNq01P6few1AnTUiitpFkbHSeSvGjn9T05/dgLuekMvZo
	 /sL7OZ/y2p6zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE07C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803423369.28841.17278022911250835649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fc99af94f4430fd8f2006d7d4d7bec47497cb7f10b718146c71c2b317912a8
Date: Sat, 29 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788034233
