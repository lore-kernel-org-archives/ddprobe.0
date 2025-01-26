Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E15AAD39
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737930955; cv=none; b=d98KwqW6sx5IMebI+DO/gg2OQfLf+K7dmW5eV26QMg7SYwMTWlT9s0zYx/sbf0OpXULGHVrlYIKyZZ1xs2vpaYpQ8Qa+RUFGvW9M5ffN9ZK6e4vBSy5Zc0yrHmeIwT1uFInsqQi3xkWcrE6zKq1mw+MKLf2pbZzvFkmKW4/rUOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737930955; c=relaxed/simple;
	bh=MEtsiegFUMYYEwQvRWKtFFm45bcMuMstZT63UOSTVAM=;
	h=To:Subject:From:Message-Id:Date; b=t6DQEyHiOuzIo22S8XSGcADeTa5cVs+c5lUddja449Pt2TscDP5IWH1snP6mkyQ35jxiV0mtoN/BDjjDBgb8xqMssE+SDrrd5iYlrM6gtZg13uU4cQAr5ygRaTgPOWJH7PBlEwdf4G9KC9NA5PXuUnSV+NUZh3vayaYP86qBIzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGIK6Bcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGIK6Bcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F14C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737930953;
	bh=MEtsiegFUMYYEwQvRWKtFFm45bcMuMstZT63UOSTVAM=;
	h=To:Subject:From:Date:From;
	b=bGIK6BcfrEQqmRz/8Zugs70Sy4ntcbg6fgko45Z72xihyoKPwHO53H7zxKScdkfiP
	 cW2e32HKxG9mGWgpy9DIjTPFPyjyO9+UFnl6esldL69jAY9CdOoO7R8VGRfdPuSUR6
	 XEFmCSjRIL6/BAYz0bh0QAmKxF2/4BUcGF5lLCnyoYaVwEnb8l8UT5+AyxorMWJKct
	 rYTVHXDgb6kl7EIoe9lwrCqK4/8u+uaTDr3PwwZNgSU0ob5mT6IyRalKhXOxrfSpDS
	 P9d1igrbozLMI38deYaX6Qmz1L6JKLqOzOj2/kCHOmtBE6eBk68xtBlTbHKOrY5qYv
	 sicSsCQCV0ZwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92881C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173793095358.31653.4884071340446815956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72589880ee87cf03e694c122b4d8a61c5591c6f55ae1b48304895adaaf3c591f
Date: Sun, 26 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737930953
