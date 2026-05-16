Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D08224B05
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778913634; cv=none; b=P0buenAN3btUpvmkF5B6MutIe3FUXcqqiNvs6JpEl55mHSiWlU7T/Mo65syyQ/+X6Q7bn2xMwoa0/A7M0Eq7aoD8hSh6ABzbXxKIuw4HVEm0u+/2mV3SC9pGXtRUJdb7DIccR8HcY3UxQ2kZf294gAOkYgpmeiodgwNngt672qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778913634; c=relaxed/simple;
	bh=F/s2+am93lfK0FZVs0QKql5FF3ZPRXOpn0fkBjAQjcA=;
	h=To:Subject:From:Message-Id:Date; b=ZPh3OQKJ//pEXuTXdyNdGOMauhLTM9bScalyhrPFpUBrqMKV4f524tVuDHVlPd4r3NKrSRfLjp88Mv8bzioGTsCJapZIJ+DCSmIFTe30xTmPTQxgh9q51eNtkZLkqqPrmLMdYFdlBgsN8PzaFMkZ9xZytvxFmGn61Q5FqcEuWa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fshO/hgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fshO/hgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2F5C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778913633;
	bh=F/s2+am93lfK0FZVs0QKql5FF3ZPRXOpn0fkBjAQjcA=;
	h=To:Subject:From:Date:From;
	b=fshO/hgOx4Ao5rLTyv326iiEVbf3ZsoYVga/81OyYOUCW3qlI2IGj/KWXpxBGsFQQ
	 1JXHocDU+ocxjTdmxUV58ivl5T7aKkq0fQCJcT39ZPrLZjKr4oywp7yH10U8zjYOrX
	 Y9bhKEBraiyJeNNLgjoEDIM4PrqKRliFFlNz4a71dQQMiidepBZRRjkqKCb7N3mFeD
	 hg3ZTXPoPVo0uLLj0qOpW1YPItAuleSnm47NHURyaZy0eZ8xgeBFJlnNKWbqBFvQxb
	 a7C0U2/odWQgH7lujQsTA5+cLIUajMp04C37Hfirgfo72KqWdPDA1mXy86FCuTsSMj
	 5G737CiA25TIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1DBCD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891363373.3536.12344708432395096181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be5578e3f0d9fa6b69e9910ea0171e9c4c3c8e5c202e512463991379895e67f
Date: Sat, 16 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778913633
