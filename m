Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F472E401
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734321954; cv=none; b=ltRc30P9vq/U+BbTazVS7CWle6LwNp9/1jajOykRNe0ZN9YD3BJFXTzMmf168ToZhhe1k5oGHX97dF7Fl59BslsUhGsIzFAtItXpIgdO6tkvHHSTmhQVkDu0NRlp8N97VQfXWFkp0F4ELtox4DL1nnNmS3JqNjFynMBSP7Yib3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734321954; c=relaxed/simple;
	bh=M6YT6uVfopwJ+knlNDYfqzsQdcyT5EWwhuwymXD8OVU=;
	h=To:Subject:From:Message-Id:Date; b=Nd68i7n5PGBoqmOnLDQOhIYGFCTmqpxXKL9LmF/pRH2M8ju/au7U1Djo2Y68jxFPqzR4cwd0X5n08FrtQb7e/l8qzm7z8CW9vchJVGDNvZ7bZpJ1IFw+u94RV50GEvPhNhwTQ12WokxUUB4RGVG5dIWA1ys2kTySBRImmCTFO/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byu7WYCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byu7WYCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC84BC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734321953;
	bh=M6YT6uVfopwJ+knlNDYfqzsQdcyT5EWwhuwymXD8OVU=;
	h=To:Subject:From:Date:From;
	b=byu7WYCcJKMefCGw4A1WEDslQV9CpqeTtBJAqHHptv/hczNpKaUAvbFd3XV64hG6g
	 SmxrKUnAyJiIlZUNhE4nK6/MPHVrPPPk+8tPV9Tfkx2lN9J+xtH2zPZb9jwCff3Sl0
	 DBw7rbOysSCP2sKy2oeN/IqlB5aeDrlEOcGyOD5wQrTKbDY72LHkvndJslNV/yK7iE
	 chmizbrUnF7AB9iitKMtPVE2Rb4eFFAzZDgEW8C/ddE/aJlWrsatzJQYExbzJd/vCa
	 P0sGAu1gLirjpIh5xqvTz16YZNhtUH71K04AoGqksXTTuFadJlxebM/fhDVf3B91Br
	 Gz+8uv9Eymc7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240FE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173432195359.21194.17339630718663991482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aea0ecacad0f5f1903a03cb7074aa968eab7ed4027346e35a1756257b633253
Date: Mon, 16 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734321953
