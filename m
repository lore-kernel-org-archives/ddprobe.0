Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C23C3A1CD
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767141834; cv=none; b=VBDxuuHQCjJASPyOO14uiiE2HPih8S2/WSnpfZ4vEced/wNSTw5Rs0ONvxuSC7roXbd34cf8IzUWYwPzOteywlJHZYKeraR55846fe5oSDPdjyiD93q4CwOOOkES52z53EYTrxa2BQoB2xiFdgOnieUzj8zNv4xM7SwNmOFvKGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767141834; c=relaxed/simple;
	bh=5F9MZPFth8aDc8GDl4xqLnu4Sup2x3QTApFR6BldbVk=;
	h=To:Subject:From:Message-Id:Date; b=oA9AEMhGUWdiR6KOTKOnxmVHH1eB1LZHeILtS+4+sv2baQG6XzoSe9+kYP8p26sA+7uxMUz3S1xNMxuC37BSxLVvmAUz4DyvrcKEjTVGZbiAjiKOGnzxKYQf8sAATYoQzijNT/aP0VObRe3ZUShscADOWxPLRIFfaKoI4sj1v6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtUgXuBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtUgXuBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64FFC116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767141833;
	bh=5F9MZPFth8aDc8GDl4xqLnu4Sup2x3QTApFR6BldbVk=;
	h=To:Subject:From:Date:From;
	b=jtUgXuBztflwSuulB0/2K01Lr8Y/ddUwKezKThHga9NYsB6QYtT67kt7w6ExlKBzw
	 FgArhzVgTfPl5h9agoSGog9zQzSNkX19fFH9p749l09wKoP8U9IkPd5DV/VnjLwpkL
	 Aui68hA+Rg3j/7yZKSFiegi1f+9BMIcHJW5rhDqdb+Q2AGzJ+eo+eBaphd47WZt8Hn
	 SKKBP+XIIXKRtmhlZYl+hKjXiks6Hp6pjtAw+HZ6AMfT80OaIG9KMZSpWWpvuen06k
	 4AfuBEVJGirRCGghcMmPC/9NI0xXLrfI3gyTK6aMphop0KR9vkVElO0PHIeBVPs91x
	 yhcAPPKNMbxnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95214EE57CA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714183357.19852.13245140741600236011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24956a49fc2a6c42ea7d85946ef3bfe7412f86b0ff8d739b828bef25e2bcb35
Date: Wed, 31 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767141833
