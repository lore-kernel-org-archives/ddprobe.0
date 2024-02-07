Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9A1320A
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707265097; cv=none; b=X3fL8kvbIggdlIbf8whghFURyoqFTVCyb8nlCsEvhHsGa9y/Tdq+VHpMNgFSwDgGGetDvXIp5Uyu678IYHvS9CavAMrZVgPLYwthkiwyKFFgMcf6gXkNKRko079vbvqCto5R2gv0H23gayL4pLageFzV8iNDRDM3DaQc7aLswJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707265097; c=relaxed/simple;
	bh=HkzY8J0gQXWIkdfPGJ1vBl7GLjHtLRXjgHZJ/uLC6X0=;
	h=To:Subject:From:Message-Id:Date; b=rs/0bSlsc0Lq0m2VMqQj+nZ41lkrvEgpaM3XbEWqCLq2YuPYH3CQyte7yAVfK18I2SDVGfs/YtugCPLNsj71AHpHaEbTqX2H3SkF83MPjeGqActNIOvpIsBVv5+vky6HXd+tyJ748Qrat1ul44+qqwryMA4Y8AFs1gCg370dkyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3rOd436; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3rOd436"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A63C433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707265096;
	bh=HkzY8J0gQXWIkdfPGJ1vBl7GLjHtLRXjgHZJ/uLC6X0=;
	h=To:Subject:From:Date:From;
	b=k3rOd436pBJsLs1dZ/MD+SQhDerhxjplRA63DuYYKfXk7xvQAV78JyMXrx1GqHz10
	 6j59A/DX/zDelKr6MhAS4DtX8+ytW0aOYIr3FbJJIW1mBns/lB2LDiELQEkDM3ew/g
	 MzX2WO3trJUmrkLntTMkFkQT0c1n6Os3/mw/SXFDMhqS+uq7xdboBXOt/Tj1EYiuBf
	 dhw4PvFJCBI45UY3DDSHnzoJbe8CW8/cJR1uO6DH+qxJ+9loXafePJ1AGnX10s72LG
	 eFARp/WxENlv7/Mq7hpmyNVQCET/Xo9lc3fxKRt3cbaA51W3tN9w2sxG781xgvvXMR
	 miVPmGSBjWPJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83C3AC4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170726509647.27168.1887688769851475537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ebf0450cea3f2efb8dc54e6985f9c9022241bdc0109a77380a7eecef7495ca
Date: Wed, 07 Feb 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707265096
