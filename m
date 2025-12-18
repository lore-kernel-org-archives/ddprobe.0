Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F56B203710
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766020434; cv=none; b=e0pj2AByVpl9idbPv1MSFB8ElIlFuHL2MXpUMfIoEM+DT5pInO3zTrKDi14I7I+Co+K7YU39wQAQPZczuSzVc3VurHu9SF6zF+YYaYXu436baNZ8w8cZrqk8cvGhYsbNb+VF8zyl6238JcwZXfSH5/rrAhHW3Fa8qclmOElVdWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766020434; c=relaxed/simple;
	bh=49HSbDCqDN3ER+FXAZ7XDsK6UGMUoZzYv90Rm+aVo7w=;
	h=To:Subject:From:Message-Id:Date; b=qUjAl1O7cNjiSNcB25U0nVHeAsVV7H4Y2iBNZns83+zHZ0N8M9T7KEaBu8qnTquAgwR8iQD8SIhb1O9Fm3YpUJKA3ZgILamOlJa8nb/5MAlVNXwZOzipJajdr1pBKXBxUBinRNM9xauKXhhK1vi9r4q66IBmhF81FC/7sU3FCs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ex8SjABv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ex8SjABv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BDFC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766020433;
	bh=49HSbDCqDN3ER+FXAZ7XDsK6UGMUoZzYv90Rm+aVo7w=;
	h=To:Subject:From:Date:From;
	b=ex8SjABvR/FohmXThwhGj9GVOuCBupI1k5Huv0Xo4g+nARSXL+shLkRizVOeU1oJa
	 TTDCFEVTUDkmi7aFPyr3KRxdJVZ2x1Xgg1hDCSeNsT1IM3VgZjtNcPxHhoa4YL+7Se
	 KxV1mZlGn9BwecOyDpm6odk9SqNGNaL31sPeTGTMWoEONFxuyD9kIJjH2geuTJNy32
	 w6bxaml/+dCsUla9W4J+q9R+JehcgxCwKzVtlhDXtiS9hcyQOzWcbP8YNNjyjmcmi1
	 RmJrrvaMaztUTlnZerkIdKKNl3mqWHbC59Ck77w4uoFSxn0y/NFoaDV2nyHrUauRDo
	 f++XcGVvdjNjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B93D65C7F
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602043358.26235.5290683413560637133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b32429be675dc6eea6e2fe75dcd9c55f41001a5a1473c9cca172044118843e
Date: Thu, 18 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766020433
