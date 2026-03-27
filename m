Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6756537CD57
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774639494; cv=none; b=IadwwzrwqZTf0872bBQyfEMGlknwBufohivZtRBq41VDeqRkU9aKROd1rFBJMRvDq/bjylKBTNL4oTIgsFKLDzWEKVtLfHlbOzr3vVQ+vgw/xOmkoY8i/mihov/14F+B09n/ZvVAeTFfLUSY99fI+jw1boW1xFTFcsy8NmpwqKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774639494; c=relaxed/simple;
	bh=Zk1jPrD1gfPNGcHAQXgQgpNUrOu0pwPWUn5mD/clc2k=;
	h=To:Subject:From:Message-Id:Date; b=A6E83Iaqf6MKPZBpLEk2lpGA28jMPudmMzzDBTsbodL1xfRwaYuZ6dOYaWARrel/m8fVrMns89h6Xepn6lq0mfjLoDla975rOgTVis9t7Y+29CsEX5Mf2kO2Ai3p4Uwx0UFd7quO2OIlfeHhELHqyxj2qmjCPbJw4HP78VEzonE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klmhXwxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klmhXwxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD15C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774639493;
	bh=Zk1jPrD1gfPNGcHAQXgQgpNUrOu0pwPWUn5mD/clc2k=;
	h=To:Subject:From:Date:From;
	b=klmhXwxrTlvS/KwvNpW+p7QDHQN0KTSQ7nUR398grzWNZHEMrR+60tSpmAFkaVxkD
	 vPISngYGBUTdmnT80xG5SYFLb/QPRc8oLHB6kkPfQmv2+2pNfMDvo+L00MorxdfSOf
	 W+/b78WUqvmOrC8PphbGQqxLNtsMPvlrvdsdroItkGjdGb5U1AZeJg9EqW9UI+iJYS
	 9oLAR0OuF1Kt+P6WM0MIWzjoyswEVjsldjRxPIqkIdbRrcO8nevOxX7h3LiUGfLUk7
	 euqpKZMfrSJ6VC3K8+VFWsG760InWY683AAfQ44dJefiENU7/6M/Jv4VkisCcdBuSj
	 OpMM8ez3w2FRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9689C10F2869
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463949359.32387.16467333267590247123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0023c5e96dcbb8083e4e9b49022f12a7f65f33a01fb7137dd9c724096d176a48
Date: Fri, 27 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774639493
