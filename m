Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D7C23026B
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759259994; cv=none; b=Aqb15tq72DCVqtoYGjsmXA24yfQteyc7g3MCsYvM8agYeh0LDflehCFsN+O4RvmdP06UwfW6ymxBNQ3z6xYev19wz7jdrNSntWiafHrsbYF8+UQ241g5FgAusUmcNS5yOOxIBWIySCU589ytUB2IUskvWbulBs7zg+yi1ALmxtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759259994; c=relaxed/simple;
	bh=tiOrpHctkhLzsHXpriXmpy6zCdZZ6sa+Eblcn4ePer8=;
	h=To:Subject:From:Message-Id:Date; b=iHz0q3JntDH03DaLc2N96u6O51+ZmU2AvQYK5bHWmdbGlb5nG55XK115/aM4Dhk3Y5z+7ETV1P8ZvfwbIYTxzLQ5XjALDzZRKUYyK1NGpVUgpK/Nsst/rWhli7q5HYSwKESmwka/0UbywLCgtJYsvTFqiRbzZT8LJEjPc8PuPrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUwdlQhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUwdlQhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1026C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759259993;
	bh=tiOrpHctkhLzsHXpriXmpy6zCdZZ6sa+Eblcn4ePer8=;
	h=To:Subject:From:Date:From;
	b=IUwdlQhrCOYyTMnIA0XuPkl50fZTmpWOiGHpOi6oJ6reG9DEZo5gKRcqa2no3EuMM
	 AX8kK9At/pQ+a/B+47lIYw8Mc9/qFlBpIxQ74cuwyPaWU5yCZatTiQpq9s6uOuIYIa
	 FfuxMlGoLK78QKe5sxUd6xfXtop2ZtlDH4MKjMhbte40+unRzFrfiQojvsz0Dks4TF
	 x2q34PU8oU7lfCTXfNQJbMDslIN/IoZllV6dFhLJPKZ23ENzPbcquFj3loVTibKPKr
	 fjiD5aLNar8jfmPAjj8JwyB52nH8vLEtbPfnM0ZUMf6WFtfZan/+VeCmrEbdYzfrs9
	 +WWWA1FEcOy4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910BCCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925999358.10635.1515200704288723358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5d0022825d8386449eeeadc2b06134d529a5dae4a016b4ac089d476aacbec3
Date: Tue, 30 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759259993
