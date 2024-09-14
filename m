Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C96138E
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726274154; cv=none; b=dxik2NGZC1fqbu8sTeWBigP8CIXMC/W/QR7QADzMq/f/WfN/bb8aIX7LdOSRsSMtF8s98UUmZoNfApnhrQijiJohRhMhGQU9+fGO+wF/rwIJMYD4WhPIWkHpHD6gpUI55IV0jWaMsQsg8TkQ+uzpKDOX2+Rm4BsUUiI/tGhE3hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726274154; c=relaxed/simple;
	bh=w7OtM3DkdbLudl/83ycwkbV4dBvNO2PCI0U7XwXoKFg=;
	h=To:Subject:From:Message-Id:Date; b=GlL9muPQu+raHm95bZ1VXry6q077X0iNTXo5lN+6xG8WbLOEg098woL7j0m6PKxYH6tOHbKUhAWhLGcTu6MSm2G61r9wvuosEuZ7MiAGiykhUbBRd4Fs+TVXkMP5Bn5vwuBsosGdFP63B3CCw20gCPm2td3yUn1sNn+x2cr84Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCeRzksI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCeRzksI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3789C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726274153;
	bh=w7OtM3DkdbLudl/83ycwkbV4dBvNO2PCI0U7XwXoKFg=;
	h=To:Subject:From:Date:From;
	b=WCeRzksIxPahq4jOnCciDFk+RcymKjE3wRjfDD/ihti3wg1zbo54J5BlSbEGvLY98
	 p+2oP2ql3/FQYa5uf+pj3/Nb7dVYv8sEdRnyvWlcym3w8ZR3G5MaH9pcj1ivASon39
	 rgWw2lgLgsRyEC5TK2gJ1sOGol0jZQoCumh8fgCqT34iPVXq0WU6A3Xm+iinlWEzhq
	 o7wgl6aRYd5AVtc7/R91mp846WKAErfIbqb5FZz+Ny1XI7nyd+O90wtOB12GZ4zmyl
	 7dtI9lxi4W60EILikpZ13VxRYlmQM51fS3StDaH/e0Fl58Tr9YYpdE4Or49IVM8LYt
	 U4F31MtuYuB5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2971FC6186
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172627415365.18613.5919058996319370847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e21ad0591f11c4cf0e0e026caa140294da2a5f02038c8d4a9b247849b2e7e1
Date: Sat, 14 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726274153
