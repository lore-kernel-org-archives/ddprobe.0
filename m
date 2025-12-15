Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2432015E97
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765779774; cv=none; b=uI0Z9eRf42esNRxy/e/76sC30GFls/l++RoQ1aerxnNTB1L3WRzBi7Q82c4FjkYR8L/1pfspKVJygARZ3MMBLlWEDZDsliiuv9rlR54uJ+QtvNL+hlQN8KXd30zNcl67rozKXbW5mRVMjW899znPDKASYkef6B1RCuh8fzJ8ii8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765779774; c=relaxed/simple;
	bh=d8pfd5hmqFUDz/fUNlEnljjGRXIv11L8aNMzToGP45U=;
	h=To:Subject:From:Message-Id:Date; b=DolOptoGlfe5WtEYU7En9BKblLxtQDoCVGU5ZWKfjsN0Zdt8KMMuXB3WZec3NiaNVN/ib7+WBBeLSnSYeWPayszITxhibmRi5IgolH6Ndwiuf6gYtk0179ERH0HlpQldCFz1WSLhGQ0zk+E/f1yLHt/yac4qLGJCCdHcDH1ajeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PH7GSBaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PH7GSBaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E50C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765779773;
	bh=d8pfd5hmqFUDz/fUNlEnljjGRXIv11L8aNMzToGP45U=;
	h=To:Subject:From:Date:From;
	b=PH7GSBaEwwFnOd35h97Vii2dxlffaNm9AMBR/4bmNdTPbn0k1GMHDj32peM+rzX63
	 KjilbIth4TVhdCjbE/CO3/9fMTMc3PanHQeEoCCzjlFyD7hJ/PtC2m3aWOTu0AJ5Pb
	 IPPNGBBon6NB+0X98awt/2bEZuIAiU1CBgFEFG2adLsgOa9B3fY2lS8zwl1zX/fzlW
	 3/SQptJdKvOdyqFQNmbRQQSXfUyZ9DggCx1wYw5k+LaLxljxCDZhOM3xlkvPW4xPzp
	 JfuTnToYfG2cdXhj3mlS7MeXJUaY/XObGLLo1PsuH+v6sMR2bvt0Dllvy+LceBmsYY
	 KMMKHugn6cTXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C93D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577977358.12573.12811313728614935950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de7e60323f6b97dfa8f1b3af33fefddf3c2e1230d01a2d328326429c553e6c0
Date: Mon, 15 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765779773
