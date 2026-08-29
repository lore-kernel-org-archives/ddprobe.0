Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6881C10F0
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787976634; cv=none; b=GjDeyyv7wFSDSS4N64gMU9XVIHY6m03LfrMNIBk1VJJ6qX98qqztrPWICsyG03rrwu71EXFD01QhAjKCPWUuTjPqKl7mpcsgzPqpSqKRYXahHKkwN1FXO8Lx+UroQR29dshDqJ1T0EjeA2KXaAYw/rMvYPGBxwlyv4OLcYXUZ4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787976634; c=relaxed/simple;
	bh=h09WtT+xWSQSaltnAIn7fnCLOnRZI/+yRrmrX0MF2p0=;
	h=To:Subject:From:Message-Id:Date; b=rjsYRNF23uKFunZ6OW5vWVQRT/pRnmFaUnlLH+9G3/szpXTo0o8UyNM2s/dudUdah3aNHY7aZyzLy/dmifTimCFiK+I3jIHBA07TTeMydAmk6dsELeRcQQidrUoT5gqQiDNc+0Hai7yMUeBB1xUhElwK4eo3sgkBYY8G5CCRj/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCV/wUZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCV/wUZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2EE3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787976633;
	bh=h09WtT+xWSQSaltnAIn7fnCLOnRZI/+yRrmrX0MF2p0=;
	h=To:Subject:From:Date:From;
	b=HCV/wUZ8q1cPOBrhkrHbems9SL+cTvlI8VhQhIvcDFWtk6lnKGSlrYMo24emG320T
	 +0MHcOEmMJimUviUnpgimHUk+KJ6uSGKkj5hK2/Z1hFDqCQ3l19qanq3Y+DS6bKqQ4
	 rz5ZNAD94PTXzLVPN77F+ZWJM14Ega4JhyuxQGjZtnVP74EGHT6p3bZ1k/nWrCFEjT
	 Mja0cIMvLXwQi7KT7FwWoTMyPLo+IHZ3au4ZsTrOd0EAo3VGRanmhJzRmylrclZiZ+
	 Sl1/M5IMoqJSrHZgXDumr0wkRToGc8Ie2fJ0uQdJnCtl15zpYqYzatY/JsnAvIl8/z
	 14jjCKIjJ15Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA72C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797663372.16248.13958026721990386417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82132f47a9d2f42f69abc22bf98b71130a155a195657ecb0ff2bef22442ac8bd
Date: Sat, 29 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787976633
