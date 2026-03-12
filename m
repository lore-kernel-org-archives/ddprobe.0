Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCF8282F0E
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773296094; cv=none; b=oIJQYgSHT0h+GSv8qvrT2kzWBtMz/Ieo78CLKmjpbyRS6N5NTEaJX9NbcOp2BUP7i0Dk6/OFmwGEx4GpqUyw/dSkh6sdWlOOsNNEm4ue8TfWxrGjqKL7lrVEjbqLW6jfuh77vcjhk3buFhmAwg9iRLoxDfcS+K72CiyZTMYNgSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773296094; c=relaxed/simple;
	bh=21X1DjvAFQrvuUB2X8yOhfrcCHXKJQKatdvj3Cw0Qpk=;
	h=To:Subject:From:Message-Id:Date; b=eLNHuEnivSXYrAvnWZ2OOAZQvbsQu8OuSkT64oDUaAF26XCn1zrYOrfEe4amoG0QKx4IasEHxO/daiPxVFljlaYjQwVJuQau2e4JPP3GwhtwNoxyFt+L6ihs6WRjnofmHPujeyRmdaP85lV14CsoNfKcW+VX2pxI4Cv3hQYQ9BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFSR6gbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFSR6gbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F4BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773296093;
	bh=21X1DjvAFQrvuUB2X8yOhfrcCHXKJQKatdvj3Cw0Qpk=;
	h=To:Subject:From:Date:From;
	b=EFSR6gbKE+0QiNy15grv5faE76GRVAuIhcTo3KPZgazjT3rnxe8W7cYnzTXaeG1Wf
	 suKZnEH1LYn6DnPQMi73dKy8Sx9wjBQCq+zwZ/y1tiZesEaxEj7qScbfr2J0LmJ+iS
	 qosgHB8CkbKeL1pRnX+mnDqSjooa4u2QrH27iGypxVDgSc9jVfLmGiVetfXzFUy6az
	 tsDKDKLICKKBv5GFgrH9sBLQ07OgdlUZR2Yb2Y/aWG4SyMAnUBS8yXLOIsEMD3LbxU
	 o5zrLWaGl7mkysCcjEn5iNKO4C9qN9QmrlFLkqasoDyVCKpJMcc5NfwbBl1tlz0WAj
	 NTA1gMKsFT+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92451FED2D7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329609358.31857.12323940641184945063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe1051a000da9a1765206d56802fa414b69ecb6ff1158626a00f65697295003
Date: Thu, 12 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773296093
