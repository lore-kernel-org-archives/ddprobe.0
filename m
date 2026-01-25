Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194BF3EBF08
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769321634; cv=none; b=XXf1DACvn8s0SeHh0KGQ8aRCdT9NV9/k+K+3Ki7UpWKtZKjuolOQ7gVuTEsoymiaeYb4XxIrWtSb97HGcLw/G4FoIeeHy0ywcnugfHBkpwRkzd6IqW8Yv5PYiZzyAUrwznKudq33ZY02fvzv2it3cebzY4T8EZ1LJZdAaKiIY8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769321634; c=relaxed/simple;
	bh=VW1CvWhhp9S6cemOWeXcPE3DV9aO4pAz9pqJ4BVbxpk=;
	h=To:Subject:From:Message-Id:Date; b=KBAmEFKXW48jTYaqyh7KjhNXkb7dQ6D6YzoCGjAx15DmGIwMUvYfUoRpayidLNUioGk3KQ3kbEqPdEjncMpHyu7oAn74aF2ctYXOzGp+J4EKHd+J1ynGwCH719siBIeuvElA5a3dIZ0i5bQoOcoJa/Z9i6yyNxsBNa0+5bplM/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDgqczla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDgqczla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1966C116C6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769321633;
	bh=VW1CvWhhp9S6cemOWeXcPE3DV9aO4pAz9pqJ4BVbxpk=;
	h=To:Subject:From:Date:From;
	b=rDgqczla/Zu7cmLgsSCwaFhWuiMOrD2b+NR8aFVBewz78mT08vAFDUL8a3KHUMdjQ
	 kpbk9NB65BY8QXGKdBAgPfiGfk9AoJd+9FAlc7uTX6Jbuojl3dUNl1+AnknMi92lD5
	 ehbum8AwN9NWjiYwU9Di4oFiHszTqcj96o5i18uk5dhLIgy/kU2ervxQ7ZTRIWZZtc
	 45NTc191swpecqUTPrWPa6rizAhjrgCwsispGs+nId5AnZmQhqInzJyH39Sp22V4Vv
	 RHmX5uuv2YWjoJZqjfZKGzcjjf9mbqPwjCAJLgQ//sQ6umWCi9Zd/1BB/iS8op7BoA
	 7ABtBWuH+bIAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AD9E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932163358.15792.538608302729016637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfb121359f087a5166516058a4c5c91ec498e1747ce988d5f50bd071c34d438
Date: Sun, 25 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769321633
