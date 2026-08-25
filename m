Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3474D47DF85
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787665234; cv=none; b=j3Ykmldfg50iYokM1mRQHRq5siTwt0FIMS225E6FFmnSjj8EwSylw0YsKn2GJtYUrtiCZcPBeelhir8GUOWTyQYu15GDR9d8a+d2C2hIpdqynXNfhvoANyupAVk7SWsNlfrpXPwphKlRsrrnNJcmH78QDvDz+XEcuc3krXIKTYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787665234; c=relaxed/simple;
	bh=Y6a5jon5s6aRmpZ58B7sfVP/tTuXqrvCtlJ2dsXTyoM=;
	h=To:Subject:From:Message-Id:Date; b=ZjqtbRjNn82+EV75Yl2lVJpD5XzeQweWvHbwQF0nBGuZ3clkR6KTuuvIQqUq9Y6V9JCuVG4HH6a2Ta5NKrzIOTYgkM02nZ9CqYUC+vxBL0+fnhVM5w/38L8KDtnvSyJ96CZbaciLlvIDU7T8DwUAeBimJb8MrPJM9dE+ZN+3LmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxwHDdDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxwHDdDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4DCC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787665233;
	bh=Y6a5jon5s6aRmpZ58B7sfVP/tTuXqrvCtlJ2dsXTyoM=;
	h=To:Subject:From:Date:From;
	b=rxwHDdDEFTJRFrsZ+rXz/tuwDxhfH6+sKh7oaE8naukXohZuSZjMucJ+CEvPuyp4Q
	 AXl2N7fz4ZVtMMA9mHb8vvXrP3gPJYswyYy86dCG37WmNYt0Ue70QcxJ5L+0vgKbQK
	 T5pKvUbhfuHu1fpTMZ/iUZgum6lu4BMtA/NsNJPFR5SGLuJNywX28F5nq0diGk9JxK
	 9TwDcUxyFJ4c65EPPbv5FjIRKG1htHmHyBQktBaJTLUU7XnfKXme/bSXwwcwvpKseA
	 3Yb7l0bgDfRvqdf0knAw8wHQF2a5NoJn4onscMjEziS5/flKFE7z2OFf1/dy4ujDNl
	 IXtHuxmfDFQpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE34C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766523369.13206.11861278174628314847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29a8f8c62d4e9057520ab6353fe40d64bbb56601726db791e5d5afcd94cc0da
Date: Tue, 25 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787665233
