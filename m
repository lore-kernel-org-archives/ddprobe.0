Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3E33955E7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780635274; cv=none; b=SUXkYB9ZQ3ZIZ0LSOlMaViClIxSjqLa3za4dkc7EIaMvh0vaKtZJYb7e/fw9LjNg8B8s+2StJ3Pr9XhWTnMimC0uXDl47rUPpb54TvLIvRzd9F9xifeusfObXRkq3ZuYXTOH67sajB7I8wbpxwP5wn9l7LuyWfzgu+PwR5xKS2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780635274; c=relaxed/simple;
	bh=4Ore5QhwiLD3biYMrZW1TKyseSffQWvs4bduKfvfD2g=;
	h=To:Subject:From:Message-Id:Date; b=MosEq+JkrFzgOVMLbc0mTjpzTcih+FRxlsyBEo55vWV/dfgxoP7tkAGUktbx9ziKyoxbYVsrO8JFWIVSW7wQcG/2h+A/sanL35cRFuxxTd0XLl/sqUeoVA6G/8m6keTTJqQZehNEfiwXS92Z+XMLY1166z30Fna7EKEMVWBgZjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQcxnobU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQcxnobU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5509C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780635273;
	bh=4Ore5QhwiLD3biYMrZW1TKyseSffQWvs4bduKfvfD2g=;
	h=To:Subject:From:Date:From;
	b=KQcxnobUw+MF7HoAGlcsXnyd1oSW7aWY7N5/PCWhC41FAApQpuWKWczY6q3Wz3i8H
	 8Wj05u7o/3zlSj/IlOQhGTmVsZAUm5HXgSI8/G+L1k2uiM4LNER7dQcdtPhqK/NM73
	 HyF2/JcK4aWXviOokqghVur8pJUltmYVay3MXeIKWy0EwLajGzxh2dUMWILDN/7+n7
	 Mwn/0kY4lVteK1N5shRP1zv2DhPqvM0XZEI+vUZ/KTzEeN2J5sF9o7P+19EzSgKMnu
	 cYQ2JejyPRU6z5zA8UYloP1fD1TI87GM+xrjiuJyT7R6ylUGBuvKGo+0ibmhDVRskq
	 zntUC9Iv0hjqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5B6CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063527375.13549.13319276183342221979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a6b3db9f082a4f9572db4ed4366995793f8426bce09cb6257c3360d26a222a
Date: Fri, 05 Jun 2026 04:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780635273
