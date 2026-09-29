Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E191503904
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790685634; cv=none; b=NiToGFXWFhy5LdORAJWhlMefVVXBfy/kS2wnOBL/IyxHC86cwx9M7rW4FUOULwhzpwbUGl3p6Jj4kkCy7IShE/Tu7ifNKPXHEmAca08AKjp/m4+O82q5sMd/eWcBh63suzI+RG/jTpLVlF5iz9KdXl1ml0jS3I2Fchre5CDFRbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790685634; c=relaxed/simple;
	bh=wkv5GmvCXWHfTnp019N9rxxUhlawH9ngXVVDueI9++Y=;
	h=To:Subject:From:Message-Id:Date; b=LxD+lcbbCMI/myOriy0ELn93iqvVhzVcRzkqJrP0RmGTpU1f5k0yY+N7QzfoXFqR5l2Zz6ZpqyJBT7ol7TuBnq8JxaZeYCZ/6U4Vt8dH8xkqOT3+MrSVyxPuIJisDjVQKxBrsFDXLR3Rp/o7LbiJVlNcfzsq28x5Y1qBBZM0kNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e82gmP9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e82gmP9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD223C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790685633;
	bh=wkv5GmvCXWHfTnp019N9rxxUhlawH9ngXVVDueI9++Y=;
	h=To:Subject:From:Date:From;
	b=e82gmP9xBRJ321PFt4PRogTrnUbhNvbLhV6gOaU9q79TKVJDC4EOcTzPFOg2b7BVW
	 I9nBWjl5Nux4wVeyPEMW8IABd23PNNGVYS1hIY4nhEhKR1WUVb/nu4v/BXeq/Q1o6S
	 P2LxwfcBXSq0KUO0S0UnFKXrWGVz3f6qjWrj1wlJ1Sc0hHcEC2fTuV5Zr3Rl3iUI2T
	 pJ1PNso0uPKHCByNGYlaaRiUsxpee+pvgYEM8d/4T2HbBfh7x+VQv71sgaJ5yuwIOv
	 EcZCLbXgS1eGAakRQV9EGo/EhR8fxdQRR7x7BSz13uwu1ipfp4MuXlgvxjSAda5T5e
	 pC34izFHo0c7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A5CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068563368.18408.13207963360602686930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726962912c439ef918d601effd8d586960d8acaf7b08bfcc7977c6a071b111e8
Date: Tue, 29 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790685633
