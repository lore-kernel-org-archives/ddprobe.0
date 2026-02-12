Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E55325B2F4
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770929694; cv=none; b=khwXVXisjB3R+VJSufjsG7fc+n8GAh0eZwvvQlGel+8XJSdR+kcccw6CCa6rTgG//X6WxinY9qK73y/OoBVHRb5Z7Bj7iyX4TzEGHv2W0VOfp0pY9q5rCO9GZWralF2Z9J+2j96Je3nCkJ85aMS2SnexBwWxj+hqJZxWP4Ib1eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770929694; c=relaxed/simple;
	bh=KcTK1SZd3T76tfhsqbTyZkw63mVo9hwkopeSD34Cz3E=;
	h=To:Subject:From:Message-Id:Date; b=DlkqJEvsIKSlQpaKpF24JbRozXPk+c9zUD9uf4B/bPNf5+ka5+/yPauvtJEkMFaiMvdwGSKhxUHXwyeozlbLjM4QOI7nMf2IvA6M+s9sTNM/3xBjQHStNoG5BJiH0sNA6iVIc4DM99CoV3PDIZ/9SUKPl3T6+oLDONABB0iKUP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEUqqWFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEUqqWFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AD3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770929693;
	bh=KcTK1SZd3T76tfhsqbTyZkw63mVo9hwkopeSD34Cz3E=;
	h=To:Subject:From:Date:From;
	b=cEUqqWFpG9fCbVTiHP4EdpUjq7ogFSQSWK0ryx9eAeHUWVOgS3xjoHZI+ok81/Kvk
	 2cdOIbnTDlpo9fY/N4BdtdLdxXPhOQ2r4V7JVCPXFtvL57JQbLSbnXTmBpGGsktTu2
	 z0jETQqklPEYrIi0/azF/KgRnxToFTX1VOqqm9qTA/cx9l+EJ3N4waiDVlGxTX9r+v
	 7yqp1CvSGT+gn/Z3LEv6FRE5jinEGPxneCfDcZPpZf8JAUY6iaQrev6Z4XbP770rd7
	 JQR3xS6RzQwu3FF1RjB0QnkKBliahIxe2cVZUjC8cYoXaU0vZtn/hW30ZLEgF2eMlJ
	 PXbMlrUK6OZ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B566CEEA84B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092969372.3383.15034101785757374115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53045a8c05cb10130c3df198ef8eca32f73dc53125b4bd61eef64b8dfaf12ee
Date: Thu, 12 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770929693
