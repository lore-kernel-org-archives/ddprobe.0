Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CB71362
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730865954; cv=none; b=VdmxI8qkFQ//ywHRFgpSA8XSGvcjLOMLSY9yk6UkqZ4WvehKxo2WS6b3ONIrJ8EvGWzdcRlF8u5W98jfakNlQyUEbfa481sktyav+qA1MszKvHEinr/aAcqZ2lXDVV3id/z/jjg6C481COsBxApCXPboAE2IApyHxD4WYA4d2oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730865954; c=relaxed/simple;
	bh=nekRLKC1Supn1BIuNUtj3GTIsCOVDotLwjJcLhe8wFk=;
	h=To:Subject:From:Message-Id:Date; b=qU4jO9m9A6UH77nEBpB8x+Ij0FpBUDBmPuObGRyorg2P61TDioX0P+hmpNN9BgxtGL011q/YpXONb1Vvn+b+z/oPcfyCqnoWcbh5xBrPzSlRU0XCSCYoiVqmUjePVUu7Y/nl2Gdk9lC3ozjAPHjuZju8vHZAizUnah+KCavnDR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjv/69iD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjv/69iD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B05C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730865953;
	bh=nekRLKC1Supn1BIuNUtj3GTIsCOVDotLwjJcLhe8wFk=;
	h=To:Subject:From:Date:From;
	b=qjv/69iDU6I6pBl3T/PkxAY3y+XNqCc7QjrTAWcNTQGItITdZ0QcGEiBzPeNfcPMa
	 3P6g/Ny1u/UKvzdCgaOfVS2IV0C2DMEv9udxP/ZVfkKqfK0E7ohLTpewSkOYjUXj3h
	 ZqtItxGrJIZ15fMapXk5Me0MpLZOSSpvBwWDZaXZiSlLdjghAFwXS6GlGCajBC7JNJ
	 tm7W3ulIBSUYECEEsQyv+UdtcqUJllKJ6tyV5FMeYJWTiji8kXFS3mzelh8mwdNFLG
	 eR4u8mjz1+Td6vpX5SVdK1crJD2F/F+u1nAQ8+JtVMJy4U4yO7XhTSwc2wiThY7Oo1
	 iJrzGExQxt1DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9339BD3E788
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173086595357.6624.4777721894097294265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e791227c58535843d5b88cb3639bd6a9ca28cfb0c637786c389a0c52a6867395
Date: Wed, 06 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730865953
