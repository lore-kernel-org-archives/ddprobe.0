Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B22F1DDC20
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738020354; cv=none; b=cQiNDyooOnTDBpYuyn1BTd43wXSok1QL1cBbpHanLrYY6wYe7dxqhLAa15rM9/pKvH2pnQnnFzqKQuDn2gT9DFoMsG6QurH7+m4SGbxuAclMI01pqqk60FFB8pWbJhDbxcQ6PSHAlDhf5uo8Z3+jUEIRBzE/a1OPant6DTRzowM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738020354; c=relaxed/simple;
	bh=UXYZJGYPgk6TsTi2tc8dWSjKoLbeYcX6He+LKEmWQUs=;
	h=To:Subject:From:Message-Id:Date; b=E+7A5diHY5IOZBr9JNis7CG2Nn74XOJOeLANNEW38dEmxZq+8FlI0jqXSbWuOp0EbgiGu6lvB88k3wOfPRpZiY48RE78lX52k2REN7wyJPI8EDFdMnJRQHgpH3mauVw3Exe+fla7uQ13/hp7ONdsFMRnxQMLa4XKPhAsWPsJYfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjnfiZg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjnfiZg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EF9C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738020353;
	bh=UXYZJGYPgk6TsTi2tc8dWSjKoLbeYcX6He+LKEmWQUs=;
	h=To:Subject:From:Date:From;
	b=EjnfiZg53IblVW9tj9j/IxRVE4n9BUvPZGodI5bJWxPBqCQ7hsWvgRjGHaUAYQ3Qh
	 1Do2OQLdjrrUyZarKQSpVAAqmQz7YsTw9bOQix2AjEwGaLMw3tVropPulRzBLNfQcp
	 h1DSHsa1Pz9I+j/EL0yv961AeZ/uFsaSx2BmwHc6XsOBF6XRZHJ9BIb6cQWNfImc7f
	 CW2MuMTVa1bHzajVWAu0fJV3SjJSZVeGqHL+pWXDtmSiGp0irqF5pSM5voMYhw5rQQ
	 rkok6QTY1KybzGugnfvNazUWOtRGgiP730WCY2pCW+mYpLlCtMbIYEUJwlAwLWt5av
	 ySTr9y5NQ3UOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A204CC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802035361.4340.14047539555490215575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b46f4f7edede8d9c8ad70257c3f89dbf5e86fc5010d1740c4e363cbe43b7c0
Date: Mon, 27 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738020353
