Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1354B33B6C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763715714; cv=none; b=Lf8mZPlmaAZBKQFGpzbrrfunQSrOO92jyYNgazKahubtgiY4/eXZ4zK/EVbtFva8OGlyFKLLFA6V/EAnbFcu9PvagGHJBl0iAHRHJESdaYgmiYRt5ZfO+rRUGUHmE6IJpgoiw3Tzsqt5PIcp1S2IWn7lVBnNrHwYIM5qMuv6S5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763715714; c=relaxed/simple;
	bh=vfQSRTSbGclez3lQHUm4tykh7ky/hbFNEVT4eNq0ltg=;
	h=To:Subject:From:Message-Id:Date; b=qkNNEZlp/Q5KU0Cj5O6XqD71T2SFTahQWbFArzJr2uMvE9aKYRRTQ0SlfDAiNIkOlBWT/GYAHRjVJLDUMmXJjoVvEZAAhXa+mtij19idQXat40q0i+BbQ7wvt93rMkODvPRORv4jiYix5gcrTCwuOwMwlV529DtiqrM+XUQRfTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWHEgSxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWHEgSxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC9AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763715713;
	bh=vfQSRTSbGclez3lQHUm4tykh7ky/hbFNEVT4eNq0ltg=;
	h=To:Subject:From:Date:From;
	b=MWHEgSxQTJ+qJmxpy1AtfokDyKwTqDt0qjbBlpsplMkOJyKohJMzguVIfjkosvHPv
	 XliT5qaNvifIZZ9VpdnaNvZ6MFcPR+Joe9ayzZAce6JLrg+j2TrnRpbCqLfd01TVE2
	 DdPzi8Pf182RPP3qccTBcg8lr+c2iE5xm4uqMsN6XAns7CECiLMjSGAHoB8C1LcWmH
	 VmE0oRTSBpv/RbaJXc2082NicsdMZ7JgwYBKPBya+ofQgkVN7KEbIEh47lniVxkl46
	 ThFDV2bJGotJY1VP2s79bJzGYwInfXY7FrIyZFVgrDQMQpA+oxLs5Ktr96EbLo+UK+
	 F3MaKzJsSd5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906CACFA758
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371571358.29864.9410132898840312336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c19a4a3ae834618ac586232184e0b4f1591fbd0d104836d40a6b859315900d
Date: Fri, 21 Nov 2025 09:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763715713
