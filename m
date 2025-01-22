Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2822153C4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737575154; cv=none; b=cLzwpZM/Y9q16jxi0rdQtNgg9RXlHhFyX1EpSOjZ097vUN0suLalGLbxcYEE04yIXtewudmU2pCFjzDo3xR5lGFyX/2Pdvihc2z52cdatb+m2UuRFXuP0/OrhcFYt3ujHAO98n9BC5ZzF9iwRniixvRpuQZIa0dfIT/NtULtuMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737575154; c=relaxed/simple;
	bh=2Q8oqnS8rS3T3MEsfqg0seS31OBbTXUn/NUJQqOMxyI=;
	h=To:Subject:From:Message-Id:Date; b=XtbnlPY8vmXt6lrNjmRR2WWgE3UUiMhMix+IHRAzkunGqDzuE0qlGjx3Ms8N6o/lDJTH5pgSU7h9xLzSuzNozJHdfHjr+RFGZaRZ8ATb/nZUuFs8aPtxsVAIutYjMnGNt6FBaqgKQmoQemi8nuK5SAylodyTVLtTRFzQLosPqBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz/ISBTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz/ISBTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9781C4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737575153;
	bh=2Q8oqnS8rS3T3MEsfqg0seS31OBbTXUn/NUJQqOMxyI=;
	h=To:Subject:From:Date:From;
	b=Iz/ISBTRPFIaySmgvhtCAq4W2n0YgYbOoY6z1WonWhjuiYZbpXYig5JijKyFA9MwO
	 ElvgFQj3BgPnNYCZvZnYwn9lgIOip72VJhRXtpDwuJeGY0lHafkjsgTZNiUt8qAJmz
	 BSdFVnL2Y+vCvrNiqO+3bkTMhT6d4H+4MS156Yx31e88euyHEnkNL/agYIcjtHri2G
	 HpMQWJNH152N02rH6iFl6fd8SlBuEebflzKuAQ3RiE6z2J9BWII/c43C6O1qp8NkaN
	 xtQ1wWQQnO76kaMNnxG5+RX3Hfd9lwlDOfIi/qToDjRrupKjFHdhbS5CVfrVMvJbb1
	 DZGqAdZihZ0ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97210C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757515361.11396.7540958406924700725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f862a9d71269e5117aa243f2d91f6f09e46a3aa38fc5020741e8260fc05865
Date: Wed, 22 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737575153
