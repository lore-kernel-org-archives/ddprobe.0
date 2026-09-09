Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D182C08BB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788916234; cv=none; b=VEXn2bb2jfNRrVrQHtu0zwtCFUczrEtA53cLRgSFQ+BWuVTlKahGZoTyoA1NnuwDfLQKGuzax/DxCIiGmcd6wZroSF0NBUKizIQ6Bry2QwbJOpwR9XFAAzZEHKTfa/urmjJys40awiSRAIjKUpg7fHsb+7j+mNbhPan4CuXseo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788916234; c=relaxed/simple;
	bh=QONJqDXZMVrIsfR4c5XXIHdiqLcGTgVMux5IlbhXeew=;
	h=To:Subject:From:Message-Id:Date; b=XLBYUoFO968Djsf/P29N46FzjwQ/hBq2SiuiLPTH1HaTnaUX4rZ5NanfSMnSCJXMF9A6B1pWsD5VS9u6K8EpuY9gcPAoja1j3ifu7rec9TpriIB1uPriWgpt+cmxy5hgcbtNp2LT9Ss4kOUZ+po9gZBNH9WEnUxYti5meGAZajA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bln/8+Zp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bln/8+Zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA8CC2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788916233;
	bh=QONJqDXZMVrIsfR4c5XXIHdiqLcGTgVMux5IlbhXeew=;
	h=To:Subject:From:Date:From;
	b=bln/8+ZpeRGBOKa8QRQzA/AY/mrXsybokaxpgqTCdO8vTjTTUUSsP4X/8yFoFsztT
	 lCow2Wew29PkS8P75vSy2BCKu2xN++6unJ+JwnzEaPO29RYP66AMKTuRMIyEG2g8hK
	 dV4sYwKc28TXXcDp+AeI/41S8dpm2qwV6sN3Hu7YHtJ+R3GWeab8O8qQPMPSv64xof
	 JHn2vTNoZOqIgJxuswh7dg7ecxTy3GqfUwQhNugktWogtBrOxC6tIhQ3kD7y1puaZ+
	 +EoU9xYlKfQ4w1UIqMooopf2Zjt4KzNFzuPAtyxLrilBaJfOeRYTkvexs+AhMJhWHh
	 9jV6ta3bgVzsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FFFC79FA1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891623368.27259.6787588220766706480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2cbdf055a769e4a6f7557a902779edb5e20293f7913735eecf2eae4074eb11c
Date: Wed, 09 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788916233
