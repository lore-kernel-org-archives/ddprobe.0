Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9DA224FA
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743716994; cv=none; b=CW0p+hpTDcRiG9l43Vot55TkI2136swTHikaFmNtv8lB9T/FHJi3oukZfP/kfSU044N+dDKaypLhlRCl47MIMqXWGEThBowkPAuHN8oSWNW2B4YG8bAbwwuG5Q4ghuoLKPsMUoyrtCQfTLrPt7CwzQ74b+sxl+x4CXsejUfM4FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743716994; c=relaxed/simple;
	bh=6QV56u3zlsEQu9bkbBX5MvNgKQ1uq/okUDEeRn2UkCE=;
	h=To:Subject:From:Message-Id:Date; b=tP3eF1alloGTtbj8wBA9FotAY4+zDE2ePygrhBL2lORZ3y9i3L5RAen7DxBL4ATXRjqcSPvKp47exbRQTDMNtDb9iTR7ntk/wm51lj4z//9YUyZvlW+hE1pNDJTngPu7qWw3lD+ZJHh4ztw4Ur/wDOKH5YsV53i8/gfFAXGTAOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+j/R29m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+j/R29m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC69C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743716993;
	bh=6QV56u3zlsEQu9bkbBX5MvNgKQ1uq/okUDEeRn2UkCE=;
	h=To:Subject:From:Date:From;
	b=M+j/R29ma4X1vvE1AHmC7uojCsuN1x3dTo+ofbso5xNo1/1CT2LcUnz8kz7mgQO58
	 ncAcM83v5B0m0etwIpCjwoNob2dqNA5e1gMzGLXGH9Y/ZFztFx/xLupFv2RzK4ry6O
	 APIWzQG2D4Y7bJsamP6hUcKOpALAT2LSHombjAE9B6K9jEjpHtJfQA0neyPWDcpejS
	 BIL7npfw6auMSUSOuUOhu5+XpbrR6JO8xCsFJ7xSqKtgOS2/vE95EDrbgecgRvETES
	 TITK3+pdWR4yOnqgOAj9M17B4J9dBgKdgZ369i09qFl5DpH1j84la37ITIwIu1jzF2
	 MPgFPK8+OGDQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6301C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371699367.27314.3613591691805006006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da10db4e2df73df87aeda1391e61c69447a55aaf974a08ab7565764acf58de6
Date: Thu, 03 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743716993
