Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130AD233140
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758902995; cv=none; b=YI5/vR4eSwoHRnECKVw49lLSaXbsDQV1BXEvaTMLVSgjwo5O+0xYznLZwKcExlC9AgwA0R801oXrwjT+33vnsDC3ysxq45/tOeWbw6DAJ2SRDucfXatcfze9Vz65tYrBtVGG5bJyVV0WI81pRLdUE6lwQ7ZaorP7WGcEZ4BAlOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758902995; c=relaxed/simple;
	bh=kg5v24cZSSVO4e658UDibvo0oUDONVSgQ0is8BHPmh4=;
	h=To:Subject:From:Message-Id:Date; b=aXe+l6OdOg/753ZSbatSdmGZoSkmUs1SrrHDo2dHelpo6GAShwWZ+8h58r5WXM/WfjfcIdiM8IksWaXSeOAvTpMYHZzAJtsiqwameDtKZPwNRKOx6dCtAK53QQnmooWKxAAOkjhExzRkkNmOsmUOloVEP4XPU8hYuYgiSiqXHSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cywgVWsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cywgVWsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E097C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758902993;
	bh=kg5v24cZSSVO4e658UDibvo0oUDONVSgQ0is8BHPmh4=;
	h=To:Subject:From:Date:From;
	b=cywgVWsDfTJE1TLNz+wapTK8F1RuICIvOvZVH3cSDzblzy8Pv/rBmrjyxDZznp/IC
	 3NtY1zyS7HGvEi36EFKOUeNYx+smYEJEWCNxMnWIhL78f7Vcv7Qnkk4JiPcBZkEthO
	 46VmqXEwuAZyKzvhNLozaJz9EZwajJuzJZzvC+wSCnNRzcPCP+/7sXKmV4GGlc/8Pw
	 EXZzDAopnLo8KR7zce7WHEek77Bd1CkM5gRHCPfFZk1qa7pkQ/Re1EjHnsDKaVPlrI
	 BJ5vLpdY6doKMzoaKebyCTYQrMCxxiWPuJwTxlUhpZExcE9MV5yrboSks+9w97fTpX
	 qjxt2X4P1Ld9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC60CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890299358.19002.9281130814196962546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd62260c5fe7e3b984bf194752a7f4a842095952525b4708714c0647d2007e02
Date: Fri, 26 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758902993
