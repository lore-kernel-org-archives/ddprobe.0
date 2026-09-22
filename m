Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6EF4E7818
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790110834; cv=none; b=V2rwomToo+urRKOgCAGdwTKKEMlRPNaNGQcWqmFCMLy0T6mbcT7GRyuHLZ7V+ijZzTL8oCer5M5Si9G57zztGorgrGz+WEaFc6pWkiK/HVuJNmYXAMoQSeXbb6ZwaOXbGNU7VZEoAp0tUq0WDHgPSQsGshLQQ3iTxWRVlkdDE4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790110834; c=relaxed/simple;
	bh=DwFmw4p4xWKsJZR7JRqkieHHtq8eorm7NxxNzHtt6jY=;
	h=To:Subject:From:Message-Id:Date; b=dqLPpgSMTh7LP1BkVBJXLaoLGhdEfaNQVYzP+fSoh16Cv71V17jN50lVVwrnDiVyeLIlaVn2IE1NGW8xwgFAxUmfQPJBFh989b+iSfQHmMxM0FmhwUAa9TUuzOOldoa+h56XoAEimfMdnrPb/QzzevYuY8PJI8T8+na3afdhBGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcQqW/On; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcQqW/On"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C85C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790110833;
	bh=DwFmw4p4xWKsJZR7JRqkieHHtq8eorm7NxxNzHtt6jY=;
	h=To:Subject:From:Date:From;
	b=JcQqW/OnKRUTFMfxL0/jsGrhpAgrk5v5dNzsM00k0ChwrpjtB+zlmIXHKlKS1dmj0
	 9za2wKpFE0Mx+ZL3antRR+CURuh4h5Cgpp8FoESvuflOMQRX5/g2UBl1Ei0tgiFWqM
	 WSUcwUojhIt+hUBzdmqXsmTEfXFmHYln2Cvr8lRBHO8IcyWG2G1XfYye+xEbx0hAAD
	 pb97vvP+IciVgn8p2kTrPI+cUXJ2qxsIzV14c+cGs+Zcgyn+UR+VGY/hiSRaki8IwQ
	 h1HMCsFBs2gCbm5NPaf0CMFRSQ5M6Sg9WDdjjMXW3h8JOyFogZjrkj3jiowlM1RETC
	 13dtr/Kb9i7rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD09BC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011083375.9691.14506679247779201024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a929c1a378bb6981f103dd5d82fc102674edb8d4f711c43808f22e959968fd
Date: Tue, 22 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790110833
