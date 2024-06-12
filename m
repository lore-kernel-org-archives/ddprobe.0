Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5258F12D1FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718172503; cv=none; b=f75rpgpD5F6A8Ja5Oo7kPuR1q2F8W6q7U8hU53J50FLj4ZPjh6mHomidfOtQxU7B2qUCWeklDWL7AJj65n2YB21O5UtC7MEvFnMKy8M/glwhNQlGWEuuqsrVMpABio/SQQ/7f2slD9sFclqHH3l7EnQnxXmbx3a+Y2fRsS4CECM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718172503; c=relaxed/simple;
	bh=3YhzmMbCHYaJKje+PTztVROjfF31b9qA3dSlWVzvGTo=;
	h=To:Subject:From:Message-Id:Date; b=mmANfQWqFtrxt5X+Oy5o4yQdepOg6f/Pm9KV3ewjd3Mcoo2n9KVtqV97ih10xN58Hm1m8AEeCenzVYqp7JyaK6H9gP+p+P7kBN935nmyLyQaVjXErLNiJHW/mp2dOkjgZR3d8wbmurOhLDAa8UBhHB3+fDfc8xLryKHdxULndXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4JAvdwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4JAvdwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E58BEC32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718172502;
	bh=3YhzmMbCHYaJKje+PTztVROjfF31b9qA3dSlWVzvGTo=;
	h=To:Subject:From:Date:From;
	b=I4JAvdwrLW4efQzhHtVIcYJ6D7uz6zfrXGFo3oakt2ctOy0SytQTm52gVAHrd29r9
	 XJqfONgqrLMqEzybn7TA81wn7a+8D1HfJxfGgmeKj6nT+w609+GOEarI1BsdLBD6iU
	 qfAPGlsHL3PpAnyFoy90Dhi3ls3Q3WqVXvyoU+C9CVRu16DBsiQdjXWSyLEvMgalPl
	 jc6+fe4Rmtq8PIDqifM+DTIP+fI50nYdfUxs6XFEU0UTLjs+yLGqA6czjU7y3emiqT
	 rm80Ad4oeDaMZ8+Uq0aGGPQLIS2Io3bCrS7422hS8/bQEHyvlpIKYeWsgeSzalSZW4
	 DhbrRPbjxDc8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE9CC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817250281.10021.9694226917410959936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78ed83c31b2e5b51a3df54978a77f5e5f51b1147e16313612373567fdaf248d
Date: Wed, 12 Jun 2024 06:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718172502
