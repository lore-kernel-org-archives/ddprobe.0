Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2E81A7255
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732103754; cv=none; b=X2Mpv3USHmQGQz8svi2Ayw29mgmll/fw4/NHwGsoKgYMeYski/RofrfnI/3/E7LJnembTFT5XceltIUuiMtnvxY/7hSm4/S5u9vVxGKiEcMnKihy8pHgT60z1bERF/sKVBDY2dGhi8JaHA+pzWtfvSeeN2vJP30Q1OAjww79fV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732103754; c=relaxed/simple;
	bh=W4FTjkhk0XkHuMyipXYmd9RmVZTeB6V0HY+0CxxbWs8=;
	h=To:Subject:From:Message-Id:Date; b=iX5ys4WhMjOjeZzj2EfcoM8qvfBqqyAiTJ4jqnovSdO9/ACOxKr3OpSB+s0nhaXJvgdBS8ofmChWD/gVQNKbVolor/ilg3MeDUP1miDdm0Uok+iO3sAS2YpIou7dq/jQyluyKtoQj/UZaVGd2AsJf9oCYsr68X7h0iw4sYvxq+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knrSDzfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knrSDzfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF0C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732103753;
	bh=W4FTjkhk0XkHuMyipXYmd9RmVZTeB6V0HY+0CxxbWs8=;
	h=To:Subject:From:Date:From;
	b=knrSDzfS80lARNkQJZPHyWKX3M5xkIUIPA/hR/4vijMiI0odFGPNgZIo0gJL8PnSW
	 xFMOrq/jb0b6UnXSj0AUi2JucfxOtla02RywH1Dnn7rgbnglIAKL++46g3slf5pyJ8
	 2w5ZeE+zarTtsndufQ74kbaBRjqBxHbeaLM6QKVRRdaCrOEzIs5tuW8g59VJOj6TGT
	 Bw8LRXk943MI2l8ET8/pTRXi2TeJ/uXnBNZWmLNaszwhFp5rS6oJJ5vxqV+4aXgd1I
	 5Jsb4yV6NroWkNyS5aj7ezF3iGuAbikWbOV20vawfxtWWV66sisjh88PsL+kbFDK2l
	 AXJNbrgQZLNZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F2DD63930
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173210375358.13597.6725096399618316751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6decb616e8be3a030916a607e0793c71756dda8a55637e7e7d202e77451fe9ac
Date: Wed, 20 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732103753
