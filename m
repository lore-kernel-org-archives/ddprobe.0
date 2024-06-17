Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C1013AD1E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718633303; cv=none; b=fMfv+MVwuc7AxaZV4lJN3X18y0aauASEyKKoixaTuGYkwTZKhWrbUCd+PAIK8VznRn/mMu7BJsQXM6Pj9uStDAk27xhCayDwRopitSxbM3y0B8MD3Mu8AAp9KadDOxoFqmCgKqtFN1Onass6pBul2BcD/v7gRhwny5OOG4kr/5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718633303; c=relaxed/simple;
	bh=ZdrdeJrhv3Ezl/71KK3Ba78tEzSMD24R83S6YMxg1Bw=;
	h=To:Subject:From:Message-Id:Date; b=LTBQZ7N3LuF9s+daOqtwbcrkD7/e7oWlDVwilbLdhADwto+JdOwwLmFi5ncQGeKEuf67f3tD9v7+HDUGXgLDoTUW9T8j5EDYb+BvoTLDel8aoyyQaEHu8JBaPhdet8f4115hd8Hdyy7pY6KZaRGi9TCJTUvZkbI6yGSAG6Qp33E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlEo60bo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlEo60bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8899C4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718633302;
	bh=ZdrdeJrhv3Ezl/71KK3Ba78tEzSMD24R83S6YMxg1Bw=;
	h=To:Subject:From:Date:From;
	b=AlEo60bofU4IDcdY6M/3nvgin5946Z4q0gt636ngkrCG18C3P/9eFF1EGrAel/FDS
	 EBNB5K+Xk1e+ELrgi6v/Z3jkLqpZpQqaJ8/VFI7Z/gJJQ3FxmXPwgNhTED+t8aOQVQ
	 OTW+BhGvLtLkNgky5UTEtGk+fimx148TqQrDWmKVZbX1RsZmwplr+kHAaqeKgEoDR/
	 zFyvBNbqc/tXvjjxVKgwGB8xbBAM6zQCc03q4zjsH0cwXTrlR0O8WbJSHMHi+oYfaW
	 HFNdqymtf4Xl770Ndl7eloGA6ThimXqOsyzO4U1EGZHoOatkVh1eQNzCEEVJgp1Eb9
	 A/+hAkDIsWoAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3535C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863330279.16272.10348410120796010961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71185ca262a70b0a184d4a6f62720cc9969d96915d1a4581c4ba97e8dddf38ba
Date: Mon, 17 Jun 2024 14:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718633302
