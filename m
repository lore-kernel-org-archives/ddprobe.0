Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3170A2F5324
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785816034; cv=none; b=bz7kaFD5VgO+GL/+zfKM41U45p8sWzxC21IQkheiGmv+NiluD6rpgEUNeKVIOBULC3VwZIBuDRqF/9xlbwtI6CCm/gcCcvm4jO1w7lzPHBV+2Am10crgF0eEwgX+HPLZByG0s16LLHJ7FQNWFe1bRBls4F0rju2Tma9KsPIE1WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785816034; c=relaxed/simple;
	bh=pnbWDNOkMfEhfNoO1+URb4u9+x123qlbiyr2YABvlcs=;
	h=To:Subject:From:Message-Id:Date; b=epKVWTW9mTHNDcMHtD37hVaMvGWebOk1CYKGXVYR1XbZ7ULg1NiaIkBLGdiMhQFsInDSvkHVgL8aTgy/VMJ64jCgwDzZAjZCOFQ542gE2LcPPGWkouYZUJpgdxtN+h+EDVqppgjmCSdrf+EjTFMVTAO5OrwJjKMvubiMef94kR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCF06WqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCF06WqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF957C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785816033;
	bh=pnbWDNOkMfEhfNoO1+URb4u9+x123qlbiyr2YABvlcs=;
	h=To:Subject:From:Date:From;
	b=uCF06WqHPB4JDFK7uGz9849fuFG0lRG5FT/IaNx3cRPODTrzKbK6ZgksorVdqzOBN
	 POUoWabbUF2twN8GZRPUAK5WlCE+ka2S6kqie5JaZZ3DtXnf37zSWqtDxITZK43uKY
	 EQ1LHqeDSWxGZkm1+4f3HZrU15KkFRJUkAnA7hMf1UP8LoOyaC4FGup8s6K47MGHSq
	 0DzAKKWoLeDH4pFc8reQ0bJM1PGbPDlLNNYTmn8hhLyGmQhbjN4iqy1EQs/7T9rUJf
	 ImYOG78SxxIlsHZQJ52mmT+uW9oOMVDtLfyF2W1U6aNmzFAXUaX7HMp0XbToSSrY+X
	 ZFDRoececdQQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFBBC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581603369.27785.16097120162489941017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa57a25c6fd48f935e5e5a7e013852533d55487dc16bf1e6f33d4c2b0d5e75dd
Date: Tue, 04 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785816033
