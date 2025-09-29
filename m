Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D683043C6
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759157995; cv=none; b=o+NOXGqNXXN0EvSnThDeaAS8IOByekcon0EHy0VtvQ6h5WvVKi4Zq56z+UdEgimqhBCrKVpSPe2MZ2ynHD84eFH91fKGZFB/aKGxxZTp8EI8XnNQoP32e9eiw8RBymDzHOn2LnahOUbC/ysvc3tnCSjJxvdjMDc3G0gTSXdegNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759157995; c=relaxed/simple;
	bh=64y/k2GVj1ZwYJctRnua3qnJIgWCvFiZHPTl7jx2pzw=;
	h=To:Subject:From:Message-Id:Date; b=qNgVV5cD6ZPF6rxOuObWsLqTV9NtCHuhEy/zYFbW79UHZvO61Zc98a9FoJWn8vZq98NFQaH0x8XuO42j+YdIY/UQIfXeEl5aWD0tzNb16HyYAhvs0CIoSm1BJ3d4bcJWTSIdx1K7MdHteRWiT2S65PNlyJknSSFh20G0pddaJyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVdQKNMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVdQKNMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F587C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759157993;
	bh=64y/k2GVj1ZwYJctRnua3qnJIgWCvFiZHPTl7jx2pzw=;
	h=To:Subject:From:Date:From;
	b=PVdQKNMxyc+ppjChyF1BWhgbs8zZVQ7gYkm/52GB90RMoVQDKDxSDjPS3naF46PTX
	 /BoHcpFGirIS5hblhR9W4GebQxJJrJF+MvAuUNGYlaKk5WwdEHaEeQ4fMe0ZJvWVrg
	 9xLar2K/uLGP4fmzBR+dR4tklMm+WiQiBvb5N9g/y7XMexlyGUAzhm3zFD4gUsx3Y7
	 n/nUFa9vxRGieT6IHEhUin3OhfynhMUP8W9Pp3XkCPHCMXh7JaUfm7EGPbk7zzZ5cN
	 7CtlJhINPQWmWd+ePt05+v/hPcK4pp1mC55eo/cHNUZ2rPuVxlthD+PNvW0RtS0OnS
	 dCJvHxWx0Subw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049FCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915799358.28911.9442477422989125903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c848be5aae846febae149c2c558b3ab0108551edc9fca308fb1787b7115a7bf4
Date: Mon, 29 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759157993
