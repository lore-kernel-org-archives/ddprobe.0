Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAEA848C
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734933354; cv=none; b=phCASD5SOGVJL3cPPgAYvTJUmS2TukO0ayxJv29X/LY+nX2I5yqU/9rqctfneZchPVhB80cNNGCemMa2LNX77r+Q70sTa/BeTj4hyQcMdGtoJcC1r7gBldOG+oTpvSMCzd4cD+NRLF9xUTburdIN2S2BlgUIMv8FcHUys/czkJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734933354; c=relaxed/simple;
	bh=PzxX5tsTWivpnUoeB+fwXAKxbwM7W9zwpP6KdKQfvVA=;
	h=To:Subject:From:Message-Id:Date; b=plmYlI3BlG3sCuJX/5B11ZN3XabtGEaNWg+Q94WODANdWe8BIFtU4VL/k/kG1SbqMfHOz7nOiVCzjpZklBO9CbnoOa3JqkLwi9SFku3d+3T+W0dzdKQiu7TmzcmVL1qJ+XHB+P3L1xXT/nI16TJl5n9AqFZJ/bI8fD13Zq9DF8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e023hB5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e023hB5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABED3C4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734933353;
	bh=PzxX5tsTWivpnUoeB+fwXAKxbwM7W9zwpP6KdKQfvVA=;
	h=To:Subject:From:Date:From;
	b=e023hB5ru8CBtD2HQzmI8VS0n9y6KZiP3T94bvZf/rm1wMC+8DmZS3ljOn49sG7C2
	 lgTS/mPpv0SXcaAANtBrwk989VrbPKyS/8+HDrbDauJ3wXCenQOp7ikmgh7NM4CtK6
	 kcMJXhd2s+ync/NgAG20qMFd2DMFRv+M/ZuICfQoca93yNBZqVMoZfB8Oef0/8wg07
	 0NRgXgRlC3oYM/tp7X86DjbUdyuKXXfsj98GmUPPDfltfgmVieiyAo6BiPapS0kJye
	 zcgUZ84o6O7lFqEMnjIi/juCVndXzuF80WIp32PeVbor8WvG1N/Dbc/3kLjJRuqM1x
	 Xx1rMzIW4CCjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97056E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173493335359.11574.1337060468670507980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1335280693cea92bab087d16c3a319e4c985a3f1bc32598fe7016930758a2dbf
Date: Mon, 23 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734933353
