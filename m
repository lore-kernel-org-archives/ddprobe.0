Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2315D306495
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763991714; cv=none; b=Tl8j3Ft/KOcgo+OGeyrPcCQGSccFe9mKeTtxQ27jKHh9AYmuHqObxLnwXqfUifjJQEcPCdvfxGiE+dxEHjgMqMtx7+UPXjUk7Q3YIMQmueeHHvDpdS/4PO3G21jwqJcanR43tZaTOcjCWODBvLKxcHkLlsw13LeyvnK8UJ+xUWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763991714; c=relaxed/simple;
	bh=WybZqxNMEf/nBzkfH+KoCg3TSja6lGIPeCrZohE6WCw=;
	h=To:Subject:From:Message-Id:Date; b=cVPyIbouewSgOJUXq+wZsLMUwMfdHdxB/rtccn0vwM1gg4lyG7jhKCN9tU0E4FEuXTWx6bn9JDThB0lKVnhM+RZdwlGASVGaWUK+EO3S1W7CZH190ljhbLpx8EdlgeyHV9fkDAHu9+0qWcfSp2h1zmQ7xpcFQm5+EddUdG+2Iuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cM+4BYmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cM+4BYmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACA6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763991713;
	bh=WybZqxNMEf/nBzkfH+KoCg3TSja6lGIPeCrZohE6WCw=;
	h=To:Subject:From:Date:From;
	b=cM+4BYmIpYnh9fl/JV7NPRATWgcNs4UjTxzWjj/EDMlQmlGik1RXuWSbP3CbjRTmV
	 Np0dLtKTkmW7Sggg+aptxQcZXci+IWA4z81pEoaHImw32RnTnSBMDlNxUnuKEdB7eS
	 aMhmI1l++VDNY1hOrzFuxqk+1wbN4Cinwhbje7aDfc0CiP/eOdCm53csPM54vbH8fk
	 18LeotHhVJlGixJVVLDQ8Jm+m+YBstogK+AnixETPyAJHm/Df11YNwUcnfjmsGFUro
	 vL2trOQ0Dzt3ZRrhFzYa1aSbdcQBloHkd5N7axvoMEdT/9cTuG5fwe8DsrjMBkR6CT
	 e7dmJ/nCqVK1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905EDCFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399171358.2529.7239307860972157525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb467be6b9f2e86dc25d568b1aee2a23a721fb96976ee723039778d9d0c742e
Date: Mon, 24 Nov 2025 13:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763991713
