Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADCE1EA7D3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742561395; cv=none; b=px4hryp/Hm7CtjYdKqmXBEK2ajkzmEFxn7hPnX+jcUcfWSManAwOtC2wFo8V9vN8F2wiuQ4nYh5/+cVyLRAhjryG44i+ZqlxQTJZ3VvldhKjR4MxWhnqjYY/NhoEC5XgJvAgPHfGaixZYpz0lyM0tvPPvSFwv4f9l5DB1G7wY1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742561395; c=relaxed/simple;
	bh=97vO2gxAQ3gBiGIyjnRiIQQCnyA7eaN50cu2HFvBPh8=;
	h=To:Subject:From:Message-Id:Date; b=DOVhrewOFcH1M92RHBl8rVJojGZZkA1eP1hNI/nvo/U+/KnXRHFEPPejxmuLnzQaWugUFTi81pERWcaS8k/P+adimkrex9uFWp+AvfQoyQgJqrR/8ibVwPZ34FrNyhOJ1keKpebppXLuE0CdI0dUu/bZpf9wKtytKGRsfJTzIYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTKwrw3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTKwrw3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B7AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742561393;
	bh=97vO2gxAQ3gBiGIyjnRiIQQCnyA7eaN50cu2HFvBPh8=;
	h=To:Subject:From:Date:From;
	b=rTKwrw3jRsWuuJdZ5xa6D1KNktqblMjNWCde/8rT46XKvVYtzwXkN1u3D0dsduiP9
	 eX2sGG6jgfupL4kqLhN2eydULRX70nw8m/3Qjkez4HhdRr6weNtifQxn18AyWuNkK3
	 FCMnOkn7qc/NZz6YEn/yhVEeb64Rbu28+K/Z4XP435fI35wLnZ1hmPwMCf7OJ4NjpZ
	 SJ+csyVJmvU51SXtVKgMyzAtdIVvHpylrZm77u50ojzbWNIJvQ1gwjjNyVTKHM48BD
	 UBQjfSyuweuLn+qChgkiGhuEaMf0QlGITLF0inS2es5Z5umR3hprk0Zh+OPTFqdwh/
	 JFCrKriMb4tSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3765C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256139364.11567.10395025771570672488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d856d4bf26ed8e7b3791cc1fdbef0d3c35e83ba3aace5ee8b591a5ca6840d642
Date: Fri, 21 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742561393
