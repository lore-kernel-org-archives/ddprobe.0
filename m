Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E6A64F
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717418123; cv=none; b=LeqOdXf1UXKWfiZ3Rmw0OEDlmdOtNEgj+W8U4GXMr21K+Cz7TMfdKP38TLNI5/IvE/D1z5E2TvRGnygj24XvVtl3HjhBwPudb5ofr42rxOvYwm1iRx6neKvgBJS6MiHdij16rXcXKBMwwLugoCOpgP3m20eUXqRfiTGCEK3rUWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717418123; c=relaxed/simple;
	bh=6D8VucVOH6hZsw6xEPEO1DcV/rMm80U5v/OuMECHKg4=;
	h=To:Subject:From:Message-Id:Date; b=cN8SZtIcYaQIA1bbJuzN2RwIN/Bms4eOClMqfyfNzEgHmtwmvEd3DO7AkXCZvoQl2UccBP3UtXRkGqp6XdZDVECg+CB/YKGhvrdBtISzQX8SgOuoYgY3qffCnHlG+4STe4PqdcReH/Sb4D3CbE+ER8sw/xmBp0AxyhJejyD04N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpgCgPbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpgCgPbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A5DC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717418122;
	bh=6D8VucVOH6hZsw6xEPEO1DcV/rMm80U5v/OuMECHKg4=;
	h=To:Subject:From:Date:From;
	b=JpgCgPbp/3ofuEflnyHxYn9c19rX8VLoZz1kt2P9wtqcu1pVj+0DZ08JqJrRzo5w2
	 I9/XqNF2sYRd62l9yLP41QT0JEh7A2Uf0ALJZ6FU7peM9Wkz1Ft4jnOVxvEBnXyKzH
	 lPLe3FQ6KLKi6dQ8S1xkihrnetL3RiQMSWd31Ofxe866tOOMxstvc3ZbqdR5w/0e1u
	 UbRZUqihDqKSwczD65jjEZL8zwO2UzwesNWCOgZ1jIWdZUtmqznTtHgchMiioCZEmX
	 YflAUQUDwbtVYr1t543gDa8Y0/r0qxF1tw0GaiXf6zJ4RyQUa7b1mV4/Frvvtu2Psm
	 k+lpFJc+okmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD935C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741812283.32184.17068011674813061276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6c84b838a6becbbd5836917e3335c7d6886d5da68049c384fa4081e45cb693
Date: Mon, 03 Jun 2024 12:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717418122
