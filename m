Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F3E319606
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765540373; cv=none; b=Gg3iugpd9/tSjEeQPdbsMIJvnrrtzWh5gR5oziYp4W6TstzcVDM4Z9h622CezUC6RRaGZEnRn6iRBvi3pqf4BHg+GdJ44G6+dzfwBxA44jKdjcOmnR2/U+mCJ2FoA1I/Xo52YQ3cae66vr8Gj3cyKWE7b2CkZDlmbP6Qjcm9guc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765540373; c=relaxed/simple;
	bh=eJZWvPYXiIgkclK8wY/CQoj/CCqKUKHE4q2cmIu3q3E=;
	h=To:Subject:From:Message-Id:Date; b=RWaKxEPOTVO1WOyUQZC4EUXrmd0lkh/ZGK0TqNLp7EkfpLAL8+VP8/Mm5cZBAyRPuF4ttvXGI5DnolT5MXW8P/SkljDsd5hJ0PxLrdvptDdfwn+UWIOoLs8YPXA21FNxBNYgUIb7dykymlMnYD7vGhJR8gL7TMx34weZP7MAGH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6/toTC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6/toTC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1302C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765540373;
	bh=eJZWvPYXiIgkclK8wY/CQoj/CCqKUKHE4q2cmIu3q3E=;
	h=To:Subject:From:Date:From;
	b=J6/toTC2d9b6vZMMRT5KCzyqkTxsNHXyu+iiLmLx+WYwpBj/iYvK5UgYng+W2MjT2
	 5Xjvsx2b52G63FP7NnDxndvdDYqXbI++T0jtQT8BUGcwmNQz8FshLruu7h3hdKLlpl
	 o3MyScnEoPNmg5Z9ajB0vuyIofdu2E9rvpFZdxFx1LArDSOs/HyKevwiPoqFZ4W98p
	 J0zpHHFnv5gd5pOtZoN5FQnmJM4mEqPT4WKlG/gECja5+4knKZGpem48svMKaNZzLY
	 iVCZAf5LJPpoWwFq8135zpNuesw0zgklj2OyAcx0OE67vOnUWxPot/rRhl0kb6bLn8
	 e6Cl0oY1JlRKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901BFD49206
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554037358.4426.16947725395819682159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d53dd9e907192413c6841292abaca12bc4627bcd60b441abaa477b3f69aae4
Date: Fri, 12 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765540373
