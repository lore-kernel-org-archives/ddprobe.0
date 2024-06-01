Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830A96FB6
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717210463; cv=none; b=bXV/uCMt+DKCcs1qUjT0kNjRVm4ngrtJKhfGZ+Ubi5oRyyckkFShQggjcK+D3ijepmEfutKatmVNalDEvkAbIm2ZzT4UYsW1rdyXPXhiNzhd3lLeNFdaKSZGTAps8jaO6ILn6NujwOEk6DvgMJlZFdMeld19rhFa4jgBe8COI8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717210463; c=relaxed/simple;
	bh=+91ZRhJ9GpkY+4ktLpLT3rPh7g081GAtDEyn3Lpm1mY=;
	h=To:Subject:From:Message-Id:Date; b=oAPqf+aDfFUuifnOIlGbfSw8iADEapTPmKdMiSRFrIT7QZmzsMdgj+Hvr15ZBLNqDTpRhPPIW+V7/gCkv0+EmH67cPdm9qRQcw90XLsk6txgZaWVOn8TfoIMcbs2V83B1BjFVI9vQzz1IPT2LxqLHO7tktS8iuq99yXHhmY/ZgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urd5lL4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urd5lL4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01C62C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717210463;
	bh=+91ZRhJ9GpkY+4ktLpLT3rPh7g081GAtDEyn3Lpm1mY=;
	h=To:Subject:From:Date:From;
	b=urd5lL4UWpUzBE3Tu5Iw//PWHN1RwRFKefw/TCQoRoW/N6BTSSRuD8X/IpAokOfXL
	 rgeeYj2OVTiPcaNHk90IUx2GOhE56k/2TdsMdu3QBILbbckoHW0z/wW0MD1RiyU86G
	 wJluOq+FR3RyMCXunYGMCrqRUyAnRqCInk5hrpz2Or1nOG55aY9s9kwsl5TvSZJ2mt
	 NO/isf9fnZ/Jfj0qSXnMLUdLeW7a2cKUwsn2THSR+IkwlMq8alHeKVqqp4gK4/UaxP
	 7ee1sn7OSu+I/6MDhrx9jUDzSFxMRa7KYELj0Xeafsyi3QOkv2b6pZQb80/YuYxCbc
	 ff36uqWX/1KzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0844C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721046283.16949.9005717638004306438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225d29d075de9552c19e1b6860e24dee0c9dcdb5d1a9a2355bd51a8729c56c3b
Date: Sat, 01 Jun 2024 02:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717210462
