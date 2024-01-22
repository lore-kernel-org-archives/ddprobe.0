Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F6EEA4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705889897; cv=none; b=dCDH5LJoZcvvayIC45Rwwi0sKts97i03cleI3ZxTKO56rTRBr9vtWiq49K1KhR3pgXsLtGrBfd5ZzIkEYIQq9pJe8QKe1V0tlDgARuGvEUV2ZpKP9WwiQY48nF6UkVZDwBUWsAjzs3DUWWl3gJaJfnu6bbYFU40TyyoYN5ts4hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705889897; c=relaxed/simple;
	bh=wvzzbbEi113CxrTHZOANgTSiluIslXWn2wf6ZjaZ2H4=;
	h=To:Subject:From:Message-Id:Date; b=fKipraLjoIk1bBH2pKGT9A15UWfJ/n/oWdD6+wFPZPNUC46/JMqGNMt4tMcFAh1izk68FH2Ix6agTfptTRWlu/9cyM37pBnDmOX1oClOnsfCDVbi/WW+vTpC3VvFGVK4HusNFjC/7aqyRznTC/uF4rJXEOy3iUxHzIPEjosxyMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+4HSTEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+4HSTEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7161DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705889896;
	bh=wvzzbbEi113CxrTHZOANgTSiluIslXWn2wf6ZjaZ2H4=;
	h=To:Subject:From:Date:From;
	b=D+4HSTEJ9IVraWkNkCOjJ/vzVrCJQOT8Ut+TiUHFuTvFwwSwsTgDWHpCRnVRx/J4+
	 5CGBDgjiwiJIkMRZh4hc9hs9qnVB29rESFtStE5U/stKgwfZi7Ne/F43G7sdg0sNsG
	 PbbRDgCte22sCUIe6mBuNjartm8BfeNDCeexcRRWP8rZYW0Dj38Ze4j8K2XOocZm3F
	 T0TpW8yaZdwfYOCS22fXoffNk6bhUNM2vyvZ2pT2eoSjrd4u8N25ZjcbneFoILUIrs
	 HazBOnKiS0NzO1wMVi/BrG8ynce/d2vJ905TIlCeCcBQIEjTFlVG21WPkNz2isZUY5
	 ZKbNiL7seUorg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A718C47422
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170588989636.28733.9135033978286761352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b708093ad1684a5bde732d3495829a556fc83e6e2df1dcf379bd719030f961
Date: Mon, 22 Jan 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705889896
