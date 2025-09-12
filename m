Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2451F1A38F9
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757656194; cv=none; b=Qf0aQWNwq9EoX+3F02PZPu51NOfMs+srZbxS3NYXBW6U588x2xfyyg1XkDup8oVtHgUQdL7zhuuqKrIIdjjxQKHOPzgpF1SI2vM+GKC0b3/vq324E9yG9ovyjDqTXGDXOyJXpj8Seywh2SzsTHteGAtjrrbRhE6t/cUmKM5pNNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757656194; c=relaxed/simple;
	bh=gL0+TzUUk3xnocITBiglBzzkUaE3cGNLegwV7cqy8aY=;
	h=To:Subject:From:Message-Id:Date; b=MKizF4lA/5IxkpLpUI6c1zdQugqjXfpNDYBq5pFf0zwwSJdGVJbI13WBe6kZIZTt9H0pEr8bobZo6eWgvSRa32TCl7CMD6CUVGoZq4iod7mQiZVefUCmHIXwVetlTyXnNfBgdzTJIzn08uvFbsk3M2+IPcaZdrdKiK2vymm3+RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP2v2FOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP2v2FOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBACC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757656193;
	bh=gL0+TzUUk3xnocITBiglBzzkUaE3cGNLegwV7cqy8aY=;
	h=To:Subject:From:Date:From;
	b=CP2v2FOFy6NHy2B5RcJ8xceoWS1rgtloHkC03Xrk8Oa6V+vTK7EDF/y7A1FTu0Izp
	 6rEwAioNpKzsSm9Q98NDxKzIb7H/prx98QT+V2qUHnixJTw3/TTTAyK+J+u/2oozRE
	 kCvKlWDqVgrUegLY35L6BvTMDPzq8Q0ZYhse4ZFeVJJ+KjRpY1HOE84LrKQSo6257k
	 mypfxEVAJqu6Q/0CF9ZroN2n/gdlSaU9ErijLHkrXikxUCEkRhpZFUruMkOf4uN7q6
	 erEU6PEtNLO+GiVkDp0fFV3t+k2JF/zcSTjmBRp5gqfc89MupHHoN8APgzbTeHOZEh
	 NQGUfUeLMasAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E70FCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765619357.12234.3112155183297783371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0555efdae9707f48449552e106ef40f4bf1b7f360dc211754f41fd0edcbecb1e
Date: Fri, 12 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757656193
