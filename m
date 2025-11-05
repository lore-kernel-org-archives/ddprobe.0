Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D00425291B
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762326594; cv=none; b=svE8h6pqHdGsy+sYk8Gct7VoYjG8YReMIJ695DrDsmAfsRWzsWuo8fYKs+2raYebVz6iVzg7PMhO7RdiWPVh/Lcj0Dx90EM0rS1AxbTjI0cXjvIDSWkoWxqKNFopLr6FiHKlk/noRLpZ2dEVZUwnGDdjlXuBr+w1nfc1esCT614=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762326594; c=relaxed/simple;
	bh=KTanlA02C6P8JRsD1uOVJBEb99FvdWH5NXOVTZh0MXA=;
	h=To:Subject:From:Message-Id:Date; b=m4SRaoMHEY3JgcWLoc1+zGUchvAli5X8MrWRnQHIsPSi5Q7BZKj8Xop3hbsg61CoKKHMiIiAxNTa2Nn4aDdf+nLSuLZrQa4XeF1jQ6RQorp0445C3MO5v3GgYB3JZIchkGAye0x1+xDnADoV3jojy21AIsNuWPQbjLCKh7H8vcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoGbMuc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoGbMuc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E88C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762326593;
	bh=KTanlA02C6P8JRsD1uOVJBEb99FvdWH5NXOVTZh0MXA=;
	h=To:Subject:From:Date:From;
	b=BoGbMuc0ETH5GTOaKtr4ujDyVjDlglXwbW9iPu4UGD7DwDiYPjG0keZ5Ld5+6YGGJ
	 ZwsvSObl6duQ5UTwVrgMolkrsxSlrpCBWqSTe8RfHmyaAHv2lounMDdwfIIbo2PpDY
	 zYzM2LckGZ57gOI4+8K0rC59/6uXCgy7AQmqyE1aw96IHMwxONI0YyFtsOa0/ZKQ0M
	 bOHHwLqbXx4RKMgo4FCgvEmW6VqRJ1yBVpGLNmMfZ85wKm/5dTio+lLdXhJrYMjvWF
	 wT1F06DVDmFjt00L4fxhe4hmRNzcsEXxXuC0GDvZ1U3+9H+20a1/TwNI+GKX7W2Rxw
	 PTbIJEx8xnQXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1ECCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232659358.6619.7360369863604204475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e173ceabaf7512bbeab9919a8087b81ae96c13d32cf48c541c783820d058d0f
Date: Wed, 05 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762326593
