Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3638A1DE8A4
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759077594; cv=none; b=M5kxkZeWJteuB4aVcoZr+LrKTAaG7tTzIL/kN47pGQgCor0FNsrw8iswrN/dEumy/lkjm1jp4D6V5KHt7uwyet6C19FffUxO8g+ol8nMOnX/2P1nRoxeGD6qejfB7w/3guMXdiv/CRvr1MCVF8bTz0+1s/xfzmQ+9iKpFbVcI9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759077594; c=relaxed/simple;
	bh=Lby2lp2UJ81GrtSQedNB4Mn5M4LyLCJmuXpAYW4qa6E=;
	h=To:Subject:From:Message-Id:Date; b=C3by5MAyY258vplToIu7ze43PcaSCj+Xdn10oBXHLUwB6YANbFgWZaT8tQ2FsYC8mTOTa9QtbiuU9wE5WONu/6hswURjHtYS3+bk/ZCMkJ/VlUVnwusT9Ss7+UkCDOgGRAiLWR+POpkf4Y5ZMYRq+QNuZs4V955iKC+3NKqD1mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNEJFT4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNEJFT4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7110C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759077593;
	bh=Lby2lp2UJ81GrtSQedNB4Mn5M4LyLCJmuXpAYW4qa6E=;
	h=To:Subject:From:Date:From;
	b=fNEJFT4AmelmF1eKRqdlz0FzQT12CibUGX8wlruzaFAuQx6DR/cuFDebVY0KU2Iem
	 VXSPjKGRQYrtmPV3Bz6F8ccJ4RWX0QTlR4CeDlmF0NRJEEp+UdeS8JA9RmYttsbb59
	 mad5L5iTD5AjFLWE3w5dBkomkVLekglutjjqsSFvTmXFUSKXQIqz6iFcRInfEyrau9
	 wKfVIG3fkjDVfTW+XL52taQcOQ9HlDRya1/4A7E00ecUXdPqCYRQYsjj/ZFJFnyYxM
	 pIA/3j+8nZyBVmCNJ305n4pz039yJBOIy1WPg9rxNvpfyyE8nBYQkxeYNCMCOjWRqb
	 Isg17RCUAwY5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91000CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907759358.31346.4743400393171282037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3c19255afe3dc8744d9a9a22ab4505c3874089a653b45b37f86778fb18c7b5
Date: Sun, 28 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759077593
