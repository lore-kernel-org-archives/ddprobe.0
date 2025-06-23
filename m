Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45B016419
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750685993; cv=none; b=YBG2W5yBLC+2KX9BG/NbxpbfT9gcqPk9/5MXpT/yRdO7sginb/lMLbiOwwwOocv49on0WM0C0FrqhHlVM9n+LyR7zLv7jCmM1iA+erCMVBoJO1IuADDpfHY701fxNETde+FXfnIU5q+tchhNHGSTF19HkxqjHyz/M9JAcMxi0lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750685993; c=relaxed/simple;
	bh=Kg7wYigBRrx6I3DhoCubFM6oRofbFK95p8Vj5pwaUQ0=;
	h=To:Subject:From:Message-Id:Date; b=inILiHDgfPNHTIbJGL9ttmf8+kSL/xYfWtw4MjXbtF6WP8r5iV+WMWblDQrHH9tU0umIScz1+zh+fT2U8vpt/fKNbCc0m+SnZMGO+zdhSFSzmOq4eM0MfkQ3JUTBybe8sf9ij4DRfssmG/CfLWKRiDCUwsRZZ1QDwxR5CA4Wnzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8Y2byJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8Y2byJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6ADC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750685993;
	bh=Kg7wYigBRrx6I3DhoCubFM6oRofbFK95p8Vj5pwaUQ0=;
	h=To:Subject:From:Date:From;
	b=i8Y2byJQb1CKyAZmyxrMV3UA9x5FBkSIdaZAMl25apJ+s/DHxgrG4kv+RX+7HKIzt
	 OnVvQ0g6Nbq3g5vJzwHAoBkzUzgeCj4yAUjmIAjXbCqz08DhlEeAzGuRKm1/nG7Aae
	 4F7M8V+RHfbCLdh1ty/aaPwVTdjkPnYm4CzjmNYUjcHXH70kLye24rNIhnLII69i0A
	 9zEjCIG1qIKH0CNhZKpUTmtKo5H/iGxVEjLiHHbEUBDpvppuNhpFBwfwd14JvhUDuA
	 /wBtmvR8QO0UgAhuI+62+N7qZWfDmxe7/1Yn7uTShoJTx42e9jEfZPbGoa76SuCVfX
	 XG3OMjng6Odqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37CC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068599357.9133.9449526734896521139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7b2eaec760d40d4ef10efde0d1f290f2cd4e46e611edc5ec7368f56a6c6e7e
Date: Mon, 23 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750685993
