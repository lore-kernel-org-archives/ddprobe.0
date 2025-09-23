Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140032741C9
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758663594; cv=none; b=RsZKH16kskcq0xnUckMcYzER/h2R8FigSuRKN+i6VPsZLdFhZsvHiNbmRiNwix2H+f6u/WPfWQeAYF10VEibn/r1rBRxw/SQNJzhBMS3KR0DFo13EjlW+ESfyBaiO+kRESiSF98X5h7v3MBkUknICt/Vz55MhlLCiY9A3xDKzbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758663594; c=relaxed/simple;
	bh=uFJFbkAF8SP0pH/z2tQDiwjmZTJTaU/heRlSKe15p4Y=;
	h=To:Subject:From:Message-Id:Date; b=Y7N/q8HSpC77FOB0Irvkt0YQhVZ2oemgE1pYpuejbecvZ/XhCrbtwGG4aBXSWTN9YylOtfZI/nFUsa9fG0RoSxquPG/xZPnrQVz1x0ixg+p3Hn4+hl6KJgKt+dtRpkeUg01YEtEzugqxpjEX+rTi5OFRPk5ryBlJbgsMkpLPN7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR9itZey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR9itZey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A884CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758663593;
	bh=uFJFbkAF8SP0pH/z2tQDiwjmZTJTaU/heRlSKe15p4Y=;
	h=To:Subject:From:Date:From;
	b=FR9itZeymPPVqoGbF31zyUX8UWd8gBDsYs/UbfvCRrmXZBcZEubXF121AHvoHaU7I
	 M4CfgZk2siOT90GNZYjlSvxY9vnnsJAYSiFyhRYUm6OA4N0rznHZdUgh1idHwOSqOW
	 OWZr6ObpY1ksiC2vpxtCsQFiIUx1PBlMOd1nYSnYkq3DdtHLffV61GXtGVkqu9aA1b
	 famgW/hu2+va/ifHSGr+nAEkJuVLLUrKlwdJKd163Oz2r0iFfg3ubEK1X2iGiZmdET
	 Emg2Fn7YqOHFDBuiE9JZ0pJ4BC1rwgv9Vv/p7FoGo82cdbLJX/rKGLSZiRf65DqvP2
	 s0JoO2Zpflltg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E8ACAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866359358.23107.1851718640527801974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7794b1b7496eda4161d6cb74faf27d9284b1d23d2490fbfa186e1f7436196bcd
Date: Tue, 23 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758663593
