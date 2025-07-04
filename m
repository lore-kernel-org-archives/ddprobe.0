Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09488281526
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751614194; cv=none; b=kDkOznGVuhusdBA6uIfYmew8c2waJauwJ0neemysnxfdwBK1NfL/A3V/qj0/ClJj5hPgYuOVfAtDSWsevFaJGiStGKjDid/PB3m4QPylr0/6o19JGg8OrM3mv665H/yPtoUyy8wjUVyZ8zBDWLpfj9e0uetHvhAn7PzFpu5RLJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751614194; c=relaxed/simple;
	bh=ZAx2iFj8+1ntLiv07HvsNcZIOQ27dCSp3wcfSZmEhEk=;
	h=To:Subject:From:Message-Id:Date; b=W+5NjdZsr4b29Qi2Nxd6NX1w2P35WKxAfv+G0v5257yYT2C6nJ+dhz9VRAEtEk5NLSd49coZq3Izj+3MIoSgOIegU9CUF5vgcg5Fsc1UrgXxazKP/IRUMv9d9US/ItsPDamaDLruaOc2+ziTmLMmqPQonDe9VEIbaz8AR5i0Scg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJRjGGFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJRjGGFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6A1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751614193;
	bh=ZAx2iFj8+1ntLiv07HvsNcZIOQ27dCSp3wcfSZmEhEk=;
	h=To:Subject:From:Date:From;
	b=oJRjGGFPh0oBOPWKyHkfhkIDfZMa8wFiX2sGmBOHT8J1VbwbTBwfIjDtNq2SVkNmO
	 POC5uZSGpD/b4X8emPxGHbJWZny6Brqrl0i5dTcm8Cm23gZhrEPCSV3ivU6X3DnUjE
	 4SmHq5XK0GM0lulP4gc8AFeNtxhaQCsqik3huYzKpXPT5qj1Dss1TtdVqWyXQdNNPN
	 1IWS44ZggygVnA3IImb46XMF8rn9Ct6q/Z9FsBADXLnlIxyjfN6vFoWvnc1L8sKq96
	 qgjT8NPdfS7YCurtnjpwdjXsrjS1oEz9sFjo1Yz2eNas4ZnuSlIPlOuL8FaT4reut8
	 6GusFB7CYSYTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD31C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161419357.23720.889028955836160336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5fd8a09ca46ded1b1beb79aa3d85e5da305a275da6505b543774403581a418
Date: Fri, 04 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751614193
