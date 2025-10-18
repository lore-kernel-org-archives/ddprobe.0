Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C6B354AD4
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760820594; cv=none; b=QO2P4lYqXtwdbFhJZp070GYx8wgjv5M213ZArdu7yw70tbsNtATq/tTVwgGhm/HOHeiDjfpwUJTkpeLx6THBr7CJ9uve+elkOeKoIuVSr/75gA8Gv3PxX/Mx76umE86TRRmPGHKKmp7TX5pgu79VhCE4EIjjA3kbb299s3cyKfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760820594; c=relaxed/simple;
	bh=ITNRQMJtjD/0jP4M/vn09CKf0f6YIxcLxRM5+yBNuJI=;
	h=To:Subject:From:Message-Id:Date; b=HInXkbD2FEpJrf89shso0ME+a0yOubKOYouZwYBh9/boQLFX6537W0SpJgzdbfItf1Vz7roKJmhwWaCvJmROoQJ3/CI8nXpVJUbIQJYzTju2a18U0DAMItQrn8zpXEZA/kTv9T4vhk/huDg8xZS0So6p3ojK+BpRX8+d9l4a8sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCuBuATJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCuBuATJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65DDC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760820593;
	bh=ITNRQMJtjD/0jP4M/vn09CKf0f6YIxcLxRM5+yBNuJI=;
	h=To:Subject:From:Date:From;
	b=rCuBuATJx4+HheENvStWtSO6EIjIGiXBFCVVRF9JuGBWWX+2fEu/a6/H1iHxT2kUE
	 bZefDoqgpxN1d8wLlyIp/kpT7Vxt86zAFcxjiZ9Npbxj094FcAYzrw1uPKide9NTsr
	 g9VIat/pKH/5wHb/g1AQTyp7qlrfV5Sv/qhdw9jkua0MxhcOjullazFk78RJvNzrCh
	 0GjQ720kdubcJTWa/Hl5+DLXZIZQ/C/DpMNrzVzHWezYq7DtRsF1yPd4TyrEogfWYp
	 O76jDCKW2enYsI/vveSdz68cJsLLKq5TVGLtA+K7rlhIw4Qj6cn5A99/a9LddEvf1G
	 dyq84GYO9iX0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A82CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082059357.12705.18430762234819595819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed16bef58185295cd7ea63d5e1e507a6ee1733df69105af0cc9854d188969ec6
Date: Sat, 18 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760820593
