Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B731E515
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767487434; cv=none; b=rl1KJHtvSSvXoVTyYXxbJlC+3Oog4nD6/NOaz67LTlBZv/gZtC+Kr9XCP+ebpWHGJi02QLXovvD9x19mmh1i8W2nZuGr3xGt4eCjUsdXxYSxNpTHxNDZvw4KSrKo9riw0HmlFlA6R1rxoMBJWlrICzTl7QGz50T8HvZCmGYt5IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767487434; c=relaxed/simple;
	bh=Ugmm5LApe/AW4L8aBwq6xF2l2Wt2qEfrdySN350/BKE=;
	h=To:Subject:From:Message-Id:Date; b=pHac7q9CsNRfqxQHvkr7njLwlcKTaEHbTs6cKTaXd7MffK4thPJMjuQ1AqnFTxWOPwZMoNk2QreYzhD1VD4izfIULNK/uNIL3sRvOSUowUsdXpjsLCFeB8dSOalIzmo779rZrpWIStHgG71Rf03Pk3cqJFGdwfb6rLnO+iUGZHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtnnSVBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtnnSVBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A582FC113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767487433;
	bh=Ugmm5LApe/AW4L8aBwq6xF2l2Wt2qEfrdySN350/BKE=;
	h=To:Subject:From:Date:From;
	b=YtnnSVBvbaDT/YumJnpM8tnSt5//dsrxLddimQKmhMfB2Nu/mv3aaDEhl55mAmTVR
	 vJlvps+AmZf2Ak+idKYE+3RWrfAAmfbVGq/0TkF1q0VuPFze+wjYzredby4MsFPikr
	 lmLBL7EGNC9e0LyiNmK4AP9QoOQl2xRzw7lw6P1GFP4orr/M8dgMahfyEHP9zSYmSY
	 Pbbx7HEbrDipQ3d7yrdxXTh3QbAxpdATOWfRgseObCv/2Hr+ZmvpUFEzZ9wiVCwcFJ
	 vPttjUoIHZLeBmL0Uka6jJ63YW5e3sq5QJntb4BJ/ODnRG+3bqfyYJo8rkizlY8GuM
	 rh3iGiYr0SR8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943EAC2A064
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748743357.23837.6406689247083623879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966781b2debd3b0af7c862ecd3bf031ef5f41b4df0bd08b3180ddc298f0b1fd7
Date: Sun, 04 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767487433
