Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E412160783
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741552734; cv=none; b=uAW9lf22i/b83Y5SnpC6BBjZv8aLHGMSUPPV/0S4OZXLycgI+bn97D/RwyUGZTtNeQ6PGGu6gWEOhypTbmctqNvyWV6ra4uVzbi2zsEMV1XI8MQg+v1krmDlX1k3dUu8nmhRD/+lTeGvnkc6PR9CLGNUzNvcR8/IX5MdkX4HjOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741552734; c=relaxed/simple;
	bh=QinQp0LJXMbrCJOgBgniyJ8FGuQRZrJvuEOv+rpqzuk=;
	h=To:Subject:From:Message-Id:Date; b=hBaRyqfmxcPZQU/UV21n+3RRCFgAwmz1K1YLCfGafAq2jrymWoLS6+clXRQN+IjJ5NgA5SGASpMHsBUszd2OQDeuP2W1aQyhDa4usyPMDnw0Ff65BWpov2ifRxnaAv2n03cOBWzxZNpf6mgm2R+/8DOuWBChhEOD0zjFJtH5IOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlOOPgPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlOOPgPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B5BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741552733;
	bh=QinQp0LJXMbrCJOgBgniyJ8FGuQRZrJvuEOv+rpqzuk=;
	h=To:Subject:From:Date:From;
	b=XlOOPgPSg+4ItLBNrGYgWtlsk98NOvn5ahbsmRmjcz2H0kQC9cat0ZRi1GIKBTD+J
	 ilAyQyJIoMalwTFjwdV637Z6okKrzBNqQP5RhziGmLtIDB9/kmsPV50Wd2tM60VSjp
	 lgaVcuvGmlO38ni4ndwr4AKJbpcIA2gX1D/kbyKLG/LwwGwFXOg3bnuwwiQLrd1uES
	 2uSIVsACogYd6AHNmd4FlUp4k4M9qrE6lZ2VklZFP3YKMXMjRSDGgFiDu9XRFg/i/h
	 UXsY6TeVSTZGo8T56LB+rhEKCHlWO1EXids7Q0Hqh/AY9FpacuJjJVbIKMzm69mAeG
	 XIK2e+i5OJjHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943DAC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155273359.19352.4410891878712374442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf3ffbdf3abbb97bfbe60d145fe7e5bbc72a112c1971923780b7a472e053595
Date: Sun, 09 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741552733
