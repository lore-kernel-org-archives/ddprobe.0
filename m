Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1597128F5
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764208974; cv=none; b=YE2/z9Rs5GkIRvmCHiIRQq71uz3DKN0pkReofH6MoppVu5XQFqf0pTnbKEuFiBc4sWJ8Uz+7PjcQ/CNjuFLhGQ1F/Z7ufHaakZ/EQf1M5ZWkNMUclRbxAeweVGDoaBNcBxgOBEEr8myRLEaHl5ZXZexcHPQfV082m9Qb84goQGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764208974; c=relaxed/simple;
	bh=akNrKgOyZYPfOO4RnVbTUftdlK6mm0BIgEGp4K9YfDk=;
	h=To:Subject:From:Message-Id:Date; b=M+sPJsEGVnUAQ+Yl2d3WxoxDQ6e4RaY2lsiK5i9bDdfua1kC7EczMqxv297Rdq5iZDcP3Bb6sTBJbiad8RvyOVdMwT1bAfSUwxDO2rYuARPgWr7CLtLjSpCdo+FCbKlKhI+rtCddgWSF2Hdr2b/WEtPj0WKuT7ne8pD60aAu9/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2eKkU1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2eKkU1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F35C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764208973;
	bh=akNrKgOyZYPfOO4RnVbTUftdlK6mm0BIgEGp4K9YfDk=;
	h=To:Subject:From:Date:From;
	b=k2eKkU1znpdk3VaRy1IdGyHtOpTRBABI/x7O+LkpG5SnPYRDXzorBwseWXOWpK9dB
	 Qz5peRvGC4ef4lJa7b+e1GifOF9bPaIaB9Yr9pncqN72zidcz+NhwleoBfoipRVf+L
	 I/Ca22QXVviX8nR9pzV2PS6gIDgTwGHz+qSJvMLrUgfeooXY3Ul72ldfKACVZGWF0t
	 LmLUs/dc4yhTYgf9ndYanLkr5QCuUGLgKS20TwzcRK6JGf/3LvMWvGpmFnXK7nugRd
	 IJVABh5lrwvsfh0pyjIFuiyfuiXluLGI/siNKp9LwH7F4lbFCtw5mMz2DA/3A4r69H
	 VkuKiC2pmfuiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91920D116E3
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420897358.23918.8428818526137212068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f45ba48e5b30f949f8088cea0079391b963e6c505ce33d88d51c19222b2b744
Date: Thu, 27 Nov 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764208973
