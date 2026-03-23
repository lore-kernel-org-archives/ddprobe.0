Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1379B36165F
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774251894; cv=none; b=o70t2B/vH5A3ldNI6/S42BdltRAc494xOo6DWTWOI+FnF387W2CtunTSI7pCh76RGyjKD2EVJ92aLePYMBPPfLkNpRaIg26fz773KXldM8l3zIRMAf/fJOORC03uuDGgQrVqxH+jwRfMsj4nbH1APtZfC1dICcz+mcr3v9Snx6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774251894; c=relaxed/simple;
	bh=bgVXh4fxxkppvynhoYGNrxgip+s4XLRvoE21EWyhr9c=;
	h=To:Subject:From:Message-Id:Date; b=I1ColxWXn7aKBHK2/FL2QCTnmu4kkGsOwxXWZgHAb1jGFspukwxls7gzAcLT50zrvpa4zfQS+07xauVLRYbXgtvpyzSVE80bCE8FsDdGW07/NIXcK3Vy/QtBLiXSh1tpZ8gRvPpTv5me57CWrUopR0zXkN5lBwLHwpQJ8UPYVas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8msirSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8msirSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80F2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774251893;
	bh=bgVXh4fxxkppvynhoYGNrxgip+s4XLRvoE21EWyhr9c=;
	h=To:Subject:From:Date:From;
	b=i8msirSRmHEXkaQTGJYRGebP7fnUh45Nu73h/Og3jP2LzAephoZvFr+WUUmQdZZ+J
	 D5tgijmeoUN6QGjIizkFbULE6NH33r8TMh/1Eiqkm1P56mQXBSY11CXcuxGt0vYoW5
	 t/JSB2kW7xb5/JhhkpoQs4HfnbqIkOi+jeSlTt/FhoOPeKiAmYhaoPsT12KD3zd3+C
	 Pc54xjBXkEL6HXIs0y423bI0ZBB3Tcxr2+C/fTw7eD6n3/RR1wSHfpJ7UgBt9m2wgE
	 JuSba9ySmqwA6DXKopqiRWTl8PQDwbM1po3e7eYgpk+B1v+KpIjrMWYpbisjbYLBRL
	 ke6CkHV6rkWwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B2EFC72D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425189361.17767.7533151756784881948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6a15641c28d25351c625a9f5a94c2de98e966dcc04e20e3115ece8c0e02dc8
Date: Mon, 23 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774251893
