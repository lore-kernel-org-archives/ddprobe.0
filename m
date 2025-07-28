Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288EB221F38
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753697994; cv=none; b=QKe/H/VjGxk4OhWLMVFLHx9vxST+4xQVVGAfvARIzYAlHMZQd1aN+hYzcbnhPsaIPjwjFeq6jvHnMEDBf6OtL3Figclw9+QD5wFoK/ato/gzXuyKdvDBrdnvmPehpIbh8L4kVHyNG6/kA/ZfzYoY+TML4PCcfSQJKawNcHe2Vbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753697994; c=relaxed/simple;
	bh=Zia9y7bhpY9W7HSa2ER9y5vaxoOhIzrt9iapD+uHHXQ=;
	h=To:Subject:From:Message-Id:Date; b=uZU97lBGJazOEobU1GjQTylCOn9xMbDMK5rLBDHv88gIQeZcpidqmimlMD7HqYgSSBcygWbjy11Ug0ENTS9fPAWgJaGSpxCPhCeMCzETUadm3rQmTXB+7yjJUO/oXhpG7xxYYuECqCuW7DQ4HKdNO3cIG4Q0W/JOsey5Och0PCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZVHtxRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZVHtxRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A39C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753697993;
	bh=Zia9y7bhpY9W7HSa2ER9y5vaxoOhIzrt9iapD+uHHXQ=;
	h=To:Subject:From:Date:From;
	b=lZVHtxRyxBHOxPW6L6JDRdox6TGpbb8rfGZDqrVCwITEevsXJaruKK+NXVcKwW9En
	 MNBmN82TdOVREmW6YBBNgXgjO5ANxtvfZbRWZjNxBs1gdxCqsw1R5PJXEmvtI8IGU3
	 zcg4Zqib9r1S/DkPJviqwIH2ZDKKvagXao80y2Q1Df0f7giAaWcHV0PeK7eWRii1J3
	 uANwDyme91nXm3IqcsKNs0nNRuAHsyVj1l+tbTgk0kWJkWEX7t5eW6WQfJvyBmsoCv
	 bbLiggQvtM/qzuSOyZJh2DVs25V8alxA2cQ42v9sIFBgHT8mbf2ObVGld3PT+ll2kV
	 8zvZYj4xvDnXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A0C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369799358.3134.1373361214212728178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a18d7c0cf8aab9b4a4416b8b6b5f6132694f366704dc91d0f5381bed1d97fc3
Date: Mon, 28 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753697993
