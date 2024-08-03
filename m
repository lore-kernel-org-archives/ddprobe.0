Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271E96FB8
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722649554; cv=none; b=In8RXtHnMgziCgkPQAunc3r76F2XgsUOhD8sMMOUQEC8OSSNQcAq5NB/t08ApJ/3HxvwPjVWDl3WdoraIiUmbkEk251wwaPfrJlWNXNdZACSIX6l0xo+mh38HSWCf933S0kvZV/mBWCaikHvD3owEBaR+SJCNdfWSLeW1bRU1O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722649554; c=relaxed/simple;
	bh=eNd+i1X3KxQSev2j1duCOBzLvg7LVdIyrn1/kBxIQZI=;
	h=To:Subject:From:Message-Id:Date; b=Y75jL55+s0IEMW0SnyeakRqX16Rvi5S65iPhZ+XskEdmGp8V8cQ17CwqfqGELDjt4djB+ivkIm7mgEsSJl9uWPEB/A/a5ZnEfZRd8w2DkYBgvwCHoDJ6l06sKlVAbgrND9KCY1xQ60CBpvhLb5qhysbyseEwUx9m//eYxNR1axA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iF5TpEVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iF5TpEVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CCCC32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722649553;
	bh=eNd+i1X3KxQSev2j1duCOBzLvg7LVdIyrn1/kBxIQZI=;
	h=To:Subject:From:Date:From;
	b=iF5TpEVswhQVhXI5DDoxmtJIqqsv+bIKaAg2guEq/oQPoM+QKQmknRrEXjd2KpSg4
	 3adcbgRhUgPj2uhnI1uvtpckaFmt3Qtxva4EgzvF34a8qLamRwDq7nVP7rXsgrAwGl
	 OemeOQkP0iB3fGPwso2drMDmoYwGoUPMaLEoUTTAi9QIfpbr0nPyAQ/6ZgNp+T/6el
	 Qvi9na1ad1SqiV/au964VlG7nuJ4jpZHOXVMU7WokD+TGUpdykeWeTYmItQ05zUxrV
	 uLdmdUh1Nx7VpJ464z0Ow5n4zFD5AiLu6fwRNs959jNXxDxdJGdbbPSfG65E2lmxje
	 6nlpyXyWMhVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CB9C3DA7F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172264955359.13129.18253826330778155016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183626750d30c257ade1b2430f23458081e433864d394d213dae9a6420c609e9
Date: Sat, 03 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722649553
