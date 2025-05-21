Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3494F4430
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747807194; cv=none; b=Iu/PUHwu5fISBUxS53CjBd7Qu6LMsCjw0JBysAjhNTIsVvvbTPf/ANmlYXZbcYjxVSDish2p3KpiaILLUexx0ZWSnBEzA7ysMNDZXj9hGphcpi1Cu40ECVayheQ5sT/zRB6/EUxWxUhJo0gTLPX1d3j7MkNGQ1lFZ9BClnnXOng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747807194; c=relaxed/simple;
	bh=UXcnAKz4EgC1yo70lcXGfLHXjS5ODSiNdEtfs4bmVKw=;
	h=To:Subject:From:Message-Id:Date; b=P/Nbo6lKPP6a3bsu0rwqcP0mTR7FIACeuRGyeiOCH5Z9tOicxEJjEHB7hl0JtOHCEQiCkrxt1SvdbbpP+5X3zTeRlfBK6Fp2Dln8shOTrx/8O7k8R2VrYDbbKeN0+KGUENKl/+eXzi3yoGS1KtGUDDM5dPn3CMy5HSYm6DBiVOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpUNFdpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpUNFdpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17FEC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747807193;
	bh=UXcnAKz4EgC1yo70lcXGfLHXjS5ODSiNdEtfs4bmVKw=;
	h=To:Subject:From:Date:From;
	b=QpUNFdpLCaq33CzQGCqQQ/Zmeih8n9DGlo6a8pQaaXs/AMO2wA47DnsQi8W8sw2r2
	 12kEEq8ymeQ9w86+qlU14lP3vsERPzXs6PKeqK4z0LdzEsnU/FYPO4+SsDIbdPDjV2
	 XO1cBWyp77+6frSC+fQ0rAl5pql4mrF5dI5QsVDJjBn0LE+Zo/Sj2Y+Z5D1BovV2uU
	 vulYdv+4MgFcybE6zcKZGU2b9Jw+e/O6OgJRw7+NNcLS1n6iFjPw0na096bS37hB2d
	 CzklDuZRyT7x15azjJWARgUcn1inXtaSuDX9ME9UPG01UmyCgJE+DahQXJiESZjX9E
	 mZiW5jwWzfQGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF8C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780719359.1895.8074974394921866831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d100d95ef88e6ceaa43dcd8f9bdb9c9c6095545edfde6569b9df4640704d298c
Date: Wed, 21 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747807193
