Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F53A2D73BD
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764133974; cv=none; b=fhQtjb5JhpjUkcOY19Ux5eq4y2rnmpafRKh8VhFuCg4h86GhrCKW4xZMtQMU7CNmH81H1XpVJXnBzdr3cmxHprGYRkKjaiNcMIzlb0AgTGgm6v9qaXM5vU7PEIG5sacY09jTDRK8J2lEWCw5m0mXVJEhsF8VHx3YuDctrUYumUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764133974; c=relaxed/simple;
	bh=2LgrejWgLFt9MMcU7CREVMCIZYjgewnxb3quANDKS68=;
	h=To:Subject:From:Message-Id:Date; b=HeS2sQuCJOfqjvQlHma1x5BSn3m9zr138OrURQttAK1UUA6wttj/+bBbaSXZWX320dD160p8nForFfD1GQr6jgN6Jini4LIEYT2VGvuhPe9DoMvLFwhW46+pd/KKiUb9/xgobNmH65V3djJs0U3cRfnutk1QHsf/wkdcBa4vHp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Apl8ptfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Apl8ptfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9458C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764133973;
	bh=2LgrejWgLFt9MMcU7CREVMCIZYjgewnxb3quANDKS68=;
	h=To:Subject:From:Date:From;
	b=Apl8ptfaf16u8GgOqK0MUykYi3eTUrScnJaP1GB2uyJJzeKSrAQ8on/u+oj3Aru7f
	 vKbCPoV8n8rPcGrn/xiHYXYuNLG11eapUNoEoIrOEBy4lv8V34wWTqAqJgQDZFpGDB
	 2fD9Zla8V2JqeYB36Cq9gKYs/JFQJ/Rx4vO0rOBRFo9Lq+mNOGdhA2ggI8doik721l
	 osqRRV4S97fzHRhKSUguZ+nH89GnFqnJX1jMFlFHXbTGFCJUyyKrI3GAU1/b1xYbQw
	 t88W9O2wOgGMEaaP2d+/5PbeivQq7B/h+Fyqbydn+2BgaYz+tnqQCbLAP2swT3ebKm
	 RQSsPNRn0VQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945BCD1037A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413397358.20162.10087520482662210813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e73a5ae1549de13bc31b80fb06b7de272308bea1a8f06eebc30df8af4bb7826
Date: Wed, 26 Nov 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764133973
