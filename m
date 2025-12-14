Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A29B264A97
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765674774; cv=none; b=l49lYi7BA2s81Oe6pTq5CFTy1yuKCaRQc00rWbhFhTKpGz1BgMdFIumthlBoyOIfAsV5tRY5T5XtSxP/Z4nFs9pSkhP3E6XUTFWQ3RgJ6peKUJGWdki5LHOPSgyACAfLsWDMWupxcl+FJ/5uazzWQXn2eaII35BOsAKa0hYfz1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765674774; c=relaxed/simple;
	bh=cVTf3oEw19XywO8ksLmCQRIcJwny9e78lMEK0ibC3pk=;
	h=To:Subject:From:Message-Id:Date; b=CnujhX+pl5Pc7ymKW2ZizQ7KAnHy9jzTlddu5TuCQsR3BDStcGzTCNwCnxP9M3IFw4zw6JOI3joc/ENS/itCHFZBHC5Vls9D2OzwJRaWwWWQuPaU1rIxe8wN1Mc1bCujA6lQwxpPq42waHOlV6J9cWnKkwVFlaNC7d1ySq3lvAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euzVwzyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euzVwzyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765674773;
	bh=cVTf3oEw19XywO8ksLmCQRIcJwny9e78lMEK0ibC3pk=;
	h=To:Subject:From:Date:From;
	b=euzVwzyor58JDi7CgMI6DNyuZcfNPk9PLrKbYo37j37uu/ylZVqcPdg4PJHlR/ZQ1
	 ky7skBnQ3MwCC45PcZRw1I8Dr3aJRClLwvWEpS2Swh/eKjh5myhBqTFbZykYGV3FGM
	 9YdzrMrVJeyMK3ZC4Mheu6XnNMLFji7ZKZju4ywDqF//sexyGt6+u+LmJdmanW8ik7
	 laqKzPPsYhwDTCvcxzz9iMgR5pbFYgRVGNchIPs4YsBelTWLENy4LRedmIbwNyfYq4
	 c1F5pXheqxRk+ZigUB07ZrSjdbjbQLJZFJuYumk562U3GTsMC5tQ41NxKsHWgbnbbe
	 iO71HT39UrKgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9678AD5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567477358.15451.4363577470882542258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebced7097c3a2a8f9d21e3c6cedda3a839c6222eb2223d8ec9851aad5a9f24c7
Date: Sun, 14 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765674773
