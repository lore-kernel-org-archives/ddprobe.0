Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D328287E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776515854; cv=none; b=Mw1EjCpYdURcw1amyuZU0bdBiKkagjxkfWEFCjUIZpZLqe/O+x9t95AxyseUnN4/kqr2U8eVhpOgX+AnUpVEQlH8xg4APtbJXXUscm7CVDkmVH+Y+37IIU74eBzJFV5HiZCafU1y5iOhBAud2wlAHgEIGprZzTx850hxUFU9mqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776515854; c=relaxed/simple;
	bh=hTVjXijTnAGbooKzfoAPHYnN4ikCXXF2sT4JMFIxG68=;
	h=To:Subject:From:Message-Id:Date; b=TXHVDb8omjBN334V4bE03eHd0YKlP/2oPewCHmNralEqWjfm0K0tv7BFDrRpHEecmcKNB6DvIplTQyEhLMT5t7aupRlM+RTRtKc5g464soymCLZMdSnhLgAwlAriaxoYcy5xKlbk06nVX8aLqfJKmaRx9unikIrhUntMN5mm5Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnmT3CVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnmT3CVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CE7C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776515853;
	bh=hTVjXijTnAGbooKzfoAPHYnN4ikCXXF2sT4JMFIxG68=;
	h=To:Subject:From:Date:From;
	b=lnmT3CVUSmfb4j82do0FBzJz8uBLr/kvI0F0Icj3NnxS5mvl8EwQoBTplH9MDb8+u
	 5FrQV4P6x7W/TbTQcZHUZnSiuNI6owhZQmbNEOjwWl69di1nvOEbJtHpwTwvmGOzP8
	 5aXB7Rk97LEqniUBnE52325kQaNrxu787Kqh/y0i23v+3ZOPFc0VUJF1TpI3ABsnNi
	 SxZDF6Tk57ry3EuELtG51soMEKIUaLpi4JXdvAKBCWgWeqUewNevPsW/fTqQFFEn5G
	 IMqFwUwQX2yOpudFtB4n9G5q+L0euBXvRy4AytltzpwAdE/nCcNwBujZHhWLI+8kPw
	 vjfwHA/hNsaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC006F99C7F
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651585368.17391.10330399152781588984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d504882aaf790f21f7dd5ea807a8f16edeed4b1550d42fe5c451595c575509
Date: Sat, 18 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776515853
