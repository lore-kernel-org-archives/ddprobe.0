Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F856455
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723743954; cv=none; b=ic1vuhwDY39YawdvHpI6TIatvT70Ho/eJVqTv9BmR8Rq0VC7Ioa/BiJlNMna6JbLM+c1A1GhJDEdq/hObsQ5d3GvjFz0XQ8jk9sLO71jSMeUD9pbaND4+vmLNIlpxvNGhEG0BuqXJ5y31wrF4hkf0Mbe64FZiEYMFtEpDkmQFJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723743954; c=relaxed/simple;
	bh=/SkWdxwG6WPV5Y2L/TOqdtWTYTYgV4v3C+cZroBdiQI=;
	h=To:Subject:From:Message-Id:Date; b=PfNCAmYDC3Isaq4rSIU63V6zzi0+hRG16msXgWJEwM8SQ0Bzsg0UdKwTyC2Hmedkt1o+vPXMtjT3dXdXphu3zzWAfIJJ0/tWo9UBdiJXeHDm0t31dOt1HBhSdJfegL4ciFdeF4NTJ8lTF+ogIMFPax/ngbJJ4OMicqKxBEZuXjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e50cOkEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e50cOkEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB196C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723743953;
	bh=/SkWdxwG6WPV5Y2L/TOqdtWTYTYgV4v3C+cZroBdiQI=;
	h=To:Subject:From:Date:From;
	b=e50cOkEKTctDKEwlE4nOr4u++Cofk36kckwNPZ+AXpc4lKb48d8w7gXxDfnokIuCU
	 D7LCoJINDlALVQTidooMcaXTZKKo48DsjxDah6pnC9ahZi1Thqyreyzhq5s9Poud5s
	 URhyar9Bd1OksZKqySvLbJHg7ZrZnQgv9DS48rB9cU0Y2tv4iT/GtFkiWiweBMv2py
	 j6OdNzr+9PTmlPY6M6HEpv95cHeCuk9fozxsTUz4nGkj6e8rU+SFrVOH7WgWR/hdpE
	 up7brJKn7XtUBCxwafeHR+0VmlA+VTx3oXx+D2pANXouWV8onZF0SY6NpKciw3jUgN
	 rib+VykH1NDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E4C3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172374395360.7750.16715149027439210171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db26252e48445905889117d1d32160f7e7326c408cb879dd4c9445a0d4f585b6
Date: Thu, 15 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723743953
