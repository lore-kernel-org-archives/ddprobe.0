Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B30C245031
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769279634; cv=none; b=CGcBRighq3omG3fYwGrYzgWH48riteMKEdIhIXh51wxgMUUe8K0Y+sUSzB92gkaKuBdEWYclMRSggZBU/3r7HuwriMeUe2teIkqa8YZv4C0uaLDkDJHTsHuanWQkXquNxwv5/zxBcS6NFGcIgLhAoj61jpbCsycG54nY28a16uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769279634; c=relaxed/simple;
	bh=VAQ7KLHqxSD3Npf7/DDVt/Pow/Js95pt82+8fWstfAg=;
	h=To:Subject:From:Message-Id:Date; b=RmtpBDgAwiLyjwp5puw3gbT2FJhpIQaldhUrns0KNZKV5xD5oOxw7E2yyQSx9nIubHIR9eETlSNGGg0At/UAbHbAhmq/tch5S3aSew5g/99hLshOzUA91eQL5DqUyXjgznCQzU2i/0+eozgRwp9tmwXvW+v7FxL2GqVDE+BHuu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3tieWQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3tieWQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A143AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769279633;
	bh=VAQ7KLHqxSD3Npf7/DDVt/Pow/Js95pt82+8fWstfAg=;
	h=To:Subject:From:Date:From;
	b=u3tieWQN+038NMWTt+hlAJ/4hsoMrd58pRyLH8yCCGT+5/B2+5D40ApcgCz7Bh9vT
	 7t/bFgCtVrzaRtn3kwTN8QyP5XnA4J5smd4fCA8T9cbhOaKMYeGHlO0PO8dF/11/t/
	 Xmqd7FZLMtDeqFd99FgeL+wZlxnD0EVmH0bElFnyrkYhkyT+7C5rni7u8sRKwBL4Ne
	 TQX5DCs75JmO5jsA6zfguJy7yNYr/SuFwiruwY2vC/f4/bXaBk3f4GRs9lcZWj6Jzj
	 FJFnduDEXI3BZ8XC5AqwbnVf05AZjkwk7cZdqqp2UZierjlblBVeRGnGJiA4oSgvvK
	 HKE2TLdColZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F962D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927963357.30863.15894166506396933904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a2c44372573f3f10f00f8ab6ccc1af0a72ef1af5a8acb785311df79d123295
Date: Sat, 24 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769279633
