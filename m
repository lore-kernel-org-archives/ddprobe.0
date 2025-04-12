Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DECB194AD5
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744501794; cv=none; b=T64HLLs48eisxrmPB+OQ5tavxTaSJTYCx0vTCbhtYOSlK2VX4421WjTPSp5Vrp69ZDAUfJVSvpd56wLQyOw6mpZd3slxb/zMiVXU9J0AVEC/yI2bNyfr/SkSV20wBYt4gGzOhW+L+g2qEXW56XmlfEaJdgyI3BnLxAPTN05RPxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744501794; c=relaxed/simple;
	bh=X4hFeT99nXz/HT4NokIlBmNjJ7IhbIdtqaIR5waiv+A=;
	h=To:Subject:From:Message-Id:Date; b=LKTAYOQxkczQX2yNcND7jemdYcCgaLiEI+0YqXZZw/1dq+aHaICbny/uC+0TaEfyhYJjZK9rP4DeWV+69793I1ZST0Ju9w9qTeRZGihro37W30voNJbu5h5Rxgc+PIN7h9z2fT9TAH4qz1vEbx86gM307yUXhAIUgq5B0RO38oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyIyQET2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyIyQET2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF678C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744501793;
	bh=X4hFeT99nXz/HT4NokIlBmNjJ7IhbIdtqaIR5waiv+A=;
	h=To:Subject:From:Date:From;
	b=iyIyQET2SEORZgRW3K/p0/YxskDIlHdtjQECQIrRS5Kr1YCj128xBjwxNvxu4I900
	 iMPxSEoFCzXwKenSXxaft7/ZS/RRc5oJiki9Vdmf/ntlL6CYo1H46nUv5u80xG+TF8
	 sdDvJO1c+Tv+f74LyK5pZ1eH5a7cx9gp4913fjJUwZeR/mGbm1+97+yGpIIT+WGHlo
	 Z2sWczLESWw2qKhX/4KbV6LR9E7rLb1CqFhQiyL4wOY0ZHXJpu9JgyRIwH6bXrr0eV
	 Ey8RpOIromfWCJmcgP4rQZgQfiPXe4oIzChFRNpvnwH0M+OXtD7puzE//xrtTuZkqj
	 l8ra9L0juvYfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ABAC369B1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450179361.769.5757507439780510532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf8a687b55a3defd5971e19f35b2d670a020714b4056c8b347b97910bd77418
Date: Sat, 12 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744501793
