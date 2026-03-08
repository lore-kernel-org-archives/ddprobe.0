Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FADE2BD11
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772951094; cv=none; b=cvxK2LwIZF+ljNhBYtKMFOwxcqFzDty3L7WsGDYyLb8D4fqxbs2yjWxQHOY3gWW+SEKX+fgAZxwT2qDT/9DOhmOVBMr2CX233U8J1qUjyljOYIQASThrVj0F9TSPGlFmaMFHCm5jsUdtWdi9IQkCFr1WLY4U9nYG8CyvKZRoX6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772951094; c=relaxed/simple;
	bh=JFkWuEfEELJvLHVQ+hZlfkpssuB0DkEIzgI6hnYZSdc=;
	h=To:Subject:From:Message-Id:Date; b=RheFG81EA6A7SZuN1Qpr+dW8fWDyU71NRYxN187W/55iZYH8GdbHN9OMmrgUCnWVADJ3B7l59tq9WWBo8oUpjoo8Q9KFLd1cAeai0EcTdtgB+Y+8Gl5g8eviGeHjTtnRaR6bb/x8GOTSnzTqceE6/U0JhIF9DM+UxKdzrUxBkWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fse28UEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fse28UEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A49C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772951093;
	bh=JFkWuEfEELJvLHVQ+hZlfkpssuB0DkEIzgI6hnYZSdc=;
	h=To:Subject:From:Date:From;
	b=fse28UEcuyfW1orG3pAxv0NyE9l1UXpCuyAVCJEFH90qdFRfqfS/Cke3ybmaidZbZ
	 R09v5nj5geVuFuNcOaJEKdm7DQAuWdGFTNkCZxddPBuxOO2gdINGfTm2zYbU6D5h00
	 qbLLhheREOGiv205X5LzIH+JN9KsMLZURN+/wcKlM58GYlpnjN/Ntjy8+qS5ZbF1yO
	 ejOsTStPbShOxd4AVtCMWWnW8PYZNAkhCvyIJL/Va/ZQVyk+8QhnJX/OUhLf+3iIKC
	 h8fap9sHj6DwoBUl6YOvqlhrqcAq9BXcP2/dirNlRANLr1Z4tXv+ELtt7sDFI1CspF
	 vp66WSZGjnEDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C9F5512F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295109357.11146.2520774385015881321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 759ba1b0da605e4baeb5e01640f89c5d0fc7aab3586d4298d58412c15dcc934c
Date: Sun, 08 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772951093
