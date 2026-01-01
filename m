Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BF71DFD8B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767282233; cv=none; b=kz0C2JPMFYgY3/5fp4ByWZYjzeQjofywag+e9bVB/xqQXkUxwcwoecGd5YI3gdEjqpw/zX5A8MXkrXFdr7lM/KVpheKQ/12kAaToEc3AWXNznHIcPHsCRvPEUYyGL54adFrScJHbg+xg8HggH3gNy69kCx2p0Bw6YMDZhnE1+oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767282233; c=relaxed/simple;
	bh=z5gMZclvGKUNUkVMXZHgASajI645wNfOu/JFswTXU5U=;
	h=To:Subject:From:Message-Id:Date; b=V7w+WuF0uUXnigLh6BaV927VYKifco7a9woOzp4Hx4v/UTb8T5QlUraDS9bVcIEDZqHm2csXdTJstM5mxUMPy5SQ+NpOgErFsh9+8UNYWMCt0cTZh5qg2m9fL+xDSIxqMHKd3GWgaglNt7v71NzcO8RsIc8QtsnIzYnE2rmb5GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I64tHtoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I64tHtoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D62C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767282233;
	bh=z5gMZclvGKUNUkVMXZHgASajI645wNfOu/JFswTXU5U=;
	h=To:Subject:From:Date:From;
	b=I64tHtoYk6e7z9KpiacjvIR399Af8WMlwYq5WMGbN/gIjcssBeAQ0Jf7iU1C7nJ9W
	 XEui8cu1Z7uQJ+qlQDDPTQ3moClGbUGNkWEXZi6xJ++CkwLy+uhJqGhUJQdabqsFMn
	 QB3Mwr52oqMYo5Ad+3F/hkO+1sTlDPOlGFyeSJl9FtuiLPf1vI+YLa5fH/SUsZ1prt
	 mw5GMqmNMJ36NTXkRRdtQ0XaMY9R1FbikUtybCAZck8yr8izChLPYvgSfHgtAkJekF
	 Y15T2uF9QE25vRxnC+p6uFg5pw2OEvW1jz1DJs4kzNDITUsZHQTYcwRqSDk+m8XFKx
	 +yg0q+ddmMjGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AE0EEB57C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728223358.27144.16625534997408164357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ef968ef15f6cf8a0e1416cc9faeced6c2562274b31cc6cef00aa0605afadf0
Date: Thu, 01 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767282233
