Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217B630FC19
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766063034; cv=none; b=RSp4N73nR2poJDEX6YhhcpPggktVAJfs7KVXc5jyn/8xxUqM17lxP1bplQvGUAUDgUq3YXzId8XuIrKwP2NIMlNRfGQ7+8wKPTFg/tpTvY93hex9E4R8OdgiCgtMnFkTxsYgS/zMQBU9uHABn59JelFHHXpjhVfdxbKiQqcG45c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766063034; c=relaxed/simple;
	bh=mvKJmLZsp9CLTul4CazGZLVPlAYaE3sWjsjSMxbHUn0=;
	h=To:Subject:From:Message-Id:Date; b=a5WRvC5r8abdTvro/cNiBB+RIOW6FNVTI7cgTqKNjRxVG8aLWYzASGeLIraIWpnlLw3MtORLjayrg7eYJMaaBTcRmf0lWhCvsrn2PXttFCbB2zRB01QazOIJdCCK2GpG4tCDJEJm0K20GiJ/dRdFMm6w6UNJb3Nx7lEb8uPf14g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMlfnH9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMlfnH9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18E1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766063033;
	bh=mvKJmLZsp9CLTul4CazGZLVPlAYaE3sWjsjSMxbHUn0=;
	h=To:Subject:From:Date:From;
	b=hMlfnH9XbL7+q+aC7AgfwGtruXyvOxjY2hAWqEMfpEX+t94Eefx8nPXXN6XpEwlS7
	 Rr82ccWQDf15/JL8VWVJwUNXL/yDG0DaAeeeGtEis/S562VcJUZPJ2xDnz/+FpPJ1g
	 nvSbpi7umoumU4ab322Rf0N8lQ7WsB+2YM2b7AzQ6onS81F2MY7s9ETKUkpEVZDdNT
	 GCytNVP4dBdsCcLmIdzUYpj6M2FBeBXeK/E8FulGWQ3G+GNhzGPw0BJY+oTJTFlO6d
	 edTQOCPONEuPqsfmrE+LtCpFAyZyVRsU1gdPq4IzebgFj57ZMl1WYv47tL1dIqfg/l
	 YS//TFXoe9p/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9097DD6ACF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606303358.12260.6548613634915525999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67c44ce3bd0346c36b35786ea874ac210ac3a3980ffb6e0c247ecaf3d8f8b5a
Date: Thu, 18 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766063033
