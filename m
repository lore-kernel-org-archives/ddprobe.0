Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3A243E060
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787227834; cv=none; b=c1jcGT+MTrD/s79/umydfH8AOFvZA7buI+EBT7dsN2m3a9dtCTgjdsYiSwTQNb+1ljYlx/xg4mTvqvRtmmTHV2neidTCBN9CwFUCV0nDeIk1OFEiMhPWs/PCcUwDqHRuWNL251ryWufkMHYihoY2yqlZmcmXvKEANdGCRFV4+tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787227834; c=relaxed/simple;
	bh=k0RevGxGwteDNWpyjeI/L8hyh/gAN5pY3IE8Ger3oMQ=;
	h=To:Subject:From:Message-Id:Date; b=iVqUb8r6tENqJMzErixaXsmRtaMinCA5MaLFECqMJUjq1d6hU8gXLms1b0hRJFQoVOF/DBOqdpIopuHG2wBBe/UwnXhtUVkp8yXtu9piwNEXTpchFrzCK2KUtPUiAeSPtPwLeMfQbFvtp1u11PMzqD2+oOBygMjILjzU0PqJm+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ud2wG9fY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ud2wG9fY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB371C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787227833;
	bh=k0RevGxGwteDNWpyjeI/L8hyh/gAN5pY3IE8Ger3oMQ=;
	h=To:Subject:From:Date:From;
	b=ud2wG9fY3l1M9H74zaY0EfiGtFEOe7YFXAg25DW7fwWx4KscqQG/9zDnFYYhJubKH
	 0dOLPdbkVrhd9I2szO1ruF5DnflBf6Gh+XazHDfke3UIBg35Ujybzoq0BzWGWud0Ck
	 Iwfb/Aybdbn9sUyLbnP5F9lchq0WkOjvTzdlFVsj8E2/MfCC0yIHlysimILH0wX5t6
	 ZiTyH361F+pWFlcR5AObRCVaiZG3sNv3iLY1ossgzvnR8+4xvWS0vCQ/yG4TaVu7ok
	 rmzZ3l3ZYY9RXbYJf7+vtF6kXJisTtPS+hiu5KAJ3DTYN+LZMZdrMOL+Gomj8SRsGN
	 GUUF7KTp/NB7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCC0C5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722783369.32417.16880058355645397682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6ac483c7873230e70900abcac8793e92689d3f624778541d651ccb23f5f10a
Date: Thu, 20 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787227833
