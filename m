Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245848460
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765546374; cv=none; b=NeS1n2kIxkUn4OPmb76L0vJpMNaWtUbD3QYGQlnHhafXUqHOsWH9NHlWk0TDNmNBEvA5WQwDQu2o278yqiVlZEdYoPrtP77LWDEkuLjX3Xyo3n0dp9874/EH+EEheQGf+8rEc4qHNjy/INZ7FjMRByPrb1aCNAyl754Dv/J6kXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765546374; c=relaxed/simple;
	bh=OEo0tBmIUSAypV2keFKRzgOAiPanYeaT6jBX67UdEy0=;
	h=To:Subject:From:Message-Id:Date; b=R76OQqQhZBvNu8wTqHq35BXB0LwbzBeJAyTITU+CaWldfDl2F7stUUX3dJ17VpkNuDo5Q2qSXS5MqMbO7SHf1a6uoDGUOpQ2kn4x8DlEk+uENpER42RAq/1JNtPJ6pxsxPoUt5qj3//eVr252524yTIt3zsG3FF4SD1XG5bAhOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aoh3g2S+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aoh3g2S+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A779DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765546373;
	bh=OEo0tBmIUSAypV2keFKRzgOAiPanYeaT6jBX67UdEy0=;
	h=To:Subject:From:Date:From;
	b=Aoh3g2S+tUXAuiLpFSgtbwY378xjVEvIcZdU+up+J/tir1bH/0cwQ4dSIT0bmbxzz
	 CdDe2b6w0i3wjYsnnOtl2z1ZqzATzkTkd6Jq17VX1h0gR1m1gh02VGFlm75n5ASxZe
	 ASyFQPejQZmSkiyfrO+IDivR/VuEKvEBgRqcZ7vugc0Om27MtBP97/acRuLvCrbifi
	 P9NWjVHS75PFHtPj1oZP0pnPQFwagl/o7kTojKAafgKmTk9QoxRmt0bc2721NnD7j8
	 a6B68EeAKa4S60qAu1b+PqFmxDGRNJqE1Whd0nl03Cn7Cx4T0sYWYO389sYEOlp6YR
	 Nbubv7xSyulBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969D4D49224
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554637358.31831.2222978989964417826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4bb22888eea881e733fc8c27e8e82995de93f8c07089fb44a0a3772eebfa15
Date: Fri, 12 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765546373
