Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CA41FECDF
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744099195; cv=none; b=Dp6OBVv3CsdIk2lG3YTJM6aqSo+hr4iHZfHXFTLcIaJLNLfzbWLkXITWecqe8FMwsWvNEOGGuv/ePDi/S3apGLt4nZvWxrzqb4KTYhd7sAngQrUlVWn5Sw9PXW1BTSch+kYgTXGMFXHzxin+9HkaBEgfzu4KETEsI3BDs0JNoPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744099195; c=relaxed/simple;
	bh=TZgxau/keguMSBhUajpM4cuMC7+tnWc2ZlpB2p6i8OI=;
	h=To:Subject:From:Message-Id:Date; b=gBd0CN9IiISntXbkbGjUHgGfS82kITtUHxeHsymO5sTDbbDh6eBSaYfEt2gEvB4og5alMoBSFOlBlDInMTeo1cAmQb1I2t5j4bZkyRuxu7CWneR/akS6yyZfOhPNsyZX83Khxw5xzoLDU+0iscgQDak+GQk/NytYFSsFZZHfg5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8gPgrdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8gPgrdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E5AC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744099193;
	bh=TZgxau/keguMSBhUajpM4cuMC7+tnWc2ZlpB2p6i8OI=;
	h=To:Subject:From:Date:From;
	b=U8gPgrdJM/gT+dDLQZpvtNsVde1UtVUt9Zrw3tTDeeT2fSGZMlRur8UEtboVqu+ro
	 YlzkjJcHUDbmFQM26+I/1IPHzQuJGThxQZ/Kg87Acg3zgVNvcfUkr4sq/45RoBU5fB
	 ahg74/9wWhdya2iYWTPRPKSuTSxBaZFj15b/x61bnxL0rFxMsnMTpytiOeAhKmxkEc
	 eVY8GZcrwGiqvr7+9Po56aQ/3HCYx0AbLimFV+0r+AKAw8Y0vcLYYzW7XQyHGhNwZi
	 +aqTb3r57RquNNE62idraq0XZdLw2KSN0VfcwDVzei3frkIxod5JoZcNwtUjKhpSzn
	 PVD4hItVsDtYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C29C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409919359.28550.14874182393404635269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5991e59e577917e2d4dbd2bcc24a3b2b2b9c5aeae741f356261271110170de09
Date: Tue, 08 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744099193
