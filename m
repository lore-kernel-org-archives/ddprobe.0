Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171551C0DC1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711773497; cv=none; b=NQFoUpqpvCyuKKzV7YmZB6QkMMNS8ramIaAQNyf1/0bzrKcFiknl3eTiCmroNyat821qXiMGWFde6VJ9iwqhiWI+1RcgaA5q7GKIG8TE85qsTn5QLOTzNqRrSDKsuPhQs0tevCkaHKPuAOlyGh7weYSTgigOpLnADYG8e0crm8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711773497; c=relaxed/simple;
	bh=7Z4pYqwX+YzWFu113TvINEfLtUBoyw9j0/AnVFlzXA0=;
	h=To:Subject:From:Message-Id:Date; b=dg9mfcNRYer8i8yBxQ9eyg1Fxi8/Rxkv3wKCzKj2HIN/wb1wJoHoBpOZFC8uHuN09h+AuzJSB0kvXJkQWuiNRPjaCAXtrQY9P2eEHDfRzAeH1R947yJHvlSuVA8ov6oEUqgwtBWHqzRIXY2rlBpuQCBk7heViBaQL3aHKM4A7ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LH9vnljD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LH9vnljD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8774EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711773496;
	bh=7Z4pYqwX+YzWFu113TvINEfLtUBoyw9j0/AnVFlzXA0=;
	h=To:Subject:From:Date:From;
	b=LH9vnljDSdsy6Q44/dqVPfsDCTvedIkPMhowkeXBo4o37vnxEJUWTKWoZd6E/G+RH
	 1d2jO61/VHeJGL7mS6hzGtmbl0F7qdIWFNIZI0J4ne2AgnHT4v79z3MlIcboDG6LT/
	 hRTFWidpB+F6eSEC5UWd4KCPi6SFWd7uhGt7q2RkrhamTFGdKjR1/sfo4kNNbZS0mL
	 +TI3mQALZ36dbp+KJq3G8O2P/HpO1E2+NtALDI477zzZjV8wvpN6yHRNw+kdR4Sq3i
	 4FdvtILVcG3szrzWzOE1cqXISS54FtnWZGS9EbGNpH0acJjWq9IcKbs+AES563mfLP
	 EUV0Rrz4fPb3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70126C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171177349643.31279.5323038355733999170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cf088153995764cdd1b4ed9dcdcac9c274387124fd4f3a9026f9e531877046
Date: Sat, 30 Mar 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711773496
