Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2F11854
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727829954; cv=none; b=cqPmk3XmVplEGw6RGbOcSx05fFrxkAtO69IidF+PnMxy37xRvh9BxhTcDHcONM6NXFQ/vOQZaasJXZn4S6jqGS4EK5ZMEq3Qq1jQhBvZfGdDfGW9LnVEq9Y14wjDrsOfnyfUZx6HJ+vQ60HTjaVmRTj9tICMV+wXtw3Zz2r5Y+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727829954; c=relaxed/simple;
	bh=5eLPIjhTgTmigGYvYwHC84mEvAZDUA0FZ9XLPFB1rtY=;
	h=To:Subject:From:Message-Id:Date; b=LhEq4oiq5VMWqURxXHEFlZvwMoIyAmvM7kf3H++M08FEH299C18T5FxdVWSSidfi8IjDVBeMWH7NAGtcLuRbAPE1F6+/IBvlhZ7mYZwStIUtr0ooTs9hJeFbwAXWj8nuvIRgHVwWdzMRxEHzXIZUqpY5ATyWITKfVNZA+p2QcKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9E9oh/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9E9oh/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FBAC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727829953;
	bh=5eLPIjhTgTmigGYvYwHC84mEvAZDUA0FZ9XLPFB1rtY=;
	h=To:Subject:From:Date:From;
	b=i9E9oh/l+2JP/LcBCcYGK8HAESUINFFpOSpYcya4Z/kJ+QxCJNAukJ04x2u0M2MOd
	 3ZBfrFVSGvYoFEgmymf02MAVf8veVtRBQ7XY8uUIx9mJDB93kyayO4lvgfTPGqEact
	 Wa+KoKG/EGFVTKf+frR07aCDKaLvuYmU0ZxhMl05PN1DazPsBJ7tyuMd2t/D4Meiwt
	 e/etLMyI5jOCACEQTp0iLK0X9e78eYW+3BJzH1oqnAFsfbeLILAh7AfQQPA8p+jtDc
	 FPPnJos2XFyH+a6KDrfjwg2Jbi8sYvEPfB2g5eUxMidxx4Tv0DyCpavM49g8Wzhg1W
	 +xWaorem5EoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC660CF3189
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782995365.13157.372252312591482302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c188365631ae071f7f96164af3d7c5fbbb7009c435fd63d6388bc4fbb29779af
Date: Wed, 02 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727829953
