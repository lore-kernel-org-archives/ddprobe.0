Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3612D18C013
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728297354; cv=none; b=s/TDHUrumBwmyQLLkWLQsOyTRmTmUKvDUn2QIODLcnEXZBercmo+CJSgClYZchS9r+8P7TrdJLpir0E1B7wVBKfC1ug1JhaeEFQqt0ODzN6G03DA2S7Llgf0dgnuGlKPH1ikPVpUnqiDj7IwS7Kpmzgs2zm609/9OIyIQBmA2OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728297354; c=relaxed/simple;
	bh=/XTAxgD6XhbxxroAse5sCaUaJoDfT3kwlnXIHf7iG9A=;
	h=To:Subject:From:Message-Id:Date; b=VZ1tqXBgjiaLJux37+Hli/JD8iC8MEKNvxnhcX6+1qfXQOFFmOIe/OTBdFQVNJ39KJfjfu25+PTsJ2fAxXjOcGBZdbTaqlahvdvZqT4UBNnss6shjoFphBlh0mox995lQDX4p7kKSKpe2swJkxtmjjv6mjVGO3W1/4GwJvtvB88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbjTN1ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbjTN1ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A19C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728297353;
	bh=/XTAxgD6XhbxxroAse5sCaUaJoDfT3kwlnXIHf7iG9A=;
	h=To:Subject:From:Date:From;
	b=HbjTN1gaSmRYRXzTqIRW8e6FkDnyv0l4mRhOeA66gF505pZyfTtIjtjolxAnVBhxc
	 aQ8if7qUhTze+p6EHntXknRmhmIflMx26jekid00pTw/zdKz7eXLGPF6ZdlUEnxQE/
	 E8hHhnZlLDpGZtz2PEF+p+FYr3CUsURCZ3DbjMv0l37Sjy8OrSbjphwHufx0U8sXMS
	 I3YA7uCEsBFSA/Y45LyknwmmbLO02ycXLsnTqwF3O3skXeAYAqp8ZvglZ/tpzbnDkY
	 cWoZ9vEceSV3J4F5KAv+IJwontearIcvTmKLdhIfSddiLnkeAtX9RCBkuobqlJm8sh
	 4zm1N00rfPi9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B2DCFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829735358.9204.3699351069366597415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4ef7da859b6fb9b9bc6330bdf1b31e634cb00e08262f47e38ec22bf3cb75c9
Date: Mon, 07 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728297353
