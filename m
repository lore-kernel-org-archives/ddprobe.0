Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226C613FEE
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729478154; cv=none; b=LMYve+qqodNC2BG4BcTshGF8K0I9H1ekociI4plBzVZ6sAndKpANkASVtvHDZbPnV5g5KXw2ixh6qh5ClOy4tTxouJKLSmCBy0LQy+V9S9W6a0dEUyL+O+lbxzxY8Qg186jtxpgE1VL3ajomg8GSL6Mi8gAblYfksmgJrjUtaGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729478154; c=relaxed/simple;
	bh=HEs+WiYOY+AnWAFiaIFt9Vb1Jc+j4M/UyyQbbbSVSlo=;
	h=To:Subject:From:Message-Id:Date; b=XTLOo0ocAO8x8MLgiqbibVXHnCP700m5IE+v6T/dIC1WWw/m3bqZ8Nx7PI5X4nsLp72rVArHsKsl+83fTEWDlpOXi5Bd/ZW7ANXbScw3eReiDxbbeZh8jtilTVJtPfPwNllWoFIiay/VUGoRJF1vdFI7icNfA6sLwWuZq5n4Pd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUSNI4nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUSNI4nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8038C4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729478153;
	bh=HEs+WiYOY+AnWAFiaIFt9Vb1Jc+j4M/UyyQbbbSVSlo=;
	h=To:Subject:From:Date:From;
	b=mUSNI4nLInk5VUhZBHFkwbxsgaKgn7jNuSMK3bIRZ1MWFEePcgG3o+hPKaH8PjPtS
	 UbZyyOG0EWSI+VD6LyarWuiB7wzl0w2E3gR2yUSsZSLDLzs7LDm83+9DCEq+1dMM+G
	 UfeFD1amJBvI6SEYNbOsc+oNHnJImCiILJNwUFNN+PEN/50h2FrbhBYbUQX9Fn+Op4
	 8cucIXm9R4+wgElfuURhKi9LztYYR18vnh/WG2bMs7u68uAA0JERc4fFT59pMetcEK
	 jzI9XD4fth5qcWpCj1wmNv65LlmX36BT7F5A+D0xY3kjJvQfEZtKXDf+j1rZ3OqV4O
	 9po4Wvmf7+pxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DAFD3C927
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172947815358.20334.14683569989869338097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2640deae287e641978bbfb090c1966e6eaa4a3a7123b0338a033c349aa0f6e50
Date: Mon, 21 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729478153
