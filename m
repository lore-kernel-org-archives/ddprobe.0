Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380541D270A
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729065354; cv=none; b=MWaH6Cr3T6chiUNXgUbTNYJhZlLvJ4/SXknvQ7kAhw1Win+VRWb5vt3G0hQiYMiq066hjYrLz1isbcsqRqM+LeP1pTSh/LBDKH0a9LLOLz3kOtVCbwIZr8Wi6to0w6xx1vUCuRm03JEUVYgD5mZ4h/1w/cCQAmwboacBdOFKWjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729065354; c=relaxed/simple;
	bh=rUM6wYKB6woSpVA/dl8n7oSJHIiOd6DOXHCqErBT1IU=;
	h=To:Subject:From:Message-Id:Date; b=YSCCJVYFOw85Sq5dIZAt4nHcK3R5cqxZ46MfaO7wCYqnciUJ22ZRcSL9X7ilAbzMXgpCUoGZLA3+wQ18TYm60DD9rYbDCGkJuFtRanripzg0XV1Eo6KIYZCIdhvFww1Dv1ZILf3M9VAgkXnL5c+2ckK0kpHilc22mRHIdwbBDy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbOXYbT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbOXYbT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7440C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729065353;
	bh=rUM6wYKB6woSpVA/dl8n7oSJHIiOd6DOXHCqErBT1IU=;
	h=To:Subject:From:Date:From;
	b=JbOXYbT9biK67WYvnmzuf1Txv1fLAK1b4og0fwsQO2TKInkow8JDEJemElEcSDz27
	 jotTUN6OrSo8lF78aKguttR0StmSPfu40ppnnZ99xPhwaoaoqvKzXCeLEBnnu682oT
	 N7NUKd55SykQFCqxKchJtqMOm0p6jspp6uDQlCtZ1x74Z3MaMRfuvnuySwBPUgLDFd
	 2Ciu8P6ZfUY9v8GbEM6tHpGzRrZX5xBRDcCGivuu9WcIyhEvrfLPvQT0aQJ7G96qkG
	 X4NTJu7dOWE2KY0Lew36CY0muF09UlIsLJCNjy1EibM5XWLP3BGtDSWdEkF+xJTQhw
	 9DvGnoq0mIttA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C90D20684
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172906535361.15425.8416197566302765513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ebfb06256dab100e4025576b0f0e857fe596a9a8d3d0d48318f5378bd3946ae
Date: Wed, 16 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729065353
