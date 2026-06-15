Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED672BE02C
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781504794; cv=none; b=Zq2DvgSfC4TCiZthYjFS1ljY6uktFgj8lNtPukvQ/fRgOX7Q42hyMsUsvtBc1TTseoZUCqRw/8VY9IOl7tm2Ryyxa5WSF/pVOIgM26Faux3tTPZVe9O92LEz+Vww6ODBdD3rlkxw0QNDL2v3xBnp8RQSdU/Ebz88BDY12RiGb28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781504794; c=relaxed/simple;
	bh=JmONIx2DQBYhyF+dIIVRS5261+FGtAw28SPoCWS4A4E=;
	h=To:Subject:From:Message-Id:Date; b=U2wZC/IGIngpyPo+LJ9Le0xFG1GBJHjulqLJZimRWaQsa4nubuzkju2KuRf9BXU0Wkf9ia6HwEVovoi2DlgGhEikdih9YUOFfO8DqKGx5TVPQhoQuNILoLJrit5gSzR8SDkTxDz+AQpxkhweQ7auUC2xaJmZPlf43imQaNsUuDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHUbuSYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHUbuSYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7450C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781504793;
	bh=JmONIx2DQBYhyF+dIIVRS5261+FGtAw28SPoCWS4A4E=;
	h=To:Subject:From:Date:From;
	b=CHUbuSYTs28eopGCakh1k2FcCMNnDctZiF7czYXESQUXxzj0ND0HvCcu8waofK+bp
	 3kCLfyLbD228L24bJPl+MFu3OakNFZR79DCU+RRUUWr9HQ4KbJCvm4svWZ/Z0hJcx3
	 PHO+fx2bY+zUDhZdA7WTjV9NW2y74Axr5t3iL53Cc5vux/GzdNQxyoQJ+31OFijc2y
	 cxRJH6YNpDB/41p+xvh7cz7WKa1Vt+ljOBkA89y75fwlVzX+Sj5jNVqxmmRD33tOsr
	 Gu+CCWlivOLioCMxhiK7R+YZRvAxas9bjlPNDatHWaSKzwKjtZ1mzcpaKQ3fbV1JSx
	 meQcyplLgtRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E27CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150479373.6164.15438736365754537089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86020f49da2655858fc3e7ea39b54896868ef9957a7e3e607203cb2a27e046c9
Date: Mon, 15 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781504793
