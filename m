Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44000C2E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717559783; cv=none; b=WfGLJBDdmb7RBTJIY1/9HExraLdlDpulvv6UYVsL9MMEJhqonLpjw1vlICJ6qej2G9Yu5kVSTXN0ip5XdGAUqQH3hCA9CxlD1xrLgGtT9/GoBItd2IjIVNLwTw+qIxCUNUwTCxUpQeTiTjdrRT8lPqIXA/tjU7pVRY+N1L5m4Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717559783; c=relaxed/simple;
	bh=ZlSbKunsLNtYunp/rp5/GZvNxM4yvtyyk/EFJ3N8VHg=;
	h=To:Subject:From:Message-Id:Date; b=SuF0mvsKepEmcSXX6W8IEEP5NGlnbC7b3aa3wGAmSzQV5a+QGD3RjXSwwmITWU7rPPHe0qFxtRgBol38F1qUcNtQmfwPS0sp0jMF0AFsh0OJzcWYDXSLLVAaJk8IglFlYGUuJdv7KW0Ah9lgJLFxLhEqP1v1v3AmhQuGbNuaAh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olqgtCoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olqgtCoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0943C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717559782;
	bh=ZlSbKunsLNtYunp/rp5/GZvNxM4yvtyyk/EFJ3N8VHg=;
	h=To:Subject:From:Date:From;
	b=olqgtCoVwf5PsYw3QqfztR8zJBqbN5jgiqhW+XqtAJpyvTWhPpFKoMK8tTn8a1DOj
	 OXxD7AHC4hWpZru67h4SMdyhr5558MGt9L7KiiLBsp+2XCvyuLf5qH+O4nM9JygKxv
	 /T04cuXN8m+fKjTohJAr2H/c/AN9jmk3HLceeY+Bt8cstHDcOn4E1WnHmZW3ryMOha
	 4PY342N2IRB+7Z2qRtqZyfqPUH/68aAUsHG0UKzAL5w5qpVE0yBrev6r3pSzdFoRpD
	 znnPR6vFdtKLmm5BKj9ccM+VzpeSbxvC1FWBB0iBBr8sCv6Ae/jZoU5nZN6VwhUBrC
	 x7GyuGdfX9OXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA1FC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755978275.10885.14479038009581858182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7208c08a4c1f27a9a493b08057952a8b34e3b5c4867be91876c2b328bf1a7907
Date: Wed, 05 Jun 2024 03:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717559782
