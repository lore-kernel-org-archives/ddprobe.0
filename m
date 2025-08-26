Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F6D22333B
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756174794; cv=none; b=tOJB/lUNRWFOsyJzpcIzRC1J+oH5kqja5VW95027THvOUvtVlM1QleAF4Efn1cQrFvFcDBZhBGO6ubEjakX2YHxI0dWrPrp49BmyOtAdg2Bj8GBqVOsaMcUB1EMwYBbin8G0+RgZ4d5UpH3irnnDBhO3hF0Cr6SX9P1aYdSCa4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756174794; c=relaxed/simple;
	bh=WNARFxlFa6XHY466mTSf+ed62uB2wzG+r4Mtb6oFXTE=;
	h=To:Subject:From:Message-Id:Date; b=oFpKmm8QvFdfWswAVBeOriE1fVjsn242yER7MhdvwIOFt3DLWLalNgFr+59ICoOiUHTE5Ye9MLsPpeYuwWFGoXK9iJCcDS3zO7dXRfjNxWfPwfT1Uc138S3t1kISk0hszdLfbitb4C35ZWVoXk7NDhKkcJDm7+/xQVPFqnvUVQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVsIUBQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVsIUBQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7B6C116B1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756174793;
	bh=WNARFxlFa6XHY466mTSf+ed62uB2wzG+r4Mtb6oFXTE=;
	h=To:Subject:From:Date:From;
	b=aVsIUBQPAg85SCdgEeVLTvjdycn80d9esl97UrCldMfl2mS2KIbASvpN+xTQEC5t2
	 aysRTy+MbITnifFQw46E+w9yO47FNa4FSgez5wvrAKMc6c2BBBHTlTiu67oM4VKUXX
	 t/cuTaFzIbRxqkmZdVLFm7Yr7GQgjzuU3zt5T0c2VnP5nvSIj21lIkYSC1pSHM6Znd
	 BoDS31fIP48x4/UHC6XE0XcpA+A22xo/1t0Rji7iO/mxYF55f1TWJDIo9Wc3auw4+W
	 vnT5fTTFmkuYMup8L9Fas4oijhl01XWOIgVM3eXiO6bcb9zn7yjbIs1upg77M7bwPr
	 UFssnvakCGL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F415C8303F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617479357.12777.17632707824455282623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172b0a36a59b9c8b7b5d24de7f0b55da61e4ab13af01f352002623dc922eb656
Date: Tue, 26 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756174793
