Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1262E6D11
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749931194; cv=none; b=c0i+kB8UO1HAOjsauisVsgoMtdTJBLtB2w3j23xZKKgKezcZ9X87BhbwLUS1THa6AoAhw36azQc+PgF8npfwlNWSCBB3GrfM5M/0OEeEC82ulAerUBH/VWUq6dvufMmUkAXTwLvUupbs5b5o2lpOZqAyaMJvVmkDA8/O8CQRf/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749931194; c=relaxed/simple;
	bh=xtpCWRn928EYYIK87ePD3HNQEh1n+uQFJ7ESGa834m8=;
	h=To:Subject:From:Message-Id:Date; b=SZ5XmqeLMzpZe0RK3szf4dI7XvhID4y3nOAJ8dfqFpahi3EVpfdUkzmBQy1bBTP0zGZ0Gl5LQ8WFrtkj/CHi79TPb2bqpk/WdlEDS/usBGLzjJWue0H2eOmCkIWB+K+F57kcNn/GlQTP9RspRbOKTRi9bWzAPy8MKeq0R8K2ES0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1kViE3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1kViE3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64D9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749931193;
	bh=xtpCWRn928EYYIK87ePD3HNQEh1n+uQFJ7ESGa834m8=;
	h=To:Subject:From:Date:From;
	b=C1kViE3MaFy5DKgJXZ39VKAkHSM8Ld/Kb1bTl5eB5nkB3sFYgtMvAUtsPJQcEpqnL
	 oQG/UkDYT3trxzkGi7+MFbY7y9Sw9zTmKacYlo1ZZpgnYUghlGt58ZYkRWjmi/eikb
	 9I05mckkMWsTte0WAUgjm5s/gysv+Z/jxJnuhJDpxR3d2wpGExVi3Jtr2k2UfSzwYJ
	 5a5AhZQM9FhgRnHGoudrmSowO34IeWvUPbcQWuL5OoSHfzEdkHP24HxclkRJ92MIic
	 PJkEIFCEabLhEaUlZcOCS5UJA2wrJLg+fA/phuJPcTxK9eNBuesc/TdLOenvm2lW4u
	 ZYGgE0TGdA4iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93571C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993119357.1037.9819887949402199116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df71c2902b2aedcc4230e59aff4f3ac101718447cc688cd33a7e2a3600ce97cf
Date: Sat, 14 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749931193
