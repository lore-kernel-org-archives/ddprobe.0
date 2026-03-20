Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFC432E6BD
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774037694; cv=none; b=mxhOj1x8YkwskKPBJHJEH86JsWfucabxBtyQ1HBfU49tKhTTNdlJh1M87UmWYBZ85gZOQR6L/MCxe00cnTTbnmmxwiyMw+jRNMWul4yqqez3C/aa7AAfZAy+gvcCLVcH3vcQpySYK6V3gM+ayO7D0z0nnNzGs/yeH10ObHSosSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774037694; c=relaxed/simple;
	bh=mIaQd+I2R1wsRrw7VrN3V9uiCFlkyEiwZYKZawT4AvI=;
	h=To:Subject:From:Message-Id:Date; b=R+2smrHBHZeUUC98hUDa0VsQB9wOoib2kmzC8D7ebsLO8cRX/8Hm0SFPMCT9T6lTb+cg4cw38JOnXO7WXxaAcFYHrEzQjpedVlQnl5MiZEDx1IxHQcwIPZun1U403JWgpM/6HlOxdJmljf+cKJQ2urSs1ZlxTEpR1z06FOfTC9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGwyIzvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGwyIzvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4969C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774037693;
	bh=mIaQd+I2R1wsRrw7VrN3V9uiCFlkyEiwZYKZawT4AvI=;
	h=To:Subject:From:Date:From;
	b=IGwyIzvx6l8pX6em6mq5wmnz2WniH2hCpQKqkDE/MWZK/oX0jqIfPG7NPlMMRjgTJ
	 DtAbvHC8zQ2Z5YO2zzTmbukXzfUcW8m7YYpdC1ybPyhddDIeAfkTMXlCtAGJIE8wLm
	 rBDq3Ht/AaUkgjvPgfPF4qFv32XpicoPHnx8VNo8nR76USwZ55pA/qVfMVehccPC8c
	 Zw/p4pJwGn2dU0sl3lAPb3sEwCwy2rfYXBmib1o/q82TIcLBmhH4dTgj9H9sJuOjOZ
	 yZuTMkw5YkmITPXkc/WqxWMiMWKKhiEMiy1ITo0Fffu79zT3cstsWSHh65sqvtp+9S
	 kPJc63r5Q5A2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E81099B37
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403769357.24181.2978079451598801554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577f04d844edd08d9d088a3213529b41a927ab6fa818bffd130150839b4e332d
Date: Fri, 20 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774037693
