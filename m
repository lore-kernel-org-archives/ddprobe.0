Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EFA6FC6
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709003897; cv=none; b=TsfcDqQ/h7kcgg5iRqJsChhW1UNs1muwvmw8R+Of1elIrH2bkOa4nQu+njIzOUXuFns7EP3h2bSXzeD2t7Fv0jdsXha6ZM9khrr6QKCDgaeaNNFrELOdZXt1D6r0hpvJKEQNIyMN7INKM/x34HdXFcolqyEurCscPf9BGSVHKDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709003897; c=relaxed/simple;
	bh=yf+G9IDaHokhsMY5dH6uyiXLJsbcereCP34xKYVjx0A=;
	h=To:Subject:From:Message-Id:Date; b=K6yNqOcXpmBwfOEqIJpexgr0+IVG/CsPAUc3Zb6lgfJhre1ReXqU/fTt/aDoovHqdkdGpwF9djDJf8KsX4ki2KCIFo8lUXba2UK+LEHcyEv2Q0/+KKjnyvBGEGhijfZBQLRhHIxzr2Zcr93/YdoEOzV/LSZbCKiTD6l0m+nAf9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2IXApCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2IXApCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BCCBC433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709003896;
	bh=yf+G9IDaHokhsMY5dH6uyiXLJsbcereCP34xKYVjx0A=;
	h=To:Subject:From:Date:From;
	b=K2IXApCgs7uEvQTLKwl6h6QRB9z4O4r38C2U5b5070kBb0XT72PsMuCpRH54jJEno
	 GvlrwVv0jWfKWs8DWUibiGtDmuhJ9iVGcRbWrsS4NtP3ELdaZzyhKMNszREVvCah/y
	 HQn6lSycm00NXzD1tu4bJ8DfPmvToB/0Ym0fc2GGZNBA+eCsFyN1H8VL5Lzr1kTD7N
	 94SuE/vrYxiBugVnCcpxfJ231k/pnf517XSYZ/79QnqMrTZC089Fv8prNYur9zP1xA
	 X750CAuTfyoQJwpua+10kumw/TL0d61zjMxCvTmSqahoYPGF1GKLJYgQt89Lro40zi
	 2iLPNfpvb1+og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A4DC54798
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170900389638.4338.791077598443452918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc02c0c2a8e4c99c5e182fdef3137e22f223ef780ffce286ff93fe2dffe6dee
Date: Tue, 27 Feb 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709003896
