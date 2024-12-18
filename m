Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B23C13B592
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734491754; cv=none; b=K79uNoMrKTLpJRG9S4Zf+h/txkddtjn7WOWNmA4/+avYC8MFl0D3dlNCh6G371R9Xc5Y8D/GjzjeOAT8qjIEiTMot7owp13qAl61hsHGiznjhrw84vB/tcpauqaRja/daaKn0mOT5py43Ccw/imiX0dtCuEhLIzZCXEkDMoJtbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734491754; c=relaxed/simple;
	bh=Wb0ed3SOflOTTRiBEQPFvdFz2uQh6CHzUULP/FWtqdg=;
	h=To:Subject:From:Message-Id:Date; b=LGo0KzOJO9OlDluBxe2WOQDDjHH7QMUzck0pCs36LD7gcYnkMFsrwZXbfUjfA5BgHTCRZpMGeJ3gR9q8MBH+eclvxqu9Sq6OayrfvqMItFw2IPJ7s3ZH+5o3MuCewfDMOgi78SYy+1i+WtrObno/a4/GITa0wtaRNJRLIS1b+YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEhYuFqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEhYuFqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BFAC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734491753;
	bh=Wb0ed3SOflOTTRiBEQPFvdFz2uQh6CHzUULP/FWtqdg=;
	h=To:Subject:From:Date:From;
	b=fEhYuFqYVabeDm23uw+XgOqKgeNvBpRzPYvW7PO9VGV7PdorHPF0Mvwaqz/z26aRZ
	 amU4gEfMIvNTEwJwnB+jHP8LSgy/ByQl1nQ4T4U81O/Xucs2IFMh2FKqShWTrvZ9ve
	 dluvnCpC9H8bLEu3nIcfxTzsigePoGZKRS+Qk4LtBoUU/3ZlXDOfKilVZFDFQUz2FC
	 /YgXPyhH4ZS/GYD3BXnKmQ7DEulLwzPj7VxlVwwGdlN35DUREPs1L1nsWvdpidNFy/
	 AF1bt/ho70/SNysdpn7CsDB86jm58k4AnpcMTZyAooNXcKDAMubuC89ynh1NiXr2j4
	 EwwHywh+Fstpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CFEE77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173449175357.20454.17521657302397708688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38291a1fe4e6f3c82627fecf000d33dcd7857cf336ecb4ad944d999636fb4095
Date: Wed, 18 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734491753
