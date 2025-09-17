Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225EA149E17
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758079194; cv=none; b=TDTDvLic1oytyY8H9xZ10RbWJB8DHayV5jPHOHVWVRKJZ74aTPjX324LKuZjTx65wI60ESXe20fyI7omIXS1GmOIWCxpAhovZ7PP7kdoYpvD2nkao+uc71j2IbKVYPPaA7Jh1w9wOde0PlIhzzqy0q8fanq/9LHBcdD4ih7vhXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758079194; c=relaxed/simple;
	bh=Gule0NmQCPvH0/ih5NilVQR98VsfZi+lezkC6sU0rko=;
	h=To:Subject:From:Message-Id:Date; b=SeYJRNEHpLT/ELmr+so1VXzuTcfNQHIEloHCZiaCg7Eb1RS8rA6vIqlNXBkBFTLoacrrSkukxWUS2uxyjlOor+0BFhuGv9m/OtB9t6YRVmJsB68GvElABRA8rpAqs0IUBZJ2iz1VwLWbdpiH1+VFcu5cYODlpJIEfsnOAtkhaes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2lvYse/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2lvYse/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7DAC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758079193;
	bh=Gule0NmQCPvH0/ih5NilVQR98VsfZi+lezkC6sU0rko=;
	h=To:Subject:From:Date:From;
	b=D2lvYse/JLZskKa1/Ft6Dgeev8Ho/m1koU84EWTKU3im7LyuzQWui5nDsASBGIp6f
	 9YT+oVD7ifN/KXw6yL4aKd/F4OOUADKsWwb73f3hvvdLzEbvzlGChmqXPC2XYUPEPJ
	 0hiKDhgenvcHVs46xXptiVhufkkgcuO7I72ZbvrsjPlxD2qYUMYgAqeZTC/u+8fUAD
	 Btp/Pow5hbUwrzctDFH351suQRB36iZ3xbTiTGSibiyceaK9tYkc7lhincoKJ3cHUX
	 leRb+ZtvgYSdtb6dj/TokGol/HcH4Q0fMSGn8qm6k16CPqiLCRgc2/TsXLafqLGsHX
	 dj8fF3mqLQRnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E992CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807919357.3103.9300389031870528502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6119041cbd54346a27941f82ad1e40e99f805372ec5818e581e00b18ee6b3336
Date: Wed, 17 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758079193
