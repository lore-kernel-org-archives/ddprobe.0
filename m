Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2748F2E336F
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752856194; cv=none; b=RfHhfIFdVpPT0ue/Omn/DnP70z71wPr9P1DEOQB3tNx7yZbPSxZUB+QDipnIYPtYSROa6+YcG3UFii7w4DEXz/HKlj1raHbHzcRw7vAGhHQrckGXF52VckMTZKrBxkwRWKH0lfYR5pRPO5kZXN5mA7WodbMWDCtg/zHqHm/VXWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752856194; c=relaxed/simple;
	bh=UVl2tpQLhwKu3uZgPSddCuPzQqw5Z2nc/E1QLLuKzoc=;
	h=To:Subject:From:Message-Id:Date; b=hwe5b/KdomvpsMWie9IT5nfnj3xBBR1ZRiA/Fzl/wWjMZF7GMvGREBSrsfd+CwgEFICY4n/2/elkYk1IXTukO2u96np2MW84LJ4bYrXP+FWx5wiwkwUM0mLF9NUWyjb2Iq7cFZ6+ZhqZa4hcivEERDTZXZwp2vKNBV75zyuLhwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/JULf5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/JULf5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59ECC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752856193;
	bh=UVl2tpQLhwKu3uZgPSddCuPzQqw5Z2nc/E1QLLuKzoc=;
	h=To:Subject:From:Date:From;
	b=m/JULf5IC3Fx6HKIg3D496rslXBXia47oMhNMVFCJkpyDGj4at0/+Un02PYBNntuE
	 c+COyynU773cUsbf8uIlEs4oSovcqkh1ztdrw43mNu3DucpCIWsTb6JF45aQ4MK9dD
	 nRX29xC6/H39QIaeRc6BeOCWALMuNdTrbfUFUHLgWq66IBySdzJyyvsrRjhHwy6um7
	 pSs5lhbuQAKdze8PvEs+57m3Zsk7P/esnf6n8f/s35h3yoY21OMbOJutxJY9PqOlKG
	 qYOBxV9tlIIgacgia2Pe4LkJuoO28idSVZAxJIWz9k68y80FeudTZPLAlZNt0a307W
	 LUxHd5qks1e6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9210FC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285619358.17375.11988492078115154942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476ff051387605e91a60b664d649b1adff650fff69141c46996cf242eacd145f
Date: Fri, 18 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752856193
