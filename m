Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2341130E0DF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756378794; cv=none; b=MLDOzdbWA11l3IEVvWjSNjDDrM/flP03zBl8DasuAfbQi/9p5V5pHIZ9y2RBgf/FhgeP5Cdceo/r/fSp9g47Nhj7l9fxhj3LgkhOE/LEtYI+GKHcwG3RmNVKpXrpRJynplRXYHj5YXtDHOQ1dW9S/UAGYfQd2IUQip6y+GWegCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756378794; c=relaxed/simple;
	bh=ZmSXGUoahxNRf/JxJ/pJaYr/YqOqygqBvm4rxIeUzZU=;
	h=To:Subject:From:Message-Id:Date; b=K6XmudYlY980zPnmDyDpH/xkoav0nnZFIHadJsYuVia6ygtmKvbTrfMHXD7JFepAdmOyIGZazmHu831cf2cMLQgsh/EUMx+1WtFlKNr3QMhsGVcO7YEVC7v6QnGCZxFxNFX1YIyjhxsBkfOZU/4mzz1iwdFOQVXmjle1iwNhDK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOItEbBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOItEbBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F47FC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756378793;
	bh=ZmSXGUoahxNRf/JxJ/pJaYr/YqOqygqBvm4rxIeUzZU=;
	h=To:Subject:From:Date:From;
	b=WOItEbBtUtbozfrOVj2R7yrOXmWq4FJNDojPl3L4QWF9xjBNY726z4QzkuKZRRFJO
	 1/Ym5DBXQctX74dHbxJ7/MniSx4VTkYnqrLSRfqNeHP87kEP0MBHKJek+CmI4smw1O
	 k6cKXQ4N3XXLTqNyI7lNhmNCWGYVDXgUo97gno4NgPHV+krNelM2iOJducSbfCkOP7
	 +DrMckqReATPWGoiXOVt2dFfgdfs5qr3U7+q2ToqGvIUpkw9WIR3DLu3N4azY9tmEp
	 xWGzIUPjrOXm+aPx7g1xz2joj/pkZzFL1VGnJyInL/6F3+L3vOuET7TOmb9KRvct7S
	 RzEyLkIgw4dHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F345CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637879357.12345.10998539488244351912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f35dfc7c5ebc498c31029f94f6f2f663587aa1cdfd0a23054e2bf2dcad3fd8
Date: Thu, 28 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756378793
