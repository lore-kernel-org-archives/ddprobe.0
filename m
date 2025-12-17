Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D1A341AC6
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765974833; cv=none; b=pi/vZo+UMWrvEfulr1bvrQlcy9A0lvPNvfqXGfFE6oL7dPZiz2hmI4+bz/joD+UPIEk0E8UIwytLoxTfBWL8mi/LtsmKw0SDX5QcJ/Ab1i6ut49G+9dn5O3aFbxaRvUgyazbxr1xB54B50GJyAVaMxlYwvnpjhs0AziT3DwlLS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765974833; c=relaxed/simple;
	bh=hWyAmbe2UzX/ADdtdAkNYLw9GXCylRV1THkHerQ6kKs=;
	h=To:Subject:From:Message-Id:Date; b=Tz/FBb78yWKZ3ZM4T60lalrok4WEk3Xnym0m5BcajxUa91x1tT9FblxuP2lvFKQTubkapS9l1JKHDOFAJ6BJX23GQ9l2uzplr+Sy7c7drNC4m5It77g/UevgYtt3VvUeZ3uN30ySfcQ9eF+3uPYLaVa4p0KC/aRxH6WX99VQXHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WImDB979; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WImDB979"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5883C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765974833;
	bh=hWyAmbe2UzX/ADdtdAkNYLw9GXCylRV1THkHerQ6kKs=;
	h=To:Subject:From:Date:From;
	b=WImDB979TOsSbpqvO3aM8KeM3/PtqBOiwlHNVY8Dh5w9m8DJ+ZG+/9RzFUDckK5eS
	 FF1FMne/2jEsaEvtahDVzwT3LvSbXx36RvjkIobdp/NLeNTzMe8YPSDHyvGGgYUdFZ
	 UPEdQ2AlrJhyRWTZm6JYyq0rxt5s/At5JpxXP1FzzqKH+9qg2f8jqSdtM7cSVJEtop
	 kBtkgHwPjvNbEqwcFZ48hq/1WubUbLaAZnVE3Lu2cgE4qwapq6/OXjCYP/QXKha2XQ
	 UlMyL9Er9cmaM2ZJtzHwTlapNyI25BqsWqWkqRg55Bv8z/74zl2cfO0yXK1yJ9uuHF
	 CRUhQA00jqKPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95867D65559
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597483358.11997.7176982124527145262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be953bb9037840cb15b17c7564b6e5cbca05f321e87b4cd30842201f96fa12e4
Date: Wed, 17 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765974833
