Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26051364E8C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770043434; cv=none; b=Wvvk3J5f/SgT2WdYA5FCXh+4vuH6yLdV2bQJq6RyHrax8aZd0bLTK6d3kkJSoMqfyKTO/2/W+Fhc2XiNdDTLqgYHcMVrPTPTIOspeh3ZBdboWYXH0znSC2JbCYe2IN3m7jRbjnB2UbZakymrfZZx89bOm/JjKVlK1dzygAei3b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770043434; c=relaxed/simple;
	bh=GiOsO84yo5t/Sno61UL+R7fAS9X5v+Rfhe/REefaDcw=;
	h=To:Subject:From:Message-Id:Date; b=e5evGHa4DQcrzHYMBNOVENn9gzRSlkxkssnZ9QriSgIDZlStojwaOP/8Us1/LkaQSNlHpuFAOYgsKAuN/fWkI4HeOxO+/0MlLqKbAdHQrah1X0WSo27yR9sG/nn6JZmLu9jlStEQ/L4otKLQt0x0ZOuRmcTSw8fQlXnF4YiPQCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6HyUFRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6HyUFRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD87BC19422
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770043433;
	bh=GiOsO84yo5t/Sno61UL+R7fAS9X5v+Rfhe/REefaDcw=;
	h=To:Subject:From:Date:From;
	b=F6HyUFRUb9R9ZV2uZDZHANS4VMkRjb3ZNxDxnTcyAL1PjeTLXm4LUWZJiwaowlp22
	 OLvbPjJi4IC7DuWIZBJx3nh4B8c8ckQ0taJbnKV54uyey5IouyOj0vfbkqtXI7Ao32
	 SSoj1f5Vz2QlaWBoRj5Rm34IrxpyH8Y9z9+OLYLLPEdkRnyZuPw2iEhYjqDkR42QN1
	 wvGxhlVvY3uDdwdya+5gpAVarIwNJZ6UEowwiNzabcCyRTNlzgVqe1BlSpqn+jSjOG
	 o8/2NBC9x8gZvTl4DcbBoOQeJnYM8Ey3YKb8vaZwGdhjZtqGsZSTP3rK42sDcXz0Ts
	 i6US+cCYQYqwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E92CE7DEE3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004343362.16589.16086996781787755838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa46f15c2bbe0f95408755ecd87c136d41c09c1a102eed9e0c0e187a9c2c14e3
Date: Mon, 02 Feb 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770043433
