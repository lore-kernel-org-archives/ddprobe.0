Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C22547FB17
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790256035; cv=none; b=PNIf2QLucay6NSKkJY1KaihGBDogaTm9xKsW4a8a/G37FA21YuyQChU5sUvt7fRpp6Jg6w0g5k9QJUEWOCr7DRAH01/TEFaPlQYfqbuh8+1zT9pog9ihKJXknr8WyFHaUSjR101+pECaktrrSKXbHGbJ6AaQRbCacT6n/TAJle0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790256035; c=relaxed/simple;
	bh=qTJq1UJrqu6bd3ChdMlBUc6AtpQfgUbJcgsyxb5m0J8=;
	h=To:Subject:From:Message-Id:Date; b=aTTXrqNqi0MD7i/CExQ4cOENxc1guQUupJgbzeAX5pLLxdYbNoAOhf4vLTmC0ZjHV1F6D1/GcXg164WjflLfVhJUiYb8dBkaaEH3yjAHzjytCs4x6XoyMukn3MlhfG94k1ALxzIihzet8+CxpvmcJHPG5b968zV/ELVBcotPeCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSF/d40G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSF/d40G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB80C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790256033;
	bh=qTJq1UJrqu6bd3ChdMlBUc6AtpQfgUbJcgsyxb5m0J8=;
	h=To:Subject:From:Date:From;
	b=BSF/d40GCh5hSw8xrP1uwvH1RnhPBC4l59y2X6QYeqBBVM9dSRx31zgAz+Km0CYOr
	 0X/6S0hSImFCJQNhVu8+En2CeuvVNP5I6xJnttdLADytcTVG5VoXmzK86iobXvt3sG
	 LhnHlqtXKs3BAYhc4dzoMPHPVrDIixlDkEbCjsiyPY94BwUQ74IGg2BsYjJLU5TZZe
	 UWxEhO8zXCzdEttt6QuEKQbZdmD8ZRBxKNai22PJmzIAdT8HAcDFfQ2843D67snDWr
	 X9Uy0hZncNrewJuKpL5Se3bQIuEqwrVl7sv1zOm8Lrb2crj9g3Rpk5CvLKIviL21oH
	 ca+BPNozkQfhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DEDC98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025603372.16838.15838810779769284853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c85443df725e14e7c4181ca1089cf9b45598cac84536e2a1c85882832bed303
Date: Thu, 24 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790256033
