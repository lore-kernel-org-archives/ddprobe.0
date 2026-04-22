Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2246019D08F
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776830254; cv=none; b=mb3o97T7ZMxZywwmrGtL6TckBMSVTppgwXXKdRNL5AgEVskg7/R8I5TrMvYWIoVXeEdrGd+e9DAKqvUPji0beZlGYKtpnZ8nUqK1wL17F9nWbJlnyoNlBOeSebxiBo57AjfszjuZXDKxz2H1djBbq0ftasJMuirauu2kr1GXvDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776830254; c=relaxed/simple;
	bh=Bni2mv3WtpZJEiGWredtjpQ0+daZzr5avKg68/4vs+k=;
	h=To:Subject:From:Message-Id:Date; b=HdSKhONkK8pA/k+rZK7IC6WEGeUhKNAhIi6NfsoGAPpUknoOQdAFuSi4SzF/QHPM/tOxH8MbzPv7GuaBwYfnShWkQb0xilY+T46Yfi5A6Z/pE3i84wsNrk/poMN5Es2grq1ABGIaCfGRJbJn+hEQzQgM5rY54AqFYMHYBR5Bq7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDKbUJSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDKbUJSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82DEC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776830253;
	bh=Bni2mv3WtpZJEiGWredtjpQ0+daZzr5avKg68/4vs+k=;
	h=To:Subject:From:Date:From;
	b=BDKbUJSXQXd6fl22eTllgwl7DwnYoK8WCMnCQykFXMOK9EkCha4xI6/STdFqLczzW
	 iLlQBvajVSI7OKiglSW/sio9ysoENr7x9128nO0xgRMrBOWFbnAA48GqqxwOTuWdXp
	 SB672RjYHXFr2HDUQQk89C2Xf9XAt5NR4Zr+7wTQetoezc03BQr8Z8Ge1InZvMzMEw
	 BiX4R6GLjUG6MyCILOqFGPenJHoJLi+8eAGII3WZsuoy+QSj3vuKSV2vb/VqOxzO0U
	 s031g7y7xyNNCevt3YNazHUpS2ROaUCcJCUAXlDNQDhJlaFR4iCwySAxQKucccGOAk
	 znhQHxHcKI/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA990F94CB2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683025368.9799.16689783996687875127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425f90e11d80790005fff187ddcc572609d2f7395b886036473e293c1b426633
Date: Wed, 22 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776830253
