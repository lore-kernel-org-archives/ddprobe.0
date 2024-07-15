Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6998113A89C
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 06:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721025803; cv=none; b=ZhHhVqADMKXMC+39XmGHnz/gm0hKGiIRRVS9Xpbjw8IbqJ+RQnQTZuTfc+RddF/YK0hTaol5cBKAT8d7nsh9d4AnMJOx3CalS9WsUCWJrE4WnLqe80XdXFW3GxYoS3euEvLWGdUcjeQHX64jtg0lNfSeW+X+fSH1UeSUJmqneP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721025803; c=relaxed/simple;
	bh=427AMR5DG7HTikyYxjqi2ngv2uoYTOBEzsaQP9eAejs=;
	h=To:Subject:From:Message-Id:Date; b=Sd/wG/9yRGjSWFky0gfpyJQrcJ7VMrKJMsZyRfNywkCjp6gSJIzHI5HRviGSjKCW6pFddc+6miZnUXu6DJewp5aDcXBMkDFMbMl9vo32A3K31z0UR5nLFwG3raJqb03cDd3bcRMtOfKkBw0IEb1M2T8iGqXMw1v/9vhKP6IBOmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL94Gb92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL94Gb92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD0BC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 06:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721025802;
	bh=427AMR5DG7HTikyYxjqi2ngv2uoYTOBEzsaQP9eAejs=;
	h=To:Subject:From:Date:From;
	b=hL94Gb922f14624Uxzx9rBorIweSHBXCgApmBIm/QnzXPjg9C7v8B6222JkGHTF25
	 dE1ZGwEPdttzpQTyUeNl1TVF6voUzQbxBNCNP4dU0I3ZbCqcboz4V+zar/NFIuRYLV
	 IaEgJB9I2scQYbV+CmMSRUpj4q458k0rDGryioNTArP99Ol0cCjETLv1ooaMsVSWeD
	 BNv5NdDVt11Vs5keV+NybZ/Bzku+kukv5f9BD7Co3JgHPuwARkAbkPHghcnSckVDBg
	 NrJFU7eA0mY77VhvwVWojrIx01eJWVLQ2ve04P4TSAQDbZqL4mV227CO4TO+QxxPM3
	 lU0zYQoJ2Fr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C65D7C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 06:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172102580280.30897.10345774313511203451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0f552d19e958bad1f27c0350c73840eb46434385bcb38b5b2b59dbd53eeb5f
Date: Mon, 15 Jul 2024 06:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721025802
