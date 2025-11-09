Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029A3305953
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762708794; cv=none; b=EfZ/0i30B6LhX0VNeNIbOA2UNK0RIdvCTW73pSnVlwI07W2xHYZhfqiJ/VWZG9kqUDiePdecydfCe03KWRkuvFTsHv4EcnTs8T42O6jJyIJbp7OyQLPMerEynizBqBBQuObz/Tn0pSvpbaBkhgXgTnL7gky00NIVAl2JYW9yLx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762708794; c=relaxed/simple;
	bh=PIaSxqmKjlotottiqgkagWSMFJCjBYCM26wkX/PUVpg=;
	h=To:Subject:From:Message-Id:Date; b=jtUCCyXSfxg/5O5M9NaCO+dy79Sw78YLFvoF/hAmAkjN2CGya1KWPh6qp0Si5ph7jgiDVaF6jf3P4pjo7SnWvl1Yd61er+/UzcNNHJk5p6afG7UgXyJSHgKSYlkMxPGqKUgMNTJOf5KUT4+v9dwL/5XcTiPPm+0vJeLD6zE3co4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9jnGCL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9jnGCL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCAAC116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762708793;
	bh=PIaSxqmKjlotottiqgkagWSMFJCjBYCM26wkX/PUVpg=;
	h=To:Subject:From:Date:From;
	b=G9jnGCL7KbkzVbzrzF02vme+U/qqCAlaS0DH2eDCmuRxLncf8UbQIz+3sWg/3EMbG
	 aEJ6tyuTRDHWVn6B8eVKHDZrRjoYuLdk6bXbMR7bZ8wxMQ3jBncafOStE3hJgyLMTR
	 A+awi0FrkzFxt5O2/wFWUWLnP9wfCXFnBB308M6koUCWSAM38iZPJxNvay9l9qP7jd
	 p5cogSSQfaohNk7JI16bJ5cEBK24mX18Wh9sn9vg6IswY60ISnMiTsAKpCNKhyWpjq
	 0mvJJVr0dNaMMfy6tI9zwWbHgiIo1bPLFSN8BOOAUsVHs+Q9SsfTWA2VIDKdt4HCvk
	 94N62TrdMWeMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F150CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270879357.6098.8324457379900002104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c56025be15bf8da42385f55ab4b2f47357a9038bbbd15d0d910b6243069782
Date: Sun, 09 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762708793
