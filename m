Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3698B1D61BC
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780319074; cv=none; b=XIRbya7ijJ65D279pmgtFn43nbisiQPOut6XRrcOxtS1SPnaGJEViBC+6siHPSE5B7EUtajyGgKX5r4VNE+3wP8ll2+2Ny1iHpJZ+I0Dyj1jzchCIXdvyPpbVasncSbWNhbQuUG24Hd2cgtPHHBudsXtcBd0iYxKmiWqSnf1SN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780319074; c=relaxed/simple;
	bh=UuTCqQ2lxw0eBHM3Svvsag/5eQYNfTmaWXGVwRANNTk=;
	h=To:Subject:From:Message-Id:Date; b=Py7zblzsf83QpzTs4sfOsi5ZSoJqUe01OTzL9uzIOvMkiZKY22J1vkhw2DNKD1A/+wsP3y1ugGVWrDUcEUtPfP75TXOJv2UQgHlsZS3J/bUl1XC11/6Qpe0PdurblUCqbfubBc3W0ZqeQjImqkFCZYoxvmnq41mK9COf3NimrRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8pJik7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8pJik7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD3BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780319073;
	bh=UuTCqQ2lxw0eBHM3Svvsag/5eQYNfTmaWXGVwRANNTk=;
	h=To:Subject:From:Date:From;
	b=O8pJik7GWv3UW+sYFB76Bew69gmn/ticUZxiyXGvviJk71cWAM74/v+S9sJpuXQL+
	 l2Qzv8F3LnnOLXbA4IS6EzKA1TPscJKjLqSoW6chSO7ryLc9Hvn8MLgo+9rSFTEuOp
	 pioywbFszo4VGqOkOy0s1KBSo19NEpWxTR/lcMIpPb3ltAPOLe+65Jw0Y4VQHYbd3G
	 Um34aPcpSUwuNmuBgMF04tw63rUqdAn0B8ihrZl5ojKTxbsBrSU/fm1bajCE4fDgb/
	 2OYHYBQ656LZ8//vGK4nEic+RBTLPZbB8/QVpR637FHvlFxZjJgqQ4zYCPSmaaxakv
	 VmcdxIdnoU4Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4CCCD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031907371.23178.9751923855332840422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df9ddef2c6798b02070da745ab3b91075182d74ebda364da379fd0e4867fd0e
Date: Mon, 01 Jun 2026 13:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780319073
