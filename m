Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD250276
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728962154; cv=none; b=BFTD5lJ2TgXxtiNG1l2eXF9CiP4GRK2tpHDosipIpudVBZWxlZSLwwFkvYjbDFYRupOIMiFidpxvvi80GgJ8WN2hn4/ec1qc1fK9nGJAWHssih4YnnmtBxV91xZxQGI6uwrS/B5UW3wrHa5sdetcrjIF7YIg/aCa/LnTTIivlvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728962154; c=relaxed/simple;
	bh=5rDLbikzqoAMc46av2seeUk+npnYTKb4/rnTi1cZGXM=;
	h=To:Subject:From:Message-Id:Date; b=t776N2u84HZioNWSN0lQQKV07bJPz0NlcGM0p+dPZoncFTMM3MS2nWeDZpLlQ0FQnOG9qLpSLg4quuuzvuSw3Ge2PtFIX1jA7N/awtWQ0c66vCUrIw89THUuf5TdaicjAp2qNbe/qtTRPpzQQcLZbhl7w2nCK3dR5GmxYAYebZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbehU/zQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbehU/zQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A974DC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728962153;
	bh=5rDLbikzqoAMc46av2seeUk+npnYTKb4/rnTi1cZGXM=;
	h=To:Subject:From:Date:From;
	b=EbehU/zQEhP1YVnFKfPKFuuvM5qNqbtZfVE/6hCbOAI8rx/eXfNt4hUgZusRfjBce
	 yrKr6RN+go7Hi5YXMvEM6PBfH/amSmG9o2jKtNnzlgT8JKhEm7SteWTYy5m8DTrsjX
	 +47UhGJG0qUFwEf5HA0DDMp3FWhWGD/tYgE9IehiT6lmq+BAZd5vJLX57bghtJoYnx
	 VGMeH61926OUVbiC4bbrjrlAA0RhdsUaazEfdEp0OipPTucQMWTus7Y74YO1rGhl1Y
	 xUNXKjCeKTmWBlucwEqm+V37dBmnrqYZVhC/E01zUhdFkPpQhQNyBNFOw2KSSqF1GC
	 U05/e4XFX4gRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FB1D1627F
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896215360.10856.16130913518158205546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e64974e24dd9cc720ea4b84ac7c7e00db508b2280acbe6712b3be2cc03b4fb3
Date: Tue, 15 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728962153
