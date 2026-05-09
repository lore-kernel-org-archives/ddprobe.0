Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356472F8E92
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778303254; cv=none; b=ktckoCAotsRDzRckZvlu9QUCiEODR7zV1sL2jQLK4w9o0lz6Xr7TV56Jmyaa1fEdzl1eU0mqIc2i9BIAPCfbl33n6Ll2CwG/EJs59cBmFXb52lZAEinWx9sidzUDCZWRLMVVtZoSwWPh7GOR3bsEbixf37vvRyUPM45GS3vYXJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778303254; c=relaxed/simple;
	bh=8ljPoRjMFPjeeqfz9ILAhyWfhiNp8aO2rsYx91zeW9c=;
	h=To:Subject:From:Message-Id:Date; b=Ax9GtbAlNS6XT9o2sgIHWW8j0XzFufsQE6NQzvYXeIyrUecUMT/RPADJ9ZmDFv+a5CsX8FZO1c9cOD7ePAUoO6nzinRlVBhQpfLBjEHNC5dXaRWwgJtOva5hwGF0tIifkeRXjqqE1QIN+hyQ9hMBjE7cWQA9f4AZW52S7rqxXVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tE5WTR1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE5WTR1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0B4C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778303253;
	bh=8ljPoRjMFPjeeqfz9ILAhyWfhiNp8aO2rsYx91zeW9c=;
	h=To:Subject:From:Date:From;
	b=tE5WTR1iS4HIcl9hkY8X7OafhWahuEctLXPmLx927r3pR+vcZ0hLyWEYRgNvt5aQr
	 sVid838clLzHi3g7SNGJQ/x16mjhcKVVkUJmq1ALqytJlUdkm/uN57TReUajN5BMHn
	 klqsHGpL/MWzeSz8vRbZy8HW0WP3UmjCx8qSbLVyMI6e9E8QrYKgm8QoEzBOo9SYcL
	 ufCQw67xWULIfEqcGUZiKXzXivLT7MyQwcA9RdMPIt/ih5kiXs8QcY2KLN2CWlYG/W
	 TC1bcn7J4P9K3ITiM3+AE0glhSz3js6bg/YdC0QH9RK9ydjhqpOXlEqAaITCyaLfh1
	 LHz9CyYR2T0bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB660CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830325369.19693.4673685560430405019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab211e1154f16710230bb9c3d093fa4e12d9f4d809b7778f674919fe267f5e4e
Date: Sat, 09 May 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778303253
