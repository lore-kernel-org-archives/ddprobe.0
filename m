Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D2718AFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776204454; cv=none; b=r5oM2J6Pmhc4Sv38CFnUtsydKZvr8oku2a9IRuigpIiV7MJSWSSyVPPLgmki+Aejh9Wh3JkHyAKVJ6DOW6SGtYyLVk6dhT/U/MLpvY4dOr/nteHqkjaCU6ogzLKQT0uy1YS8GIhUvAYwQYc211H4FM870RWcMIN3s767xZIU2JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776204454; c=relaxed/simple;
	bh=VUE4UZnK0WXSgXkay/nQlRdBQUvaiVBFZ6MW+ifZyQo=;
	h=To:Subject:From:Message-Id:Date; b=g/S+eOboM9xRekDjPutlOfabpbL6CtLmQuJ6K03CUa2ROnNPiONIxyhL1Qtzu7neValQCY5AInit0Tc117rUlm7IEYD/0a1haCxmRG5TMaD0qghqNPw+Ttq89fCEbUPPOAUnIRKGQEc5RBCYQW6iVqWGgeF4Di42YjHsFTIhP+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvtPnwbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvtPnwbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C272DC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776204453;
	bh=VUE4UZnK0WXSgXkay/nQlRdBQUvaiVBFZ6MW+ifZyQo=;
	h=To:Subject:From:Date:From;
	b=HvtPnwbQBwl3Ei10DpEu8pRUqRG6VFYAB09mssZG/Fn3yFrFQhkFWJAefsUqr/nvK
	 PFwf8SMMBbW4dkitoWwSWbNRc7rMCw3jg5XkFCdrhQWIUTBkWYHNgs3XTs+P0kaHqd
	 fNoywcfJJDEYO3TxFnz4F7+YhGbxUW0z89fy5WF9kc/adDE3JU+yDmKK0FC46BpNWL
	 K7Sbxda4jX/qmrXcCszlxgfcfoxz3tnaaZjMvSRZ759g2hLQLqpQq013cC4BDtmdNM
	 k1auayU0jv1dPd+JXX9E+LSH2Oew09ox4uYgrrkunRUat5dcnb8R8dR1+FNowGWzzz
	 s2i8NN/Bji/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD70CF9D0F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620445368.23929.5642362492388648550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851a0a3464cb7013f482a9102571f567e0cedb4972cf35ebd7bbe29a75934674
Date: Tue, 14 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776204453
