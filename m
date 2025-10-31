Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BBD24169A
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761950394; cv=none; b=CtpaCYftl/84VR8qzp1HfrX3CMPIJKoF0Gcb/CkW5zUpPKO3SWR1g5Kv53svhkehz/CBVaYMCCLlUMKJrOJz7WQccoRU/V2iCOEjRaLXxDEkD9xUXGv+jVhEHCYa3SuVcgKA2zrTLwguEzzwK15BEv7Fo+Ykzgt5aZYtXrfvb9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761950394; c=relaxed/simple;
	bh=OE56kRE1S9Tty7esRTPDsNon5UpDmOdtiFqB0RLA9Z4=;
	h=To:Subject:From:Message-Id:Date; b=jRFAwgI3qM1RQ55Y4Bd9C18vsBrc8l7+HOYmxxtxNP37nBgQVucwUGEtpCS3Az1ddpHdNuVftoToha7xlWbgGazREaBGEgA23UDZ8LfS4iOd41pebFTURcYH2XD6hUyo6zfm27KkxukT5tQ+Y7Gwl3Xsr/LE/O4+VntjMmcSaXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8DzqCA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8DzqCA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2253C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761950393;
	bh=OE56kRE1S9Tty7esRTPDsNon5UpDmOdtiFqB0RLA9Z4=;
	h=To:Subject:From:Date:From;
	b=d8DzqCA11ilrt5Hsbq+v89IOtoCbE5OqlvDUNnXtuxtUN/k2fABabYX975zL+2QFG
	 gPmTyGDvHOjzHYsPz6OSxdmnz7E36Iwfu4+T8iHlUlqLyflPtyf3lsZrbC5VG4B4Uy
	 lV67gX2brnVwhHZqUXPmqeS4MHwvsOXjSfCyJXSWQS+WbQp9159+jdwnC7H/ToWcbf
	 i1DECnzyQFZmVi8N4sH1wCta3lfFxon9A/cdlgL0ze8kMen3OzMMyMfMRpPGgOsMSn
	 4Euobt/cJXHJgDBlKrCjNVTKRxkknjl5HrRKNkCZhMEMK2HGwM8namZgbVvc7QDvAb
	 veIFMsDAutx7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91403CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195039357.1205.16104325376419819247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10238d16982d1033b9676f89f5f7665a1bb5705a3c51824a217a769440ba66ef
Date: Fri, 31 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761950393
