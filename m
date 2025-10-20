Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9232ED17A
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760952594; cv=none; b=eO81sKkM6On2/c2BlPU+EsfHJOYenIP1KJwJZyZt1/VcW8AJC49TsKXQ7l2ApMmPqmmbBrrKrwAzZ+avyJZEFBrmFzDm2w1PebUU2rRbElhQJpgsYH+SGNgyDambkH/DVA+EouvQmznLk4GkhtpzukOcfn8pJQ/9AYwHpCAt45Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760952594; c=relaxed/simple;
	bh=+cWXMu+QuH9HGusTENMKwyyHTomyst4sSgS7ddwfL18=;
	h=To:Subject:From:Message-Id:Date; b=e3roQc3iV2f1zKZssBGxbkMqR57trytBHAl/jdCplr/VW8bhluW/QrsToflxVCWzHHIKn1zd/G5ANbTynLXUNSP/mmdHLcna5QN2MstyP5RGy8v7o0mkALrke3ECGaV/ra8UQxqKih6X0kYnJxIt5BCqpB6rhiiekftEinEk5LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkr/4k6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkr/4k6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E408C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760952593;
	bh=+cWXMu+QuH9HGusTENMKwyyHTomyst4sSgS7ddwfL18=;
	h=To:Subject:From:Date:From;
	b=kkr/4k6ZEnxz6RKAshqIU+36g2uGJQsNhheM4RsQjc9aU39cd53bxZnLya5+kL052
	 eAjW7seeGCza2mgjXzdeVqNTmOVVoMj7WCxrvDyLWiy5S6EPFCA87l/EZF4JqP/DrU
	 ubUQzb/AnrcQxIelr+qzbLVI5PB5Dx5UgqnP5BIc6dOINyTIaIOoZ4kRHVZhPR+umH
	 e9Bt0PWWhyUSow57tcbZVYPkC+G0ldXJoyS2qOC/ttZB1Unm5Rh4ASn1uQI0+zjKY2
	 mPgooMndw19LDxyO4gooTPFSaqUgQyBDdhuCCPYTGUMkBBQsup4A9/cMwvounfCSGD
	 BnGXuCUBQRAGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3CCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095259358.17675.6440958228350913618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f61cedfb8599acb83d59cf55e94f5d35f6861cc557d9f9d0b9239c03e1f90008
Date: Mon, 20 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760952593
