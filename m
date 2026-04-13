Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6EC3CCFD4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776086855; cv=none; b=MncEyA/FDrCo05hPdIHCjZyAGR/nIfzIOQ2tAoU6K7aoI/ntngcatxx1Ncbn+uruBGqqtSP005hDuoZlloiSnKupFLdM8sX9R/b9EJPgNP45qJ7seQszu7HeG+y/91tP1lrJef0e+INSwxtti82V9zohvp93Nb5IGChVwMRUUew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776086855; c=relaxed/simple;
	bh=RDpi+wqXw9fFPYnhZzZhTrEFNKAsT/wGtq1Txps85o8=;
	h=To:Subject:From:Message-Id:Date; b=XEdJg1Vo0t9WnmReMLuwo2tCQhGXlRW8oh/eSAtxvTV1fxRC5Uv0SwLU35541zoekvJDcDl5qQS87dbvHFSitmrxCdDKwzuj/gT3PfGs/3sc5pwAM34sleL0ePp5b3QzS6/m7Xw2Clmhe6UcFFmuDN1mWOuqMlFtIaaRZrGXEl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pqedj4VK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pqedj4VK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA35C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776086853;
	bh=RDpi+wqXw9fFPYnhZzZhTrEFNKAsT/wGtq1Txps85o8=;
	h=To:Subject:From:Date:From;
	b=Pqedj4VKPTk5lZJTAdB2/fp1t1Znmb3oq7IKteOMqp/OlFdpOX6qf+xzBizhzeF8S
	 rQ50xoISejd2kAwiXYZujOMLRgHAO9vPxdJFUeYYltBiCCkFx1e2uvTbTZIjbLLxWk
	 +7VtyvVMvP13tsRy1HgyH8Utz+eysU+a5yYsT3GCjGiMYJVyzv5lSs3YLq1SIOpIUr
	 WcsmrycmXPp2A4kIuET6u+idOtyNtT3fcCsrlgGTSGf7NIa/EYNWIRswhXjAoqXFDC
	 wS2xtal5i3tq3luA8Lfuu7+69F5sqokShaNwC//fz1a7vmdAPv5W+oO55g9bJGa56E
	 EULAvciu09cTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA411F34C52
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608685368.21914.13552787794929505663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0494dd665fae2127debbed036966e145d17e9c7566e9c59abc751c2b1df53f11
Date: Mon, 13 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776086853
