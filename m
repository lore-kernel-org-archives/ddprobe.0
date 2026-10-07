Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522C947F793
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791380434; cv=none; b=aCTL7cvveMQT2Rl9jg4GvVzIunXnrvtmqjCoQL+4lbPECwP83DHKuWVFP3Fxx6rAZ+lpX7XSthgQNsuJ91KTqpNQUFD8icOpJY0T7NmqN550s3QMZQQIrzYhYicIrgoWhQVWFPR/jRxCbhU+ADj3jh/lLNZBrS5ek+b4TZxjNfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791380434; c=relaxed/simple;
	bh=ALjRxuCdRLxrgwrj9zf1mnKEtD+/iVVbdd/VOP1e1zQ=;
	h=To:Subject:From:Message-Id:Date; b=DTx0o2J/Hk/UZGZ0SvBEpLRq5yqpPlbPLud1V1Vld4sWYVRyUG4IIyNQNNX7XG912CrHt5TxZ/IOdsXeJ4WaZyQLf+to8c4E1I0DIyyTpO0S86qX2SFcHVZnlamMiuL1hS+qQ0YJ93jRbbkRD5uxCF6bUcyvaV+DkhzeFHzUgZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKCKHsq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKCKHsq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B41C4AF60
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791380433;
	bh=ALjRxuCdRLxrgwrj9zf1mnKEtD+/iVVbdd/VOP1e1zQ=;
	h=To:Subject:From:Date:From;
	b=lKCKHsq5zJo8gw4F5wf9zvDsk90jrdJutRg6Yadc18SBN5I087ljKinXc8rsqKvGu
	 kLsimobZtPdbop2XhTiiFxWYdhLJ49EjaVYDGv+suj9ovMPfrvz2CSBgSIRRZslysK
	 vW6TGileHgr02ZiucFDR6odVYexWcPCoD6Dvq7cYTJIAPP1VJiKQkNGjWTTfQZUiaf
	 EaMTCSgAiL6292GS6aAn5prBXvd7fB5uY8bTwSCXglJq0CrEUTj5SB7+AK795huPu7
	 vj6Q0sUmVWFroy6z698abPhOs2VC8g26C7n45NEpMgB4e1olWmWUx0j6rKWrKECFnB
	 rYK3HjU+eVzRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDADCA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138043371.14796.14871678721491499264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad465a60a7ce47beb1e95fe2f05cac2d4c4b5193a5b1489b30716ace16155c31
Date: Wed, 07 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791380433
