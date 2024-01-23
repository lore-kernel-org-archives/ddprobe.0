Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DBCF81207
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706037496; cv=none; b=naXh5N4QmV+EtZ8lL/4ndezf9gbZNij33F0mKZyjTNXIRie5o8YJgIwIDI59/LpCYScUKOnZmPrxDytKu9vneaMRejbNQ1u0SPSitZf3BVAB+W1Mmuc4VJ4tl7Fr10ivVCT4seu8VXk6m2l00nFu8fk6m+aM0by5HRZTAmenUag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706037496; c=relaxed/simple;
	bh=8uGXVclIzc3RDKjuc89XtUYCeavsp6WhW7x2LUvSzNI=;
	h=To:Subject:From:Message-Id:Date; b=NLZhtw2upDDgXyXt2LIHn8ldJQ6/rnOu8AbBrM20u7IQXZ7GyThp8HCp3WuecREgpuYoXW3lQ/MN++Nl3yFIy9QlN04w3j1fW47SXVZFL3eKt1YU6sscLOswwmzKQpTflVFUOMDM2WP+BpTnPDiy2AJ9cb4byHpYae+ywOFIl1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCf0HDlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCf0HDlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72513C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706037496;
	bh=8uGXVclIzc3RDKjuc89XtUYCeavsp6WhW7x2LUvSzNI=;
	h=To:Subject:From:Date:From;
	b=tCf0HDlcCgvgJcYR95lf46CTZeXBMHGCltrRA12vdMyICn9g3wWj5A5QyNIlb/5Yo
	 GKSTI180QLuMmbn9u/bOJkkbMkZ3Gc+iFgSFu0c4vcn7xz2/onH4DJ0bAVJh8UaUnS
	 UVH99eVCSTRqacIjSaMZOIZuvbqE610dX5M8rwKywiOwL6JQvCbkYSNntyEaKtYV6x
	 HDStEXf4W5C00Uy/ICz5u4qQgUtDciMGTzG4Q+Tu5sUNLMGs5xFoJkKjmGlV34tP7j
	 Bv8bPSv3ABGVSmzxA4BSkABtoxVC4URgx/dZhMblaPPdvXrFzFZfgBZpdqlkaBIf5s
	 de6+ubV+Strug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B910C47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170603749636.20707.11920821702696516355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa82b6d38de3e9c74c1f8d9df16c3de221cb773b7f8bb4788825c87a4bd651a3
Date: Tue, 23 Jan 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706037496
