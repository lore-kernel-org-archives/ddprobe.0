Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2629328BA95
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773401694; cv=none; b=uC2zfndpw6WHguEcZrmbeCcRR9pd6NCsuwGfnT1P+hCf/x91opdJDjtzh7dVDZQavasIHjAxPQ4Ir384yfQgDfrRQnALYEbCgcohmfBoqjEanCBgLuqjR219d0C32reJyYGm8LubTEyCs/Z4vCcOqdH5HB+ON0H27KKbIqsnY44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773401694; c=relaxed/simple;
	bh=QSUkdom2HlkyogfMm5uY+QPFxpj6iYzQt7t4HVV8S14=;
	h=To:Subject:From:Message-Id:Date; b=mrpFqxZ39C/9o4JzsvY525Kf+6myGbZ74XmJxjSxj8XKvJR/rQfWvWicXbx+9IUl/XJhrz/DWjARj1wTu5NvHghPCtf+duonXVCWbQM2syAwHYELW3pl+CyySGFJMK8mWNzFe0CdGkkYw8DmKtz1XWRgbNFaav0MExlKPMFhy6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmwDZjTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmwDZjTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1D1C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773401693;
	bh=QSUkdom2HlkyogfMm5uY+QPFxpj6iYzQt7t4HVV8S14=;
	h=To:Subject:From:Date:From;
	b=XmwDZjTvWlUewNONFFrlwbqcDvlwdE/xp/F+GHRazo718eAvsfk1b1tHE+Hp6fK1q
	 Md1ycVKdJMFk4zMzzDd4hGVfvIVTlXLIbcySZu9xWV+iV0ZZoaQxFewnFcOrcSsEmK
	 u6E7U8y1KeIA3oXPGSLGP4KKdSHqQuZL7AgkTSEFfazxT8cAONigXkAE4S/udJvPA3
	 ZHjUK53Lhf1kNKgLz/KaPUh486eK0f9nEVrMig6U6MS43q1BJfF6HDgPmCie+fau2I
	 QGceMd9yIRyR9YbA7jsqy8sebioaChKarHcCXP1OolPkn3DoPyaxmL1fNfhw20eBb0
	 P427DHOOLzjQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3CF105F79B
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340169361.8989.459491313520396246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6ad905b477779c8f500e6f6380369eb06ea6ca582c83c484aac320242af1c3
Date: Fri, 13 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773401693
