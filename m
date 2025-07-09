Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D9F7DA93
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752034795; cv=none; b=lwV1wbKnUtsZEEhJUKA+jliLkxHxCG2FeoDAmr4yJoWCYi4O0H+os7pP7Hkanc+JREAx+yQS3LGIdCJ976LeVjQPBvuyrGqtv/5PVLOBfwKNLLF4+gr/kikxIQGHk/jmuAoyFADFxA90jkPKJ1FSXRa13nDgkUAi1X1u+nOgzhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752034795; c=relaxed/simple;
	bh=0PE8Xyqb1bQfB7UULNjEQ4h7lOHkW1EQN8FUYaOjCMU=;
	h=To:Subject:From:Message-Id:Date; b=IKiqB8UMDSASgcSKUTWgKkt91lpl9FjH1M3cofREmQXWRuENLJMzvTn/sFEeRwytZ4qF4LzehA4QIN/ds2vgCgSgxMTw2iYYqzhqp8E5cykrujiMK3aBpCjdfq8UhCCmpQQSq8jlBe4orROGs0pldi7Qh7DzaEAwUs/h+b0FPMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTXeb1lY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTXeb1lY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A957FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752034793;
	bh=0PE8Xyqb1bQfB7UULNjEQ4h7lOHkW1EQN8FUYaOjCMU=;
	h=To:Subject:From:Date:From;
	b=FTXeb1lYWFJeeQ/M2n/zKHXz+vXcN/N3GHNUD6yM2TUai1/7cqnujGeGirJ3osY5C
	 yiNR60iq0mdyNqlIWzDQPNP3TaezKGRdyTM4bStBoPOnADyrGipnwlTDZg+PTINTN8
	 04Sj/Awr1/Ic2VaA4cJVYxDGojOL1QUF0tjSRgmEmyCLPgyrAsizOiaCXM1WCrUnZI
	 tLiZy0FRfAPsgecV5RJRHepJes3L9qUEYC4XtWldZpM8sFD8EYq4oq6xDhm6LVDtl7
	 VmSjRkZinB8dCsvg0zJdr51DI5uM1pesmqCYvz8lGt38OStnVGpW7W3rq0aAFkWkV3
	 LBv71GjRdWW9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93516C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203479359.20141.17644981897897330955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397a0c05a0f1bef486dba3d5d40faa58cbee9b9058488a7e4abe0dbf273b64ab
Date: Wed, 09 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752034793
