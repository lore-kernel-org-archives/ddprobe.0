Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5740527E1DC
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787196634; cv=none; b=Kzf+WRPNCfxAerdy34noMCKIUmH+UH47kkTkcIBk/8C/8ohxgfK7lEycpNkJ0N9eZ+9L5rZnmMZxoEd1q74wnCsq6A7sIZOpxw30oY/w0XGiesn67WbkHhSRyUBAymIhO1OW1bOP2jkGjlvjEVm/JfYx1g4a4FKx/0TQ9qNJR1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787196634; c=relaxed/simple;
	bh=thed1gQDUGdN0T/xNGw0s6zfsC8n7tmjO+nd44G8Y38=;
	h=To:Subject:From:Message-Id:Date; b=QlvIyL7QsgVOFhlVQuHS2NoDzUsHIxw3NEkNMPc8UbalrQgjmHoPrZt3+99wnmFExFriGICxSep3c7I0n3ci1TojZStasV+KRUtEZ2r5F07Tzn+n7X3QbGtkXcuuNANm5UFnzkr4ZkP5Nmz75exVSBW8hujvFQAdwXRggMyFNZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMwIxHCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMwIxHCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D252EC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787196633;
	bh=thed1gQDUGdN0T/xNGw0s6zfsC8n7tmjO+nd44G8Y38=;
	h=To:Subject:From:Date:From;
	b=FMwIxHCQrm8mcdp93/PtxhHoI2HxauTo+HSo4hx+ZAeQgZXM/xM0TBnS/JPZwDj2e
	 8k881npHIDcWo6wSgcL8EiwLMEqv5f4bCHBXp+P0+xOLLeQ5eIwTnGFxLHS3L1HRlh
	 G+oeVJ6uJZJ8SQPDxs8dr/l9JnpFNiOdaDcsWV5l101Dohl5X2H/RF5q2mOAD5xvLg
	 VOT+Otzn+400P8oJmD79u9j3M9MHvqHjYSxU//1Jorxgz1relWDi7faPGYZU77WOsT
	 sNni5A67e8ZSFkSe5Z+DVQTAfCirbdfCudAVdW+r8wLptwWfHCmI+jR1EkCy1w9GiT
	 eDPf4jxNs6b+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7EEC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719663368.12464.8099623583396160510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6940b557a7756d2bb081878aa2945d620f52b6ebe002797c402f4dcfb132461a
Date: Thu, 20 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787196633
