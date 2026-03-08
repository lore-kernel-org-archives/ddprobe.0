Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E2B1C2AA
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772973294; cv=none; b=IFmfWrys9DuYF3Ou3/M+5PhF06XdJKAj9wIs/KUuoo+1jf3zJXBbj15pUpOnWum/wSvrn4qwZknHoO4aRa5PknbN8040nMwxoUSPs2pVLUs+2m857/6LIzg8vQORKdetUlepbH2UOFq/POBYNLyfcrb/UFIKD6ing4Af/aV7rt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772973294; c=relaxed/simple;
	bh=/xdVgZPdzjkkLtCQJ2MclNO+Krkwlg68CJt4mXSwU48=;
	h=To:Subject:From:Message-Id:Date; b=GHiEGAW7Ewv7flHC3y9n8FcCYBG+HgHRLjAQ3MZQ7n/qHuCZwUgwjwpOanFbyScXxR3HwFlmLYKnnELT+RP30Ui8Hp/0TYWngv+j1bWSUU295LeZ2g10LtUpAJPj1ZpZb84TTRv/C52XLiebwgOzZvG2a0zI51nSHIkLnhKX2ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8y4yqEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8y4yqEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB382C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772973293;
	bh=/xdVgZPdzjkkLtCQJ2MclNO+Krkwlg68CJt4mXSwU48=;
	h=To:Subject:From:Date:From;
	b=X8y4yqEQROf3q8ibwo1J2cpVPAv3Hzex8w6ObjIdXFJI3GpYQMAi6zabEc/V++3KN
	 cP6alJuLAYCo1umpwyU5AY/QPHI1cvqvHu8Rrc/07ePhrqTkiXCpS9ZnzwGFuoIME3
	 LIaCRCD3lQPgCj5XmGd92YbJmRlt5/3AvvsiH7JfmIs9XfHWGaNjfSDdu6uZLDk/8W
	 HZ2AmCzAuwcexSCEtr1KQQxHS7mK6oqTUu6MFIOjYXXwuINqi+k1ut31qS7wjV0iKA
	 W37SnmyNi3/R0rSEgsxxkW9nAtQip9G+q6Np1Pr+VwtVAjkLERTXxeLO8cxFSX8BnU
	 0xflX5p0ep4XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92225C54FD2
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297329357.7901.14708371451095638522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbaf45fdd3cede4c39d1cea692dc27123c71dbfba49082adb88dc7089de23760
Date: Sun, 08 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772973293
