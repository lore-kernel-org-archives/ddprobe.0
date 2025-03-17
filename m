Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EF42222C2
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742202594; cv=none; b=rg1f9tJVJevc+Tr4xRxbusxn2Cinr8uc09dO9OvYxqQ9PqWd9DliXV1AFiwxSti6AiKGwjAJ6pkYA5s9GCxuZcmmT9ffFthHfnL8jF+ANGgQkg7miIHAvlY4VJuXB0a3bmfzPs0bspkdgc2KcPY8AoxyPl17yZMJuFtLeM2824k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742202594; c=relaxed/simple;
	bh=wN2WT4DAxzrDQ+AVxRQKiuBtD+iJMB3ctMtsyoBDIFo=;
	h=To:Subject:From:Message-Id:Date; b=kUHKSlYjP49gX+8dsXVVO2+2lPleN/bZGmulhIPi8WM7kjTqOxrdWrY6YiTrvvQYRF2JVo+U6i/JWKA036JLDbB2SzEjBc72s51I+Hm3o/caX39l456MgUbyYuj7feN1Jj4WZ8hzwo7gVqSI9r7KE+W7/bX5A6AWaro1CTmEqjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmgNfiS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmgNfiS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF555C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742202593;
	bh=wN2WT4DAxzrDQ+AVxRQKiuBtD+iJMB3ctMtsyoBDIFo=;
	h=To:Subject:From:Date:From;
	b=ZmgNfiS9RBmAgS6Y1taIarCk/X9VmQZgbmB28j6dhdtSitU1mPC7xV8m3jtVIZcNE
	 lnBLAwwkw9s1Tk0BLTChS35p1e29z4s4QXlbZhh+vJxnXlcoI5ab6/510MF/A0iH94
	 kui4e+uiCDNbKaBt4manhmrFb+lPa4vEwgonc0/0O4SMqFv7eT/PqI1XFIEx2wgwhj
	 ycnYJU91LlKQGfnt2ib7+ghfetcZnC20WgM26qJiWPLqn9L8Hb412ukfCWMCmrOei4
	 W1h0XbSEvo1V0p9DtoyWl29b5k+jMNyhul/wF6x869vHzL7TOEwVeYckNgFVpdUPSZ
	 PPtDOV4Yup2aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F1C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174220259359.26773.12334460779893076756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82bd7b8e2f644501beb032e0e9265506fcfe1af86188e7c5997da9a771508c8c
Date: Mon, 17 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742202593
