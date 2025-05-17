Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB462202960
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747496394; cv=none; b=u2BND1KQ4x1ACNOGC+JR18Znotq4NE1mAVYtSBsOuU4bK2YZ9OonecfQDefc9WrJ04I0qkzOF3NJsS4i501E1DGSMoh1UCGRGS/uz5/0V/jFHPlNswplQnJavbJaVfupAlzROs33AI5YfQWL7EsuMrYUdoNKpnwtJkkJ5tJodQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747496394; c=relaxed/simple;
	bh=uBzEcWN28Bc4XfrK3t+nOiHGo5UkBRU8eM+baxdXXBQ=;
	h=To:Subject:From:Message-Id:Date; b=DKxC4OnRiMuuDqPNUaHrReTDg6K1QhazwN0G/qMJAzMO63lVb45SI3aeyBau2lmhgPzmPBRNf1kNNgRn6xMFfc0vrFfvXst3BJNuqvVMEnFUJ+b1/lhJm0qTH/o6jf3qdG9Xsqdc8d/eCd20mjOYu49lwmDDUgfanb7U1x4VFvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiYjuy0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiYjuy0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B4FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747496393;
	bh=uBzEcWN28Bc4XfrK3t+nOiHGo5UkBRU8eM+baxdXXBQ=;
	h=To:Subject:From:Date:From;
	b=BiYjuy0I5Zt9uSY11NCNra/SNSY5wc4+Y4QPIM2VL4gN+ttI0KBEqocanfGvLtF+e
	 AuihlEzT7rgX2F6rJtd3dMg2TQwmf7wF2ePn2lplYMAO2mhP4CWpc8BlyF0bv40P5Q
	 JHSl3MTC8CxIXZKs/plpRgZfDdS8MFHicEE5eTcNe+TVMs9ZBT4p5CGcKfbqEcqvGV
	 BmQFRN/80jFmlr2Zi2n/d3PEs1IVASFw72qY29kDrGL5Ma089aJZyWuu67WIzEF+4G
	 al8QeqJ6kLH12Hd56m4OYY4ir0AuVhFkqRCncmZDYTEV3+sQScZduILfg6Wm2ZkzOD
	 6rM+aXlRfhn9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956BCC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749639357.25645.11976260070029226043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9a644f99057bdafc17c3bb3213e89880e711d1254406fb7478aee238cc2237
Date: Sat, 17 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747496393
