Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2871A433A0
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760412594; cv=none; b=fwpslQByA8hmjOZy4peW4BBxwf7M5yoK3A0kDRxh+Z4nULv2LklTGjamzux0HWUaEXY5zOQUCJ/7pR6w6MDqQYqhyrxLUy/TOdKAg3UoyMqoG9B9RsGuHHJEx5tJnnmFEzO9KJwKnLIwSoy3UgAqKrRm7HuvJQl+sRt6xJZ79R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760412594; c=relaxed/simple;
	bh=p08aSnruCzCHkd0Hnh9FRnB4X2IczcF6g9JzuvU47Ko=;
	h=To:Subject:From:Message-Id:Date; b=PsuCrpdeCcZp8q0An/8viTY6IiNxecKxwg9bzJHjaKUb43bodhtzOViXO6VO/kXp4vxRYr/UojKH6eEnSAjpBCBgY+ihutr/7AiwwTlZukeGa3B98MMYC0Iuu94tDq5Sw2rsYSkEnqfpc7JdhHA6f39/UnGSLLKdXFyyTkedlxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b629+BL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b629+BL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0370C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760412593;
	bh=p08aSnruCzCHkd0Hnh9FRnB4X2IczcF6g9JzuvU47Ko=;
	h=To:Subject:From:Date:From;
	b=b629+BL0zrgwv4usbh9HNHrudRZsPY8Av2FqwUTnl3JEdyjnqumGRVXsA/crJh3Mp
	 jf8BdDErF9op4WGYTFWyhK/tSuHJ2BZnNiCL0S5otMBnrDR2vgNQsHcGVoS5rQmn/B
	 C1Tgx+4QJ1/rLTQw0ge+XAvgYRDJxEzuc6IH0Jpk0x6a1L2e3ol9s471X3tJdBPxrf
	 I47CFwyY39PuHdsBy0LtPxhgv65Y9Vq0CNxdRrEVs5v0EWwFwz4+gGElWtHW2eGo9f
	 xPHor3arkIOPFo1JkZCK+kOFiZR8Z/K1KVhhrsrf7WLy7RV2d8K2XgYwFYCT0SvmJl
	 hHnKIL5WNsCgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB0CCCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041259357.4433.9990843646086439298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5818acb89a737194165fa66fd8d025e656c781c259de4b2dfeea5f80ed7cde5f
Date: Tue, 14 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760412593
