Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498FD30FF08
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780575874; cv=none; b=nHFJ+v+7hm3kkciGIl5MyqZiVVoAnmxiDL1uPbXjgsIvxnaa0OAalCN4PnUK0oqhU2tCj0jKyggNXy6EROhRMwrqAjeRhM1ACw6iYbsz/F4rGIz4mpwQOLNamHB7JdwlaeMcrv2UGkfzNqkZr/wq5OWf7f5QBnRkSUCDeF4CM18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780575874; c=relaxed/simple;
	bh=xMGQ1j97FOXTrqBpp/8hM/rAMIGTuvnt4wQIBVOTCQ0=;
	h=To:Subject:From:Message-Id:Date; b=N/N5dio8uz+PjdEi75VicwyUUf7u9AfDzebtFFsOYfjDz0746jme8fqQY0D1wEsgrVQQUNrKI7391L4R7YgFKnjMZKJKOsmkvKFpdAE2/tQCbrVtDt9E5H6ZfG6Hjv8n/55piIoevGSe2K+oOFM7Fl4zOqA1xOwlzAvoMh8PURQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfodVwlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfodVwlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA655C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780575873;
	bh=xMGQ1j97FOXTrqBpp/8hM/rAMIGTuvnt4wQIBVOTCQ0=;
	h=To:Subject:From:Date:From;
	b=sfodVwlYaR2HElnjIG1YnOmn9BS/jYD6VOE8+6HoLspN9fDv/pngHtnH1+r/VWJqA
	 pQ4Z2UFhRkpj1vzb1D5pDzIR4X/TY6Gx0VDBepW96cxf60l+/5hzJTx1CH1AAKMKga
	 8AqdNhWYNXp7QX69ev5nfSwFUS/QEwntAwCpFUCKb5YV6Ra4iboup+cMZoZiyn4LEv
	 N8ftpqTjiGZ/Jo9h7X/omVuKN2SN+prQ0bvFfF8Y13tl4YEk27pknL7hrD0lOj+MiD
	 GJ/xi3Ey2wWgF6hoa9HYNISGmqL/QwVFetH3e2249etBMPw8DnY9XPUeycxq78LIEP
	 3+P3FhVTuw40w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FD1CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057587370.11177.11046753737718917821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beefd519b727263634854d63a71b29622f37fd659f90da3fef58e49baf63fc01
Date: Thu, 04 Jun 2026 12:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780575873
