Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2840E3AD528
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783666114; cv=none; b=JBOOKuw0PVSO8oLBpbb1sw/uVOSlwFuqCbUDNFAV5G8Ew5QXFzZF4XCfDNGJJPPTD6lchQrg3Vc/lclLsesC/GZmmCMYeCE6MpJ4uPcCijTuuZ1LPZQtowFceLM5fpOeZu4GscrYoOQIZWEqagC4EeVhPXX0BkuJq2/CoSyMwMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783666114; c=relaxed/simple;
	bh=BE5ijnAAiWwygpCQjd45zxyJVg+Na5N3fTNO7QmLuSw=;
	h=To:Subject:From:Message-Id:Date; b=S01sKD8gRau4lSwkiKHc8OUcwhyDl8FuU4cXpaQnqXDlQudHt+7vsMLSKVoMAyDKRTX0kslCl7d0ZrL4hiSVGfxHs81gVuhqbUITtxoyYITrVGIxuI0Wc0narIzGzD/04zlrBKdEcqxYS1Jo2oDfweM81ZiWfdQ3ZY6uUYbjixE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIwvdHFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIwvdHFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ABCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783666113;
	bh=BE5ijnAAiWwygpCQjd45zxyJVg+Na5N3fTNO7QmLuSw=;
	h=To:Subject:From:Date:From;
	b=oIwvdHFHnBkkeNhiKWPJxvj9kCNM6YYROaHf+8zuDmJwgUUujqo7e3japvIw/382O
	 wsLEg34IWZJxjlPa/ZXwyzZ96WgOvC8Za0mDJcVXFQ/P4fNZmzXvf1MLxKjsxQcohD
	 oi2UNAc1KtytbHe/w/gaYsRni90CXbwcjI1iO4grRhF29/ADcxT1glM39sZU9TKB2w
	 6DnnNqYJN49ZY4qeBkZIgXU04rpybqFewyKj9diHZuLCcO3kK5JMHuB/fu/Tw6OUy2
	 6kkUTFfD1gTC7Uoug2IHaMKhUC+PFgtGxtK4JFlcOkjV/fCRu2zvbaP6dauME5n3KS
	 VyPkaifIpjMCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8803C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366611368.27574.12492935288244846808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66008ca97b042fefafdce20714b663c065b7e302ebda31f31a5afa5cb728bb3
Date: Fri, 10 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783666113
