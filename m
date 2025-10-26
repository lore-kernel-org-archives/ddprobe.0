Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50868212542
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761452394; cv=none; b=FwchehUJ0uIr4Pi/Og3MpfUpPIJfDlwHIqSJylWvz9hK+gY3Fw9YZKjI8DYhVKfwhtSRxcELEJe6W8h0KbO9tfDd/0LhIayc1GTQ3iruwD8N2Alp+1MjvfDCjYJg0kDLw1wZajtimGlJQFZ1p1tZhQzGabezv3WL0EzoqG5lCKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761452394; c=relaxed/simple;
	bh=pOD/0jR0M0OAsS3Zkr1jP5TkA74vZ10q8L8o/zYZvj0=;
	h=To:Subject:From:Message-Id:Date; b=uFzi8MDkxv/Vy6mkImY9L67xXLV/vppAK4iHZHrElIHZwMgZX9+dRMj9oXPAavj6f7FP7GBoqTpn9k8HTUHQbwhUXprFZ/5NiVssXuezaOMY8URaiNSwWjlmNmCyAi9uJ1hbXTpMffVpoYJC59wHsjX2JKRJZApGnVQhNFaWdkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XD5fuwEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XD5fuwEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CE7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761452393;
	bh=pOD/0jR0M0OAsS3Zkr1jP5TkA74vZ10q8L8o/zYZvj0=;
	h=To:Subject:From:Date:From;
	b=XD5fuwEhOVmltuAZWI1CB1wTwe6+bxizjJ4An1MboisfL0bAVoy6gBPt2m5UW6he2
	 6+p0LuZyNzRx2fRzWrQMFaKvuTeNAgdaUe/2pi+57svmuLOqZ4VtqQGVgUkPaulMyE
	 A05rQ01WfqF1RVD3eFedb8HploZFAVMtIpDoeJ4kn+usbHe+XiP7rMiFXMKU526Bp1
	 X5uX1me3yAt/Syt2IkfsD0otstfNESnN1pDicWSvNMq9xL+iSFXgpYxtJj1U8plvf8
	 r8BLbfztWO52qKGu5k2jkDCraUIbADjcyuXvvzH3kXPif6N0ITtbL4IBk2hrhWzKsy
	 HiEslRXDlwCGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D023CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145239360.17863.51245922976266698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f573c310c2c0dcb8df429f3a586ed1e9cbf5628ee759bd5b08a7abe2f63a040
Date: Sun, 26 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761452393
