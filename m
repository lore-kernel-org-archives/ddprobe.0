Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DDE537FF
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728505554; cv=none; b=OAfIyQkscjfld2rs1bt3QyXUQ6evlHmdVrOpoOPj8ItcyF8Uz/rdnZdQ3t4IuHaqD1WZW36yZX3enhalCF8UW0RXQNaILT08t1XuWOty4J2Mt+oJZ2Lzt1m4Y9ALgEP03LTKg52Rd+4Gko67DaMx3Q+4ktdl1j2uyFt/KVonpV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728505554; c=relaxed/simple;
	bh=xY3ChzgH4q8yVarhd98BfntI+Xmk98+JSKjUV3OvJFc=;
	h=To:Subject:From:Message-Id:Date; b=VW8jWFHjjzYgJLHcmWUucPyZ9H9i/ouQ5yvRfN/yCe2EMCYyhiAYGefDu30xDZCb8fqK+bhvmM/L7miVUc2FHJWcSqoeGL91ypj9/Sku0BLl38fQNdhXNurrC9em4W89q4E6m1HPosNsOMaUFpeu/5dD2AVMe1PEFnDwgDZkIHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrUL4UCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrUL4UCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC382C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728505553;
	bh=xY3ChzgH4q8yVarhd98BfntI+Xmk98+JSKjUV3OvJFc=;
	h=To:Subject:From:Date:From;
	b=CrUL4UCBhBuBIAjZK0cUFITE/wsPQxkECqULUSYxqyJTHFbupcGL+0NBZTDvxELDr
	 ZNnPhX7xyWYbwabeuob99q/Dg/yNDj68j78GQRSbAxiuUDc0Zpr4sO/9HLd1xUpehL
	 DxrR11n8/TatBEIQZH4xwXOb7tsKpxN8Sb7Z8CFuIT9iyxlE4dLEYqepeYM0ZAh3iZ
	 VqHRNcbdQ0f0OQyQNRIVMWJr0zbixjtv8JR6qFsn0wV3Xhb390weln2chpKGmSRT9u
	 N8Gn9frpCuYJ4YuvshgDzZplrHR8kGhmudpobmwREerO5gwQVldmYM1V2n7SuWoNN3
	 7SLsV7eurDZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF49FCEE345
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850555370.10197.16948157139036667313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815cb3a5d8ee723b112d29ef2354e33ff998030bab97703ae9a99396c7fbc5fc
Date: Wed, 09 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728505553
