Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3225C175A69
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780760074; cv=none; b=pfzZqvcdt6J79Wl+QAFTDbiF9agJko06ytwnYdEPw2G6zr/y5GN1kZC8S2zgqcFSC1vecpO/UUBTBCI9/kT+dkuVyEtp/Wtx2FC58Tk3N+DmZG4/eOFtlNv3Z+Ww2p7TxgKCY7cKvGI/pahhGuo/QymCfVNBAnTj6V9KwIW7jjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780760074; c=relaxed/simple;
	bh=j9mRFg1jzDMw22/OJze9UpROSAarFrNE+mMFOuNcabs=;
	h=To:Subject:From:Message-Id:Date; b=Skxy/SDPo2crqezn1t5oBqdoWSQKpImeUm4jXA7PXevckumiJBVffjLEWF9g2I+aTb40YQkRiInagk8X8/NqHrGqM7Dc0YYwkEEZJJsMT8cY7Ap6wG6SX55J8uwP+Y0KAtN66SaWfa0BBFs8hlRk4M1ABWIb2BObdnPyJkRUo9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxyqrnos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxyqrnos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF33C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780760073;
	bh=j9mRFg1jzDMw22/OJze9UpROSAarFrNE+mMFOuNcabs=;
	h=To:Subject:From:Date:From;
	b=gxyqrnosrqMKbx7OCkQlW/oGPPahHKia052PhiuClOqJgGh8oIMU4PsB1BYg3kBrp
	 4PHoMHvmNpq9za09kTsAklLdxj1yyF+OYjE4oMSqFH0t/IpMLMH0tFMQ+QoBfJ0Gzx
	 FSlwT1aTJNBAzudpBN0RQT/oG/ok/6tCHTaeadbZRxaZFLdIJJXp1j+OkNCpkRPoKX
	 AEJXaNZ8HVl2AV1APCtyCVnOKOUvbJEEqEbn/UV9Za2t6T+/C/i1vVlrNV1wED5hHg
	 Fd+HkXbBAospw1/QUtrY9spp0XCYG47cecZkM738hKzftt9Amn5AFsMYQy8v0ZY1QC
	 d5/VEuTuWcJyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8B3CD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076007368.19498.2154051871351454786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b6da538782373c1933291f1b2d8f8740acca40a1a42348e9036c2d50338c5b
Date: Sat, 06 Jun 2026 15:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780760073
