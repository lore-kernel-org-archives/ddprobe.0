Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA064C97
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767146634; cv=none; b=X1CItS8t4fRQ97TYJTWHrHZzG4scZ/w6ddRGfDKsxMqom4QG2rA0GAtZnVtGc9gf0i3JCGAkPMp8BjtoGX0GzuFyBB+Tr5tL17Opwh3hafYqm0xr6X+4rCarqRqRBJbwsrwtqHXM/yOh15O0PQaalrLssVM8hk+V8w++j/0p538=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767146634; c=relaxed/simple;
	bh=AwoPagJlnD8L/Dj1gDNbBjxNI/Hc49jRGWn0AVtWgY4=;
	h=To:Subject:From:Message-Id:Date; b=MR+Vdz8sm7kDjQTvA0cSBmRPXS/SDKKKx23OZmc1Pmny0LfHRGOK3XdojvTyM9s6HJjKO9cfFwSHNYY03xbfxh0OHE1OJ5VbBzgG7wxN8tJe2JloAvs+TB/wsBzK5C40zhP020DMa4Gq/5l2WAie72v2TWHYU7PJFF/jCi78AXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViGqQyA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViGqQyA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37E8C116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767146633;
	bh=AwoPagJlnD8L/Dj1gDNbBjxNI/Hc49jRGWn0AVtWgY4=;
	h=To:Subject:From:Date:From;
	b=ViGqQyA03mjMHunMdbrgcunddRPi50pLPhqN7mK63s+NG7T9N60kzNq3EmrWVNZ6c
	 06w4VEGAI5ewan8N3aDpsXhUKLJK2y/FkN9yF0H8ruAA2SGTf/tRmYSjo25Z6om4a6
	 Gn9QAtuKPVu28gQhxdVJuu15WBCLBQOBFy9PIkTRbv5wS0ygq5dw8Sjp2eZzBLx4Yj
	 wPG8wjwUm/eym6L5yPV2mwVXuqM35P8c1OfBbGiitJa0NVC8zmpM69d6OswYaeUsgE
	 C6HFWbP7NJwI2cLXc0SHeN1r1urfS590vxkYyMwmzCSwAEHk2Oo1aDxpBfSScZu9YK
	 QuBLanNEelvyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9350AEE499C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714663357.8718.4058073988379431907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320395d7958b5ecce11a1f6b0f2816df8e7c2bc450db6bca4ba9d4d99af60efc
Date: Wed, 31 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767146633
