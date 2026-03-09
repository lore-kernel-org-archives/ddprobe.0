Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA821F4611
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773075294; cv=none; b=oW27USZwZVMg+R/sdvFfNw8mZtghcSTCyg0WJnlOJdn8psnHOYZ60BmfNi8JRtcTeyZEQ2Ny2Ab/a9ykIr0Yea7Ojdv839Sh19e1gsIfEyCvrrJR7axQ1FgNtU95/2KSrZW25NYii1Gc7gRvcei0RtAy0MZmsME6mDlJilpUvuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773075294; c=relaxed/simple;
	bh=mAM5xsvsp6l3zDOdr/DHY33JwL/6niCPHu1b8PjaSHU=;
	h=To:Subject:From:Message-Id:Date; b=MLnxNqPL4iRF5Kz6MvA+iBC+O++1Un80p+KvyE61eolnstJdzEf9mvZrh90j+sMfviJkUhv+yvdyE9hN/T5pFjbceSfNxfnYhaBWJpWwZYwtIs23870mk4qER61EO/drzxiKafJq/X55TwC7SjmmxNxhuZyRGXQa9BrEtOP2Z/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgPYZfGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgPYZfGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00FFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773075293;
	bh=mAM5xsvsp6l3zDOdr/DHY33JwL/6niCPHu1b8PjaSHU=;
	h=To:Subject:From:Date:From;
	b=mgPYZfGl182xP49fmW9emuSa1leBhefv4Cr75QsCL+fX01hiWmDJLMMCF78n0a+se
	 6dpFbFROvVTsPvLua6W4yY0joxqVA/V9ky5C4OdH/MMoJB+N4qm1i0yLRVsrtrKA1g
	 OavzUfIEtzhWctrNuY8od7c+K4R0mNvCEVjOpckIBkjHqV/dhbUUQZAf7uuj8HDEWS
	 JhX4JAV9EFatcQADzikkYORwYp2tTEaIbEy7o3YR8EeUqlpjLkdAFqgLRPqr+UX+0i
	 1QSsemAGA1rj/IVj7badDpfJ2OWmslpqU+qKbNgvfyocNFD5noDMOCOT2kKzJZ/FDM
	 /vEvu1yWG2IlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF9F4180E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307529358.26116.7492572887831595262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 900a3ad75cebefd164e1d26a7e0b125a0a90072686479fe71a6c0daaff7e7376
Date: Mon, 09 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773075293
