Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2746D2222B2
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760210994; cv=none; b=pk+jDcHqnYk2zCE75Enum4OMhA8EMbfZqc79mv3WASXfJPbHWNJbIQioU7EI0ByQbeQvveqvarpnJuPi9O6hbeTflMysPKRdDMIdLbmuhWAETRcGDo+M8YPC1/kE3l2AiAUvZhxrVh6KTDa3VONhnM7OJfH1SKJt/e9iJJ6yvoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760210994; c=relaxed/simple;
	bh=aTtyIX9pbRqZgr9cPAX0FF5vqWsNNNfZ5cgh0YwJ12w=;
	h=To:Subject:From:Message-Id:Date; b=QELLYetLkyy0mpTfg/e0Ti/qagLuzZZbtf68+zkf07CUK89/dRFckJjUqVFQVu+ttuNh9GvqhkmmbahKAuBQAhnZ+ulCxPaH/ChyzTu6axuqSsUaFfkVGHoJDo9H2cCaM1RoYwNSox//NdHSVjffZYpLZTtczzwoejN/f/RYAvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doEgIZdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doEgIZdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8419C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760210993;
	bh=aTtyIX9pbRqZgr9cPAX0FF5vqWsNNNfZ5cgh0YwJ12w=;
	h=To:Subject:From:Date:From;
	b=doEgIZdyxKELHNdONreoLRlpYf1E9AlNAM+vdSYYXvc6RjjU3l/lGbfatMIjZQy6c
	 6nLzglgJd3jPa44y8UMx4PKPGFi7SCOO2DKRSV2CcQsd/OUIKAU3CwI3F2f7HMihoE
	 N0q7DoE06vpmc/n5H+DbMfalIjduLMg7nRUFrM+3CdZsDXCESEeAPbePVV8klI/qGL
	 mDL5p+83GH1qrhHe3nV/se95wWV05WQh96Z/G+X8w0veSsZHjLBpJ2Rs1nqzkDdg97
	 KXHz0tYljC9m3pyXyY3XTeiJZXrPiCk2iGOUjz+VUaM4FeMa7iL28NLm0EWtDiDBaa
	 PnBfYw1Pt+a+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93132CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021099358.17394.11780583864919351924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1197fb81c97f1cc63628017383a51a298844f3a85e4a93bf4622a5ff7b0113bd
Date: Sat, 11 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760210993
