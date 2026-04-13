Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E9328E00
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776045454; cv=none; b=SDcF6dtreJ/5lGAUSeanzoMsCdKJCKc8NKJKuYN5mTgPEDR0JcqMVcpCivZuzCB1UewYzfykarBhJfJ39Q345rygBCtHbWn4bNp6+MlEjt/yh0SsNOftqLCa0/wozAArxdyzfwUTNShO0jVHJ72NT90xL0qEQq31hzSDPgXuUOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776045454; c=relaxed/simple;
	bh=SPG2KasDlxl9EVJOLMuqHZDYPnnGGt2CFtLkL/vbxdY=;
	h=To:Subject:From:Message-Id:Date; b=XX6TtuAl+onzUaxUZ0We6W2ZhaF7yz1u/9kfLS9P8GrpKw2V0qZSTEgiGQ00dRUHDwoblN1ooK+XCBBEiP9V6dEJGD3i8p8KR7tBuTWSlVH1wX+pszNwmnkwT7s27+SckqIu2L5cnY0b9XGfZsN4jEZYiqxDH7Kfwli6aTWbz+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geN/H9Lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geN/H9Lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF0DC19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776045453;
	bh=SPG2KasDlxl9EVJOLMuqHZDYPnnGGt2CFtLkL/vbxdY=;
	h=To:Subject:From:Date:From;
	b=geN/H9LjMM50UBRE/Z0q0HXaveUUB9XLJ45qwZcMedtt9+wN1ZsTp+4U/04453fpH
	 O0I1FXPBq32qHooTxGmN34o4geHYYHplhL00kY5PyC/nJOaOJ9xA1IPhg/tTLDLIiA
	 aExD9IPB821/yenzY3v/ll1U23eE6P95ttFp3kEmeOeRgNGJdE6/18IzKCuTJ2Zc79
	 1HGV9gO/iSONYa1FsRx32Ai+iMrcqc8trq9hLIygyXgwCpYqjZqHWePlIlE24DPDTS
	 zZlN7o5agLvUeDS5ifm8hGcWaGDoM9Y3Y2NeTmOzTI6lE+MtLWvs9bfvDQwoCvow8I
	 wL4bNJTOQ7FCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5BAE93808
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604545368.32594.6837731227732101588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87f90a502f3ed617431c4a891b443ef3ebbf600d26b244510436c2833f08d20
Date: Mon, 13 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776045453
