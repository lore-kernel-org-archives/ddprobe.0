Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8D91DED42
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762061394; cv=none; b=Ep771GVKly8onSkQqsI+fD42rJ+42hl5/AnPtN74Z4Hw6w4WUk/yhHnWmenkQBpeYb/odYIf7o/8NB1jrPNgiUW+dPFeUaJ2MDJZ4oy5zJSlkSIONh78Grn81G+uDKvODgc4fnTms8WLbD7PUYYyUVePwIjjOMJUg42s9AHTPtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762061394; c=relaxed/simple;
	bh=Hpo9mqfRNQxNfGRY2QN0uRojMyNbNJ6ksL8JxYw5jE0=;
	h=To:Subject:From:Message-Id:Date; b=ppZ3d5GGPNOoohroNaAAqA09x+Vzf758J4qLj/dFJLefiOyewUhQVHgPIqe3ixVePLKwHyQe7xC4Gp05vnm6lajP2JDDz8IRhdIgWKd5jhvPPeoWOdPoNsB96Fw8TxLfBLy6LehIiOWbqCCV3oO1rPAfL4Iue0iRv3x9FJXpVtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJiuz/CN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJiuz/CN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC630C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762061393;
	bh=Hpo9mqfRNQxNfGRY2QN0uRojMyNbNJ6ksL8JxYw5jE0=;
	h=To:Subject:From:Date:From;
	b=vJiuz/CNnFAI2zY86BZ6mvoXQ6NScYgsMPBiGaPJJoBS/NDhkdVssbVJSkU60oIbq
	 63xb1SzYdyaGTqTw6k1Shc9sKCOdxNC+LcMo+mZlvjvvCLuf6jkAwVAZeT/FUSjEUr
	 2xMKyzeDflDec7MpjuyEq8mgtYn1Okyd8RIxny4t7Ldw3T7avIEG8+bQPNSbxmptlh
	 Mu2KOISWB0kecKnz+ESJAS2au/+0SDDaSRFO4BJa0P6F8JU5aGl3eHuVdDy3E9PTBz
	 UGyVqg2aEwRFPNqEPl3vzs6o/ctyAVOXFMAWVqBrdLcnHcvmtqrecu08GQ9Od8cADy
	 Jk1SWijk+sAQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E2DCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206139360.27608.901302449931712439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b62a3ceb5da868782bbd591ec56ccf31883ecdf54a0e2bb4088b9f190a8673
Date: Sun, 02 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762061393
