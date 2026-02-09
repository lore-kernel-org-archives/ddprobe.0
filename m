Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4FA246BBA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770615234; cv=none; b=F/hKccO+57ZScNuFS4WevbhNlTbPmCG4g7s1jnTN2zveU+9Cu6msvxZKagooL3Q2T/c4Fuq+xOO8aS6wgsabcouddB6U16MGCnc6W4A4Ml2aQFuFjPAoA1TwtVdLLNUdNvJsZ5Vo8Ripv3WDDIQCVHmi39FJXKuxAsNplf7Ec+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770615234; c=relaxed/simple;
	bh=ZeX8JD8W7ybVvcHD4BqXGkW9vlHvMRryDGM3hdnGT+M=;
	h=To:Subject:From:Message-Id:Date; b=rwKLgmbeMXvDpmA6P1+GlL1rrut9/wInY6KayAkqn8gL810wYW5aD+U/yr+t4Qyb/iEN95r0nDyakm+pC4I1TV/dr0Usq5JUmK+6jbF8TBbTgfyE2zdxlDQPZBkzI6qexJKbHkgE/6M5LUN/1kVcGMh6eHrec2mOGoXA7CzxnR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXmDk/3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXmDk/3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9A0C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770615233;
	bh=ZeX8JD8W7ybVvcHD4BqXGkW9vlHvMRryDGM3hdnGT+M=;
	h=To:Subject:From:Date:From;
	b=YXmDk/3cYE1PUxEJtZ8w2H8nlONlSw8mTuo8dgQnE7Y9ahuuAqbBo8Nn1wH7jCzzS
	 sHeYMpVQ7XocB8GD4KF62n08Q0ikmeLMKyPRvAYSKN/0dRIgqw+i5hHBB4HizahXOf
	 yHtBubsH5QR6XLReHrmlOF5K/+jHjYG5ynN1hNpbwVXj5slnwJl9PzbflFg/8xLvEl
	 CdAXc1FYFtzIGd5W3HFn13pGXip2NHMBJVdNBDvY2xQ7T0wqnslpu9BVacPTo4+YBR
	 +l0370HNqs3q5emc8oBD0XnCNKj3nI31xA0SQG4RRMDSb8zF/fCMQzX+MIJtq8YnOt
	 IoEQTUnUJEwNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86B2EF070A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061523368.12805.8903076859324880570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07e0ed260bad34eda764d92678f780ccb16a53d4535aeb78520974ad92d87f8
Date: Mon, 09 Feb 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770615233
