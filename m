Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526B617A2FC
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785892834; cv=none; b=KNtkwKYOjJZlEmo9nU8IlNF0kOK+baYSUCGeaRbst2atfWWOBfYGyROnuuSwTqCawL0eaLSk3mRC+2+gVeQt/B7EVg6Qg+vEFoBc2fMzg9kzk/0VrLIFzvPxowlcvZlr7G6CHx+oqrZLt/hhGl9+57ushn9oTF2Jego8Rc67iVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785892834; c=relaxed/simple;
	bh=25vsjk5VhgGiL0PDcrnmbAgxE54Y7FJhS5jA98QEQug=;
	h=To:Subject:From:Message-Id:Date; b=Cnft0T/5mfZLLtpKaOnFtgpbdK5KPmICCuSEuWCsHL1VMN2oEEzloEQqPzI2hdPcFqQ8QXQmOyJZgXqQYVXS7sQlcEuDPB/ZtEEx7d9wewq3fLLxIqg2KTPRZpd8LgmeKEi7XHo1Z3AzEoaNm+hMaXC7YDPiCrrka/A0D81+MHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BN4mdZM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BN4mdZM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD7AC2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785892833;
	bh=25vsjk5VhgGiL0PDcrnmbAgxE54Y7FJhS5jA98QEQug=;
	h=To:Subject:From:Date:From;
	b=BN4mdZM15DcM6wMDfjzaOqfmuALvppolLuRSLyt4qrec2yItSz9htrqY2OukvfXei
	 brsT1VALkaRUSV7SoXIPjjhvkqYIfiENF33ccyy/uq7f/jrcptk6dw+GqtXYvlBUkm
	 JFosmt+uX3CvP/FjXGZQ686c71aVSOycNHtPNusfGmdWpnATTM1sq7bbSfrx7M2uQi
	 ETNeY2Ce9CmJPso/qkhyeP54PezVClKywb/FGE1msvv3wFjD3doB2eM7BKM5YYR0Ms
	 JJI4RCDLZPjPmyRMwMZQfoRdVXVxTfYJuwIPNNpgm/JOsZ9VuVWTUqPF3MHfs8vdwn
	 kAzZwSqPITFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA579C55838
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589283368.18948.15002859258224976489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573b1389517a4aa8c73b95bad4e6d99744cfddbb3e158782a6f463888f39e701
Date: Wed, 05 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785892833
