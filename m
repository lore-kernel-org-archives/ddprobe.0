Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64772236453
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789609234; cv=none; b=B8NL/6J5ku4k5duAc9Pe79RNpLp3kATogkL7suY0taDATAJ15unf6hjJe0WJu6RUwmeLKFygHZZYbE0tERKLVQ1+iErMFaypFxD2E9m4OXXVkXhwqW8HQTePBl/RY54phBEsJIA8eYtmxr4vrj+ORUxjNn0rT0VieZePk+uX1T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789609234; c=relaxed/simple;
	bh=WT5gD+i2U5aDcIDCWJR+rBcJCT4LTzYZVeKMZ8Avzj4=;
	h=To:Subject:From:Message-Id:Date; b=YEDSyuL04RBlbz65vn0iodoPH1M6G4BG0riGc5Vx2Od/cOEpmZMEDLoPp7td2B8SuMQq/0Pne5UP4wtiDEy5tp5vmwiHQ+aydwuCtLlrCqNUzOgjW2d4FDJG+2IhlvdOTW/fX53EmHEE854CxsAikvPYIY9T5ly1jDhGvxBLlqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnCx05gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnCx05gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD470C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789609233;
	bh=WT5gD+i2U5aDcIDCWJR+rBcJCT4LTzYZVeKMZ8Avzj4=;
	h=To:Subject:From:Date:From;
	b=tnCx05gxp9Qb5RBG9mDT4/dSIR1hYlXlwFu8C3uuwMsvar4XqVtSb8/rapVd7K+qe
	 sPoKGd32fv/dSEUdPtI/uMPr1ZzlTD0nCoFLdytUeyst+mJtW+xL7AEZPOrEEIAKXN
	 OuutXptuX67L1vZlwU+bOb8QGevkgFJ4S168A62gSZ5wmI3w+s0Gb8+aNcn65SOzi4
	 Heb4t4Z3ibThqZZ9fnLRS0bngoOFL37f95cQNDHJl/MS2e9f08kReb2tAVuyrYAy+G
	 iQY+jBgGxPTp2KmAERo+kpjHMF0uXLNssnTCr5uIiMaSOhkbpQGdjbeQihCoqVnOhT
	 Qwwv4EbzWqKHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA09DC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960923368.13182.17442963137141187061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007d9df86757faa5e86d675e3c3f746eceae0d8b1574cfcaef507c3f272b5b8c
Date: Thu, 17 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789609233
