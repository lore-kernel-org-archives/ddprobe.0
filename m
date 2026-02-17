Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235CB36E468
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771344894; cv=none; b=e1ST8sMBMJztbGcl6znpjcqk8+Rm4ZcK2H8LzpR5JcbjRgDyu10vlRneNn4YEiPezIkJS3YCaGwqsz1sXlRXmTgAc5Tpo0DwI/vAEFe0tfOBUBtvOxFwMQepFijraSVXr9yYpcr+mUFrcxz+Lib/+A1Kj8W56GQKMJg/i8R3mZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771344894; c=relaxed/simple;
	bh=MrrReFIomX3Rc/1C6OCg/xss3iJwx3rp40J736jBX3A=;
	h=To:Subject:From:Message-Id:Date; b=HswL3/Xoe56zpGeiZzrraQaP5lAKKedKi50H/Icvfds5byXMA8KrqU19wi5XcoNVZfg5WxQjryB5/aRYCDn2kK/fn2xNeCrCfCDHNy0iMvSYdVmWGP0qB13KJlyrWQ0j25x+V/N2cJ65l/C+lo2F3wdAMepYtfI/1vR7j+ovQ6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njsOFCM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njsOFCM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6E1C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771344893;
	bh=MrrReFIomX3Rc/1C6OCg/xss3iJwx3rp40J736jBX3A=;
	h=To:Subject:From:Date:From;
	b=njsOFCM9YXewu4/CjKq72LM+JEap1Tq5Pw03sXOqQCpaYxEUPtOY8Om415eMlGn4U
	 0YBEhDThJ73ob2mX8X+e0+6LJaCYA46l4CLDB+eKACtF2qQ8D1ubveSg8qJVd8rZoq
	 S9GAL7VtdpZo8RpHuHPQIpzXgASI9EQ4hBxjov9HaWJyMVRm/rPDY2ij4ZXxIkvb9+
	 mG0IEQTH8jfc826qft+dzzB+oLLsQrVtcBv7EBhpysaUSDCMgjOlF41vsTgNPdgjsb
	 o1Gxx7LIC85GxtsTk1iSmm7iumoMSCKipAd9H90FF5ErXuFIRL8Zc05FBUVuZ7/BW0
	 /8zqfkm5dKNnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99133E909D3
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134489361.28454.7588772125690145132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe63829af7ec143bdfc3ddd54b3fc56d8db35dd8ada8b82703286331910f14fd
Date: Tue, 17 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771344893
