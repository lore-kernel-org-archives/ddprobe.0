Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1578112DD97
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711544297; cv=none; b=T7bvX8QuSSg/Zxm3XGQaePXTRSXn71HUqv/agtu+6ccZucHz44vmgwUDjgBMK3nMuyD4Aky+CRFR8yOKJcPMCUs6bx54mB/ekCjp9x9H4TH6BOJVoqlxZuu1qQ8ZZOvhEBFe1uk1qTbbFxnnb3qDIuTIiNWCAL5HwpOIHU7zmkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711544297; c=relaxed/simple;
	bh=xKtdzH7uP/e4y01xzgYG5GOAxU/B8cOOIiQGdtKanN4=;
	h=To:Subject:From:Message-Id:Date; b=PBZxQRpj2cguMEwqQaWd3EdxrntzLQDFiBmKYqW1q1hu/POAf4JzJEUkwMIjH/6Cwbh1Dq4Y5iE/d7V5NlxCGTaVpb93T4HWV9DsA9uTWrI8H3tEbQmKdYgoZJTs5ZdBB4zS0DcoQ2Kg4oSQXwIOzwTVb6d21ZCzZprx8WUiOzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAqwVyeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAqwVyeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F161C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711544296;
	bh=xKtdzH7uP/e4y01xzgYG5GOAxU/B8cOOIiQGdtKanN4=;
	h=To:Subject:From:Date:From;
	b=hAqwVyeGrEXjliver60zcrNKty7BxYg6AQwLBrR2JNJSCwp//7K/M8f2pKknM7bwZ
	 f7BqZWzen8S9EIV3sQmpGcYJvmFF0rXLf4moCUY46rqL5OMilkV9OR1YJKxFU6b6/x
	 a4iQ+XUqlid6w/8+ZLbLBNVsCr/aRYVEn8XoSaRoy/qDw2jiq9Pj+kGmQiHIABC15v
	 6luSUuqwdU9s7rJ0Ma9N6vZDOIC9Q58bk2QPBqsrg8oBjBRvkNLGUbuNRBrxCQrzgQ
	 2qZshRXecbQchTvMWTJF79BWFgv8OjWNUYxoArHzg94hHbB/4oic0lPpWuWZp3uPhe
	 xkbYmqk84S5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D21FC47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171154429643.24735.6535366055300510437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5ab3e7e01fd7b4bdec270dddeeafb0d467e1d80ddb1211a8f4b3d39a05c01a
Date: Wed, 27 Mar 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711544296
