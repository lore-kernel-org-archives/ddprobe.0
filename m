Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F64A8BE8
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753728594; cv=none; b=UykL93phMRSYlyEH0ovhZWbI54zbW3fyIA2nRUEvPf7nt8E+lHqSAFzpD9R3QhHtU6e5zhXL7llmm1gZZVve/dl3d3MH3DVH3Mc4M5g5TkprfOCbsoqh7fj85c3kxtCceCiHtKovC4r4t+1TDr4JF5NBF6nU7T9eDD/ZsTUEqGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753728594; c=relaxed/simple;
	bh=QXEgdC1Wq0p1G1C7Ho49YNOf/qvHJ6m8c3UZCvk9MXc=;
	h=To:Subject:From:Message-Id:Date; b=mH9f5sNCE+d6m225sYLwqBcDS5owxn6J+1iu8FtYAWEGS1CB2qzoSrbWipG+EMsQUlPdHadgX2tW7e+/iTIrH21ruKvBoX/S+STwbcWO9uxcrykuvQ7Nqireh9YyJ/F3eZbIfV7ZIjebCLuYMyspO09gUjyTb8W99iwJG0mKoeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxQAw1IW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxQAw1IW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10DEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753728593;
	bh=QXEgdC1Wq0p1G1C7Ho49YNOf/qvHJ6m8c3UZCvk9MXc=;
	h=To:Subject:From:Date:From;
	b=gxQAw1IWiBTy3hFu2vy4rZO4QLbu16UVj7f1fJQRsY0h8zVpITeEk7aI+nCqAGNHd
	 +kDjmC557QHmFw+mj4qGmLGrrwyd4tqwPUeGEQRIMm0lchhEXzz2MLOyeF2566PxaV
	 PhXFWuOyQYy0focVaG9MPjqqW+21mOTfCpgIyMAt2CsomWnyl3AYxKQ1mavBVcZriW
	 Bv7ptNAmDiada0EaT07MbQW//Jyt9pxmP/6nx+N9f3/oRSH98/npcb0DeevRjuEOaf
	 EFJhDWpO11TwsqoV83W0Fx/d07zUsE6SjBQo3Ko8wIdh4NN2BsHaCDL0AHjr5g7uYH
	 DRMDIQRN46asg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F533C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372859357.32031.6911544382501855601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3497e105119288ee673e432e785b5b1bb72122daf1bee5309c1cf63ec063c0
Date: Mon, 28 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753728593
