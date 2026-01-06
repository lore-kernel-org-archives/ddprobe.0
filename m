Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0D51FECCD
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767692034; cv=none; b=GCUGXYTrr3o7qn5Vy7udREIPDOnnFG1eKNmYdNoQ2G3o0QHr/9cDS6yqwRWChE5yXr9uPB3+yTFFt/ns4+EUinu4clQDq9yWv2KVjyxQqhk45juUk5KVtFUioBi9/rlkhBw1yY1Z1USGWtiN761V3dF4Zt70LFKw0cs+tDka5AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767692034; c=relaxed/simple;
	bh=HEav1/WThi75UlWxxXXkH+ZT2aoyIWXIQ1xzgl8Ntg8=;
	h=To:Subject:From:Message-Id:Date; b=qtdG8BBvIIBNUUorfWcrDXXYmmUCH/AiWRwlTRZ36C0TaoiK6TMmiFKyxqZ+40RPKGoeVWOiakXWbwZj3lbSLg1qgMnA+7QHx3241TcH+TePEOT4+7PcfcsbCnw5ioPrHKAHak+Nc6PEIAmWcmF+5fOXEn6qORfELO/CU2aEyGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAtQ23/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAtQ23/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB22C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767692033;
	bh=HEav1/WThi75UlWxxXXkH+ZT2aoyIWXIQ1xzgl8Ntg8=;
	h=To:Subject:From:Date:From;
	b=HAtQ23/kgYvEZTl4drg0do0AWzewZ49VGNyq+tU8LzmuIdf3x71VrjJEBHh9kmnN1
	 pTK7iYw+1vp2qN1nzX5i7t+3+u5uCDqlp9P2ehHiLxCuqXzLmQEgKtQ4fyOeO7CM8g
	 gOCxTjRrNM4Bsn7YJX3dDGWQr8gws0caOTaYN4UuibjFcFRxqS7XCIMlfBZIZfV50a
	 psGvptvXaok7QtwOkoLbVYmTgIXhgtGBLw19J0iyO0GDIBbdmkwElZ+9z1lHRxXj64
	 8HcelwS9nbVjqOCa05EypC8M5OIchDBsVZqhdLgOSPxTYA3YbC5KeqOt8P/6nL2VDk
	 AwBa0h6e6Jarw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE2C47BCF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769203357.20965.3319074358215583449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d384f434ff9a56c86ee1d87d9f9bc901ab0d6e875806ea24f263cb20c309a2b
Date: Tue, 06 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767692033
