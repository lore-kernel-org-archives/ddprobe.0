Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44252314D13
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785601234; cv=none; b=SINA+GCXSqsLEvK5xjEo3eInOq2nLTnri6B4xDRwE3nkdsdkX7H4P41x2ULCfcb+8DLqy4KxLaI7CpBxomRleoteCZ+7I+O5AkkN11rrsv2x/Pa05ypn3PT8VxToj3enK1skh4kUGQFnFMffRaVPlvZVFJStwbYwFNtba0mCvdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785601234; c=relaxed/simple;
	bh=RXQI+Nh5fqduQmOEtL+hiwaocACCVmmEELHeo4G67vA=;
	h=To:Subject:From:Message-Id:Date; b=emfKEQBZ0tIibw1dmlT+CkcZy1QOOOV+sW//KqBhqx8uTr5T0kRlMGxy2eGeYCGT/iuCzbxJKO/FvgzQNai1XnqV7GVjJgX6E3lyOp5PK/qSl5+Hpd5Fk+7IhWs/ujdhuViCnhFA+3kl3a+F6JnHds5KIz5BqdPu94c0jlp0UQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfYIhWRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfYIhWRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AE3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785601233;
	bh=RXQI+Nh5fqduQmOEtL+hiwaocACCVmmEELHeo4G67vA=;
	h=To:Subject:From:Date:From;
	b=lfYIhWRSh9MZr9efloq+vhD4M4BiWIy5tzXuRu1kCtzAMxYYJiqooDac9UjPX6ny6
	 m5OkpSZEk+o7gAMNcmvO7/lQ4cezogZItrDuuTH/A7DXQLKkHENjrg4R9GetW0hRgc
	 +vYYvZkL+wPYAwDHKegvZO0roNr83jNIDlw+E7OZsOAos1Ksfe9e2OCMcWMBbVFwaG
	 ZQaXmZoEN069caEi22/It9KMsKBkaVnoToHoi/fGr3s9uT3ykUkz9JWqLhgldN6GSK
	 3Odmzfs+AkbtnUulPwQ3uTkeE3qB8kmEdqiqP601Jid1EAgiT8O3WnmmTk0b0SUEfF
	 ueDEVBMNQVj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C0C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560123368.30431.9304318677330935840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee49f805bce156171a59edc5f0ab7a7faf7a3aab71efebe62e9a2d32a6039c8
Date: Sat, 01 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785601233
