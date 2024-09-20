Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439723C30
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726794354; cv=none; b=N1USuGxU9u/QaUx2FVOvpZ205P0skfRnUwCI5i6ytzQ7+38TOrnqHJcrQI59dF9tBMrYfaX9J4ZDZo8oGCxZeGr9IDJC7tl+aaei2kqdosR/EC0BwZOhryxg02kwwgJ/RiMQc9mGb3q17Eb/S9nMPcNFstn0yoKI+xLHN5sAhtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726794354; c=relaxed/simple;
	bh=DZxbSyilc8Bscoc8Scs4B6rLMYv4q6rG9IMX0mRN+pQ=;
	h=To:Subject:From:Message-Id:Date; b=VAwdQt2ZnzvhxTq+dViREayLUsl3TYTa1eYXkwL/oToVXwsXHgcvXodS9BG2rNHwLGN+f3Ur+7Cetbd0b9f8gck28B4FMA0kS3Xc/2xWrfC+lQeR5KWcW0vWfQT0thF9Bg4C7z3Y0ssV82yLHAA0XxjNSuoOKBggNYZ0GP45uos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbJtiKdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbJtiKdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7160C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726794353;
	bh=DZxbSyilc8Bscoc8Scs4B6rLMYv4q6rG9IMX0mRN+pQ=;
	h=To:Subject:From:Date:From;
	b=cbJtiKdYtARSRkn/FgNtdvrrlYKaThyJsje7jsD8Pzr5p7jVQF8efxrUEHs6Gau5c
	 C9MPiLToKQDm/0aiq3Bfy/p94itroIZqxdjz5w66TfbemzNa1o6kmQZGciPHCjHB97
	 mcOWnUGDkscoBVFWe1GZv92Ltqm0fFVtfW683tz5BgTKTheCDO976S0KdokHOmBffU
	 ZRTqpoTHotq8P491rA8kQM/mTVI3bNzd3G2sL+zVCfGdbSD9qkn6w8v/SGieTBzpKA
	 xwww9f9hgfhh5VBqoucg99hc8QjoTaQVUHe+S/gEv4xEklpR8049bpR/fm2EEBooIh
	 EqEYJRHoSkH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBD4CF397D
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679435361.17036.1448673013520447490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40066976173e106d497966efed5c45d3658dbf9032edc70535a630a516229162
Date: Fri, 20 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726794353
