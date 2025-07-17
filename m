Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E0F283FE0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752740994; cv=none; b=lx2BKwPmW/NrdnUfnhVMHUGOw4qCZNLL4l34MWsmhxDXMCtNwU2LnfpcXoMYDkSgJbpBKv9dokRpPrW3eUNmqY2ANGI9CW+hrmhTR67KvsfWqCCXSHl0oIwEGpg9MEqotyRS2n6VqiqrONHPHxp0Q2PdKmWogS5mB0AU0hH0sUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752740994; c=relaxed/simple;
	bh=1UQd1wyGtc/QdnovJCg2nGKLwoDMlRXEezSdouAvCak=;
	h=To:Subject:From:Message-Id:Date; b=b1CwN0GUVWXTIzcbmlsbDZgzphw71GacbWzaIEit8ZL/kxmmsE3eAvD0B0N7AEZAdEoqMCiirwMD3sRljjZUjXnoeKbXGSjQ6UgX0g2SEnEu5+CAaMzvETn/bgLt+rySXszF6OQzQmgyew3R1zQf2NP3cTbWIY1pxZLkgFSykBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMGJ1PF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMGJ1PF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5531C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752740993;
	bh=1UQd1wyGtc/QdnovJCg2nGKLwoDMlRXEezSdouAvCak=;
	h=To:Subject:From:Date:From;
	b=XMGJ1PF9KsrVi0tVDj1DhKw8v4ch2Cno150j9IgsKllqwGOCD1lmsKI/SAWUsT/YK
	 THAEFF9NKULPFtWa4R0I7DWlqaPo7XWfN3XQED5TWr5WtDt8pxWndqAvZSp8Ic8ggP
	 Dz/+BXL8DKlszaaag5Oy8qy+cUwuhz9gJL3hxTrPYSaufRDW7SvigB/OUZWFhI26aP
	 VsW1MlSuh6y7BHhxz4MWi58cimZBK05iqgeZ+zPnSEoVSzD7n47sjkwLg+UUp6iFPh
	 q0pQBBdLBf01yZN8UEa/PN+/WXgY6YkL6Rot+hTwQvJ2caMWWsSrW+oJ7IsVYpZsnB
	 3ZFfIItv8dtDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C14C83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274099358.11622.4073982994992255285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959403f6ca18b08adc34fc23e884120484c4d0fdb5f2533a524546a4de42c3ac
Date: Thu, 17 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752740993
