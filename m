Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1292E1C5D7A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736781354; cv=none; b=N1vZX7c1GZazgmsqUL9i/rOl4cQFT47/+gVvMs55qcK+KApcp08EuE0PSf3e1hIy47WE6xhc/6kpXPc2hdg+nZD0hI43rTsv9Zdh9jEd36frQ4BfdniMY62WjwlwrgyVHBCuYMLPJc+YyaASgsr1iw7Wn2dg0SEMI7CqJzcbcEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736781354; c=relaxed/simple;
	bh=bQDA6Y1UokHi3ne9PAps7j6YLJV8jXYHVDiKJY+qoz8=;
	h=To:Subject:From:Message-Id:Date; b=G1zVLjaEdSJ2sUxFdhCRJjXwdPuV9YwR7gFL6Xcv9o/iGcOWkFVogn3r2Xax7f8EHSAWyPTaquqy98HvrBnAzpQ+SHipbcAQ4VRfwRz+uaLMhW+tuiN/8XGJESX1oZ4Zd1jxGsBW/7W3VPuelc7nmAd89o0xTtZUlhoqZm9hlyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPd+jcTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPd+jcTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0388C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736781353;
	bh=bQDA6Y1UokHi3ne9PAps7j6YLJV8jXYHVDiKJY+qoz8=;
	h=To:Subject:From:Date:From;
	b=tPd+jcTvZwDyadl9n2iR8l1K4wH739bO/lSq/ymktiO1XiwWSbTuJG3Hx7zWiX6ix
	 Xs4IIRYKUAp8+c0aahfpFApKQyYCbLmagVeO9TmIC7Ux+x1KRAqzSILrpGXGth7+Pe
	 e3MEPESmxVqvvMWg3uRrZTKJj09RYlaFVFw6ldkgRkYxHKkXH4N2IXiCHGfafMsY7L
	 /Go0gI6CjyxLuWjp48Fm1ZI2dElBh+RRgGwlt1hBHcyG75XSLZFjLZCsAMf/sC821U
	 aydZX4pii+TOLzKa6LNiC47PK5ZzObZlPoZunV3m4Lx9w8oEWSNASvMI14D7O8evCN
	 U120k6J05YUOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C2C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678135358.21409.5218348298173161641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0920710f342aa034c83163dad2d5df311c60c9fba92f9c68caf09d1a053b8c
Date: Mon, 13 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736781353
