Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C0923A9
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739635734; cv=none; b=Kd9FJVDyx+xBg3Ab3V9CaBEFjdiy24tAmhJsG9e9nYrKAbXr0o0Olf8SEgqYNEcfwuNITcHmnCKCG4K/b1GRd3wtzkxMLlFL88PqQuyGsGPbj9gj2ZlnO2d5jHIQ4rIQLCtwUmOF3rBxZapWNbLTZw+nGlVjOuS9z+oX1d8CO6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739635734; c=relaxed/simple;
	bh=LMZ1NzDdwTGYH+ouhobOLpkqFz7mSN5WjimINHmg7GI=;
	h=To:Subject:From:Message-Id:Date; b=tK32aFDRwofubfeJazQk2ZwhH7aVZG5VsStLjjxAwz4OTgNgAeXq7tdC/SO/Fxfaz7vnuIBt9dLVadjQN86/mwKBflH0E+umGGclioalcQrxIgp+MKJvz/W57naw3qj/grhZFoIIptPDkBFT+DMvamE/PY85hXkxx7szTx8IL4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry5pSmXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry5pSmXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AB9C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739635733;
	bh=LMZ1NzDdwTGYH+ouhobOLpkqFz7mSN5WjimINHmg7GI=;
	h=To:Subject:From:Date:From;
	b=ry5pSmXENlVa+H2tliXETqpdoFusHfCzn92oNgDgUbRhdolTo07o+lFpkoVTKKy1D
	 ZuECLRfa3pDj83hayCuBDxq73/+nJeWddACBYd1Xpv0ZDwMAwh8XnWvhFuwgYJA6w8
	 +J2uCq+oniRFMIsWLmkScfig6Ia91K7lkEZmkFJ2v0/gMCPomoOTdpInJtDz6rXdLo
	 C3Z8cnN5jupAZNwjfWRUNkFvGTMCpQ6QqVltLN1BaZl7VSwRGLES3Oh0Vqg936J5LI
	 fFxQc2B+9i9HtsPd4/MnTOGk0Y4N4OgvVYM+XTGQY/5xSYx+pr0obFn30l6kqmJkF+
	 hPGeGr3p+zp3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13BBC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173963573360.13564.7489139503276067694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90c9c70e91db38b3f6456c285d896d6ff950f6715d6f60e93f3a0237568ba68
Date: Sat, 15 Feb 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739635733
