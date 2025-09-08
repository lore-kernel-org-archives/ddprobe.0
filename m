Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2465C22B5AC
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757312995; cv=none; b=JagPdIrkAJ/tAqbFLgHmbxwmn5950yyEXNMFgkCvOvdzvbD5cWcvbl98JuWD0CHZZXGF+23X4P8rgeNK4j2MQxlG6tKA7C+J3h00pS0QRKWHJ+QiEbVjbyGBnIAXwpdtKNqyLBAmf6HztUm3PiHo25fMojFDeeORoBfu5iP2RYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757312995; c=relaxed/simple;
	bh=ui5bnRNVGTHnG2o0kCGSSvPNVmsaJXl0dUDGWxsDWj0=;
	h=To:Subject:From:Message-Id:Date; b=ILzP1bBEgtz2pL6buDuRc9+3e4SvNr4S5u+AmcMD8O3958gzFu6RltDQavVrLzu7xiNwtZMOjsmKLxRLXqJke1967emR+EwwWJmRxTdPKoKrb6wOUocZNkFWAS0cjvCCkAwMbUkbReYMF3GZ6hhapNI6urU4TBDxR2Iz0Ofq9GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOPlhdXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOPlhdXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B1C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757312993;
	bh=ui5bnRNVGTHnG2o0kCGSSvPNVmsaJXl0dUDGWxsDWj0=;
	h=To:Subject:From:Date:From;
	b=AOPlhdXVDjAQEGjSWbeHqvnREDE4xsHT0gPBwM+FQde69sCZPeQ/qJxSWNqHSsXVl
	 TdR2mEp1XbGwh8j+U9WRFKV5jO+2f1zpmz1Tke4+fB/clDPM7uMjFaUCc1oUfct/Mm
	 ZdY/cO9VXmqy3raNZowJODB76kgO6a7qQYTxyeD9BDTfGTNLrYTaEGWRN4YFfSVqtp
	 loQPBp+W27cnUDsvMcA4AHKwOs3rzLjCON7/xldLMl5dCs5QYvuyA5HlDC3HG0LxTg
	 rBodKL3zWKFTcVKqPMHcOy4gIc2VCvmk/IW10F+2rT/agzJzfkBZEnC8efEZDSvUrM
	 fDYBMqnZz0pQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9391ECA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731299358.13655.14071117203391077159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8417d7ef9487a0ea87d6b54da2355c342c4a6eaa977b0d1587db180088e7a7
Date: Mon, 08 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757312993
