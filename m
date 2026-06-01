Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7886115A86D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780273474; cv=none; b=B6DgGqRK/g4CwxWasflA0q8RHyUXg1WUrOeG3vf9XCLQvPTv3wge9q0Ek8Lqg/5K3DBndaX+2VQ0iJ7Z9pus9rQK8P/jY6pG0jDb9GwYMwC3rj2a72+HKuWBlO1UqtyP3aObJSbrxwkzpYAoAt+deivEeHDTZaQWEBCQ7gDlB+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780273474; c=relaxed/simple;
	bh=dIpForXqsAiGnhgAhHESdSpg/eEl7+j6jg0MUUT+EXY=;
	h=To:Subject:From:Message-Id:Date; b=baBAKE8TxQT0qZuAis56mwyMdjTxXOF9MeNcqc+W3qlRZprTFjBFm/59tEzWhtlPLsp+EARf0Vh6Re8sI95FFC8h9xuSY4DRfewkMn7t+HGfoc6+kNU1Eq0npGklabSw70Ip+ClJlDBzC8s2r8yF4U0ZINJSZuqPhdHbXCRhySk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXtZvkAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXtZvkAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1C79C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780273474;
	bh=dIpForXqsAiGnhgAhHESdSpg/eEl7+j6jg0MUUT+EXY=;
	h=To:Subject:From:Date:From;
	b=mXtZvkABt1u0qBi3xjdGGNAMxJ5ts796LsCN7nI6FJxvwMJcfR+8pl9u8IxPTgq71
	 KgfcEWgIg2eAiNJef1LrrFXxLicUNunpc24PuJBcB7JU07rJBtvINhxcLicN7OJeMn
	 5H2SAJ44aqV4ZkTGAWq1IlByTVubRgkKfURjHRdg1VpziI1dUm43rCPe4SbkGW9VcB
	 0BLBpRkSxTTep6M0TP25ltN0cxSVpPdi3U99l1LjzlBkldIQS8EuirmXVIJ7yaOZSR
	 vtBA2uwb2MBl/yKmuQyI3F5DJJQeFxXzcOD/ev1ahZyGp0jwJIRrgxodARabQeBVW/
	 1B0mwTK7b9Zog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D45E1CD6E57
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027347382.3608.12400937041706084020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3da2afc3ce5731d30ecc39f8fcbcd278ad7751afc2e1ef6cf4ea6db2d2a5a6
Date: Mon, 01 Jun 2026 00:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780273473
