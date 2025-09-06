Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1796413AD3F
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757193594; cv=none; b=WlmGVJJFFapRkvSU7sEOcUkHeu32QHtM+WV5brbqxJymfPD5OuVI9p/HTidngKiWtjrx2wgmSmqk382P2BNC8/PaFm2IFYBXwlxcze2qJ8FBoD2MuR4Ztp8kFaGILaGDlBosmWWd6JjRcNyN31UCsoQUiikctm0GO91ywP5M7kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757193594; c=relaxed/simple;
	bh=7Hxy6rAxsYpqKOwvWytJuEh5yxvZuhilZxESzK6Ntdg=;
	h=To:Subject:From:Message-Id:Date; b=Ds45WbhuqBRFG2gcM0V1/g7AOIGJRMKrBqSx0R4Rqt3/2zstZpEHWU2f/eRe/wc2TRaQsm8JhLsEgg3a4hWcKKkWfu7I4Hvee0pFVhe1O4oNngXnaLkwOrqjGWo0cbwaM/IWjYeR3AV4Kdpw9kc2pBOU5RtxO7iXTZFLD2Xb/zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG2bJw2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG2bJw2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F79C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757193593;
	bh=7Hxy6rAxsYpqKOwvWytJuEh5yxvZuhilZxESzK6Ntdg=;
	h=To:Subject:From:Date:From;
	b=uG2bJw2j2AWMwmVHt8N87iZ4Qvi0c+9P8LfCMX6zbnoV2ilJKpuBVsjAYC/r7YDk1
	 PBjTm8fKlsGutWVxwO7GzgScLeaEl0+lWMkXuJutGR7BAE2NYulXQtUr5sH9FnRqGw
	 NceGSEU5L413JBzsXakKkGugeLkdPdCp4n/99weN5Sn97S7Si7uUC9tGrhNvzWrFn9
	 4c08KoSmMliTp0PSxj/TgjnFsct93xfL+cV3ZDIRNHFv1WG3m+U4fGMX9b/83Fnawk
	 pjT3XWGwX2BojMsbWOE/1icpU2y7Zcke/86Iq0OO+V8dfezn8awXLPz8+y9AKHhnOx
	 D0A8fMkYkJD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE15CA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719359357.22644.13199611496632350049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b891f240bd60d0405073745af9eb0c38e6486e7fac57208ef5f44ee94696d0
Date: Sat, 06 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757193593
