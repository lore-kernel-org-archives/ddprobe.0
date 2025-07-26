Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2385B2153ED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753530594; cv=none; b=YRH2qRWekc0bu2N7zdtNwAGLBWQxRjTsJdQbQ2WQqqmXRX2wq8/0npoWhs84QA6aXGaMR7MRg03q1SXMR8rNs3i2ldnRmYxcV0immqlXVA8ZPsqhFSD8Pc1UnQkUWsp3B2EG2DiL55JvFeZzoYCS7c5cc0oZtXxrR4kvtkGqFEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753530594; c=relaxed/simple;
	bh=IAX9RgcYGirC8TC9ojyg8eKYzAp63UU/dMAjigNVF4I=;
	h=To:Subject:From:Message-Id:Date; b=SVQujj7LpZMSYWIABvu0SBZ8v04xQTF4zooZCGvSO+kZANmQR0BKcmTLnvboLJ9Do7R+FnFk/jgBgUZJ2FFZmcRC5YnWBs+ZvUBPGRy/OhLNStZW3TaxEEHZt0AccfVbV3QYdEhGhCx4JT7givqgkUjvCLhuAV/CnINUJEI4yJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9FA4Ug8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9FA4Ug8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AC4C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753530593;
	bh=IAX9RgcYGirC8TC9ojyg8eKYzAp63UU/dMAjigNVF4I=;
	h=To:Subject:From:Date:From;
	b=c9FA4Ug8RZ5O/lNGR/zCD8sMoJa6UpvYnIzjTW4FYHU8VlAqL4HXWScauDlYtCwhT
	 V4iV7WAEhhunuWnhi5zwfpbUFwuGe+HHX+aSe8DDmm8vcRC3c1ylOR3sVvZK8D0Kdw
	 HcE+h2cyXT/1nVuGbyvl7yTxinF3VjXEc7RFlxfczxlQFmJSpiwCoF7Bn36feEXW44
	 KW4Hr9m8MeDfw8BJOt0dDTbduwt8JssxLR+dsP+4frc17gcvEWm3ibP80XZxGoM3A3
	 YeY8tdCVsBsEDRelHcF3LtBRP7R2z+Yc3plIfmMJj1H91AL4qNST7R6w2IAt+Mml3/
	 +cr+6g7kBuNow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E0C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353059357.26630.3278310390646938703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91567b595e1f06ff65bbfcfda683a9034129f69b69d1e62fbdbc8821b6501be0
Date: Sat, 26 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753530593
