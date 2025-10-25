Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234F027A461
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761429594; cv=none; b=GenZDjxoG1HRbJ+9qFiJCxnw/CgiJ6z+Sf+lZoEhcspMQuoLId2hFJpV0ociKeshtWqUTqkuTIG74Hdgg6ZQkopQO+mVMZoouc+wbOkWfEOGalLS0i6jJLh3yXLg/B6RtTadZQnpPEe382NyrbL5SyPVpAM/8euwHVy6ECiilj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761429594; c=relaxed/simple;
	bh=Y2gReTVlu/tlNGPYoMIhgqpD3NAka7mevFTIHH25Mbo=;
	h=To:Subject:From:Message-Id:Date; b=nm8UybgrdBqeke6dzMrRqCQGXxFVb8weWErQ49SYlzi2t3fb7CwKsuzP+Vm0XRAGw5hh4VJ7UCwPUm6QvDEEZdVL2kqgfV+SCZPNfAUd7hVBnnF171ZrbwV4TKBUJPb5USxekIPpVlFF/PgieN5T4efeRftlZydT1cVwGIZCKrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nop1V2vZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nop1V2vZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8280C4CEFD
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761429593;
	bh=Y2gReTVlu/tlNGPYoMIhgqpD3NAka7mevFTIHH25Mbo=;
	h=To:Subject:From:Date:From;
	b=nop1V2vZF/RIzQUJRQC5wj+IAvCXtCQpfmyHAHgga1yysXzxLccnwvkN6fXOyeDUu
	 BY1FZSpvonJKEyqNdDPK8eeyRXVQTClbMfgOWvTqAJoGli++Zx6f3/p/N+LZDzvnGe
	 t5wm617U888vltkwiwUl0Xcw4kakkuOH5Hmt7hUVNYM375dG/RkMwkle4i51fQThqV
	 Pp7JkU3VZPGhd9XzmcWx+5760gafduxownH3KJdsif26XVvf8ZhEzIQKG+iCxLHqJa
	 R1nqN2IlU4pME2eR69ui+nAnXLfB6yMgU9WmzK1mB1AJsl8XVOBkaeXff1n2mMmup7
	 Ak4TLWqrTWi3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96079CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142959358.2570.10063871021826831526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c45d663105b67e3c58090d61cef0cc131be84db6c559be18d8632ed0346e4f
Date: Sat, 25 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761429593
