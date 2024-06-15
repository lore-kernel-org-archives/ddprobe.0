Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387351E511
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718460503; cv=none; b=HkOhguNaIluNFKrNmsjG6boosFhhR/hIBtBLBmql1LOgIbRPD5++twGAK582dzH3H39MbsC0vnS5jx9nBU8K9AoT73mq1h1rvPJj6X7vMw29+wX8WXvm1vGmrLzuLOPgQP6Fzu96gAhZlsTf8xnFpuKgjZ0vFvwkdB3KAGz1K3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718460503; c=relaxed/simple;
	bh=jGPku9mpxg3B/7iSi3o+dB4j2kKsr7OZKS4hu1SvP1g=;
	h=To:Subject:From:Message-Id:Date; b=iYOWkuT2EjFyx/CE0328BZtcktusJxYhM2UNI2ZJgPgPBxFQuLoV74FVUF6qVsq1TkpBhlAH10sAngs8oBHU80fIUiRj5VNskZEdVt0RSXblJ0wA9UUG0a0K8qprACdV2AmUVQv5z8Chr0ut4JjR1wun570I5NXBQ6N6T0FXkEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hP07XYbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hP07XYbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3919C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718460503;
	bh=jGPku9mpxg3B/7iSi3o+dB4j2kKsr7OZKS4hu1SvP1g=;
	h=To:Subject:From:Date:From;
	b=hP07XYbsu7U/sxv10HLc8HXVz7w+dSWKCr4f9hC8tkqBS6ACPxF8tZYJmItX8Q4jk
	 zEALOP9EhC9J1vy5iIQ/MU9FsxtVY46DHo05LY5rFf8PzTCHdY76KDXjjPfT+Gs+CL
	 6PK2VSLs21H5sHKupOvO+a8+Xccfz5Nw+lCimLjvf0+R0RkdEfCCaey471kd2/faz6
	 hhqg+6Qu2fhP1S8xJxRgwWrYW5GBaQSoHRV1p55SlqpzLEUvkBEaKVUFdu5+ifbRBg
	 N0wKvnzzgHZtf4qcEp8+bBlDuIgJnKQVxxoz6gKlbViJD/1LfSrIU85r1Jlj8Us0n7
	 JxfISDoosem9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3358C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846050283.17431.17137353677395647947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af403217141219fb4fe03f9d1a7b65ed7b718e530fa1ded94d82f5305bcff78
Date: Sat, 15 Jun 2024 14:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718460502
