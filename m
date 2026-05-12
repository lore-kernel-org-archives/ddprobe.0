Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB092D7D2E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778557233; cv=none; b=MP5WHPmjh7WdZMe+k9MSMj5DnHeA0DQOHR/sFjB4Y3efU89Ah1pLvqeKYD7hiqOlOWG5ZuBxks3Yj4IK+eFqEkFAUsu2mfH7Nq0k0ydBVTiJpnvhs0q8iGqQrSh5jSCAlWIQhzouyEsB2m4/DOjSin+oG5PAeJOQ/NlOj1GZexU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778557233; c=relaxed/simple;
	bh=inW2+H1AbpGccZZcyxApbuLfw6J+H+/iB/Cqhdx14Ws=;
	h=To:Subject:From:Message-Id:Date; b=jzOrYgAPsUxlcMUassAzN+6QyDAQUeHUpZrpgY2qkb9GpxfGgDGRQS2OZKs/791/R6KvEROHA2XRNmLufD5CEML68yttybdGivQFBcoaW+sjWIgyCdurqCxQVNVGsgqrl2pIeH/ho70cXhSB+TfAnF2EnWDcyQ4jzv2cHnEDV9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbMiVIwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbMiVIwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB33C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778557233;
	bh=inW2+H1AbpGccZZcyxApbuLfw6J+H+/iB/Cqhdx14Ws=;
	h=To:Subject:From:Date:From;
	b=PbMiVIwo4waJvgMxrlkVafJ1nCkQap7yyVGGr0404P+6RIh2UooXCL9XzrR1QA7Nc
	 aMvPoT4KKor7NyMYagchZ0uBX2KSWgjCiHzbZXVWql4yDQvjExKd8FD2Tdk+Ceqy4y
	 ysyc584JAtGj5U+oAOZ2DLjRp/PPu9nyWjczijwFp5Io2vRWhc7INO4i9OpFJrI5Tw
	 4HjEN2k4y37vWXkcIKnsPLvFs8v/bBrPe9+09U0KMBPYhTos3XYxahPK9KmVSqeflS
	 T+YDO6rJpuAJjimJWLdWqTlmJjpgGYbKu8OuhF2pzCF1CQg8XU8vTfpPmr516W4VLh
	 4Kea4rK07heKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD480CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855723368.16279.6827992271572576861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e534450b4e5dece6c050a082ff7c53f326cb04863c7440c3789c8285057e142e
Date: Tue, 12 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778557233
