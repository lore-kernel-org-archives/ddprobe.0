Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EC324B254
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736613954; cv=none; b=I+96AmYuhDN1TN+TBPY4sjFuA4Snm9rAXXqGqUONFUzUm6zsyqtJ66C1XrXuG4p2Eme6YTR0HPsRQA1Xtcu/TgNEuiLlyg7qxyumOWFoYaw3f/+NuVM79OvljnWQJkOZddbGvce7BlpggmmBOrfVgg1fVYBuK54aIHE6wndgM3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736613954; c=relaxed/simple;
	bh=y72/J4P3kbtJaN0a/z4+JFWPf734xO/wvhz+8+fsf8g=;
	h=To:Subject:From:Message-Id:Date; b=nAAW9PdHYY4DHM3mezzjo8TaUJxKCAnJQNef9MHHdF83N/ZQGWIfuVZcNNZfUFWnwBuJHNLRbrbrStyIkq9+MynQriEK6UAKh36LJkPj9+Fmr4j+FsuSXLTVRT6h5pUC1mE55LhIIRZKV56xlQMhzI3t7Xxww8VGuSDJwMV5oAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEKz9tUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEKz9tUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9429C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736613953;
	bh=y72/J4P3kbtJaN0a/z4+JFWPf734xO/wvhz+8+fsf8g=;
	h=To:Subject:From:Date:From;
	b=LEKz9tUNS1Vgh3vbsKgr7fTcWOMX+qXSUS+K+C01iFCe2ejvqvLoC1rLbm/lhAuD6
	 lpnkfbypbvT501klnw97j0JtsGiC0VZ4lHriCIJGvsjWfYQBtfgpDDLergZanjwJ5S
	 Xt4B27WbEi+znXYhprtWCq8D0MIss48+PtkG3EmYjgvpwTkJl2YWa0My7jhCaePSV+
	 y/DR/e+mNdqukla+QSpcMFycjKwquap3vQUxa5BrRTeBD2cqw8h56QiQ6UdI765GMx
	 F2eTOgqtYgfH2oA5ATIfxWT/s8C6Z3VgGmrYm2S2OlNcnt2qF7PlMqhqbRTOSNRAct
	 LIwMZ1kNWDrHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F517E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661395357.19190.13383731657299626748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad18d25543bc517543f2b685217290e50de7204183594b140153056578b20ac
Date: Sat, 11 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736613953
