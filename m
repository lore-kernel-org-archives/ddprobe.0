Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708F916C87E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713976283; cv=none; b=OaTnW2r+BIY3VxtzWKl0q5QKcTaS94L9YgtzzIIky/kPcWmMBv8SUNntXRRsjkurcHrK1NVY+hmzkfue6CupGGppoFBvMR2+QZuPmbBuSCQsz/wbuxzyBeRhQslR2h1xxouC5gKyECX9ZfkGcdOmSNlWxKxbcHs/PunY0QR7AAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713976283; c=relaxed/simple;
	bh=miryU0vETy1wa8jbTv2sqNxfE41bWU44YODm3zHjCFo=;
	h=To:Subject:From:Message-Id:Date; b=XmpwrcvzmYDE31hyuTIAjWaDgWASGqSPqI+LLMX1ObCZ5wt4u8KMLFSP3oa8hQ4aej8tXd7wkdmJZvAN5pgZGVLcZFoll7CDMvsj+qn7oiUPu5N7rcaj+hACDWITb15jsSOuGvJoDtLiQrzbjxkMxe3WTbM8nH8lTTYXo5VfTMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzD7Z/ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzD7Z/ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE47DC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713976283;
	bh=miryU0vETy1wa8jbTv2sqNxfE41bWU44YODm3zHjCFo=;
	h=To:Subject:From:Date:From;
	b=YzD7Z/aoqwc2WnpPEr1GrbgaElqi0CybvyrN8QuLlxHpMUeBw3kGpt+mk624eOXfW
	 oEXffbNZj0UF50FNlrP4OwMi2q9ZDVzw/Nod9c+f8VLUwyeo07k1XUeH6bmdhc/9SL
	 g4urmBffEOdTDO/LKU5vTX0Q6gwTaWVZZ5OkZZ4WBIFk6WWxPvTKlCGBYCr8HFEmkx
	 6MHcWDj0C2Gx/IUQbjEvcvfq3KSKP8aPnlbSoIACzPhg98RLqauMWTGXAJXygVIs9j
	 WdG4aEsOqt8iF2GDeu07r2OfeZLSiEBowBqMDNSzGuELe7jrrdADirJTXdg4xyxL8d
	 P0HoYJRFBNvbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBBAFC07E8E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171397628288.25334.10863472868098807269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b5679c62396920fda2b53eef0d4704c4023927531ce5ae80812b98b3fd9fdb
Date: Wed, 24 Apr 2024 16:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713976282
