Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AD9189905
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751087394; cv=none; b=Coy/bGbV/BiBoyUXZF07qng0p9Rs450jm1pr0xQnlU9+8uk5FDqT/y9hzOuYnqE6Yye4CRSvPM81nKxbybFcaCSQCKdyS6pYEK0gh3Ce9V8x8XNOhIBp2TIi/jS2YZRy1h4ShhGCJPrCxrZTpqu0gojtixCeOgQoFbSbCcDxjvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751087394; c=relaxed/simple;
	bh=aI2c71IteR593a8wtItAilxpFb1LA2nsWWQ+lte66yg=;
	h=To:Subject:From:Message-Id:Date; b=WvFAlhEd3jj4SxoxgBPM3dX2tIezMeTpuEJCn2TrmNlVhAE6KHSm0XTHmcHepfjIgjaYRokXVl4g9seUDc5a/pYv/6vOj8CbbLb6PIohzjXkvuYU1W2MEs9nyAKDuymtgFux3X/bp7/mvMlxuLoXh5g69lpY59Ga4lePdPFAm/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWCdccwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWCdccwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB80CC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751087393;
	bh=aI2c71IteR593a8wtItAilxpFb1LA2nsWWQ+lte66yg=;
	h=To:Subject:From:Date:From;
	b=QWCdccwjeuwwo+uZvUM+o/d49Ao2GjVfTyf7voxAI/zEZLhTwzOysRSkSKe1AD5WM
	 HCAIzB+Lnk4Lo4W/mnTO4EMFiLWFiCk0pFcPhKuYFvS2vWec8rwz+K7w2DNtKGobXd
	 IRygB3JkOZQhMymNbDAzoFDkKjHnJdwAJDG84LCrqlNjxgpF1lEffjKFiVhvhMRPoH
	 AVPOL4g2+/1MSoC0xvkmj6/iLUsNTOMzJqAJmMKQ3f977y+GI4+gbncII1GPDv74z7
	 oWJQdYwjnaV1tHthI28bLJ0ATh5wHfm3uvjG45Wrob/hxrRM+bo1WkMLICo8QvnN24
	 dumjUN9ZKB/7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D7EC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108739358.16274.12213957787585973926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a463a37f2a6c4824a702747bf07b091b7069205bf0daf676e967b7352ec63dc
Date: Sat, 28 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751087393
