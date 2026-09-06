Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24683B0582
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788666034; cv=none; b=E4EZId/7j94tiTQJFDv1vj2Xja1gy/cgKTazV/H+XZbTamA//jTqdK5d5EldK1719FucaORRYrFaOJFKt4Fzu3D9dCf8J2AHdUQuDhTgrISP/A4gHZXBzWDInEpEc6NU6PQsk/2z9OYYA5ESmArX965F4RQ3iFBRxLTcvfg6QDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788666034; c=relaxed/simple;
	bh=LiKlF7ARlDq21tls3TLdxvcILlugWwU3dZHxvrtr7OI=;
	h=To:Subject:From:Message-Id:Date; b=Qmk027CN77NcJkL0rzQluVvbBdZiZsXAFIuFo9miqptmy6H/hLBhnYnkqRrWeG3S4/QzCK0K9AkqLQCQapfsPANCps2il59zwVN9/7TqKqrAOgSimNa73fNjnK/n6REt6Q9hVHnFg99WF/g8QR3ZUZ7VIqWKdl1aXqjZS8FlfPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ER7djOze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ER7djOze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5E3C2BCFA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788666033;
	bh=LiKlF7ARlDq21tls3TLdxvcILlugWwU3dZHxvrtr7OI=;
	h=To:Subject:From:Date:From;
	b=ER7djOzedxrwzoeTPInwY1ucn/FWdrEtS7du+99fGwae8Fwpbr1CzV/EZfGw7zF0x
	 7i2Iiius2irSwOrJvmgvBoWsjq7Xs9JQWPF4DxT4APziPfpLRYWzNSSiJDXzqUXY2L
	 BVGKTXq/Nf8xGT3OAhcil4Opekhb6BbdLXo7XwrguyXirjTnc6Vja642LJOj2/14Hf
	 0ZqYxW5AWCCr8MB5eluQPILyTeaRuQ7rMjV61Mw6ZwEvbVVx/bD+k/t/BXphB9qTKO
	 U6N5nJ3wlKAeO2ncmiXSGtvHFYRKoAgvfNMfc5vsLO19maCM8z9f+n6FY+CVxnNdnq
	 aFybj9m6qeVNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E01C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866603368.26183.14544618619669588655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d4953aa5def31356fdbe1de63dbb33ae40ca30853ac054a088d9788a09ce8d
Date: Sun, 06 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788666033
