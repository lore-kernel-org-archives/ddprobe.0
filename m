Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580C03FE7
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748197198; cv=none; b=fEonx4AL7nu/GYk1v972mEIh3nX5PCZuBot2JZuhLwe0pAaFuhZuqQilxuDB/bmQd5i+kfQdiVfZuGPCpUqna06U/paqIw+XmNUU5ESE+i6LJmgD4mB0CQpDvKIa23S5ZuTb8YbA4artdhDDwI8a9nCM6M5cD5Y5eqRFREfbsSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748197198; c=relaxed/simple;
	bh=mTnZ2XZ0lxfIeuCqxn0GIa9XcqZiJg3NtpK7Jo+MlZo=;
	h=To:Subject:From:Message-Id:Date; b=dt5133BCXXi073ifVyQI5UUB2ARqHYHTDMkQW7DN3kYtnYuSD2EvuVEMZ8O+x8JSDd/VyOtOjDXPO7P8BtGLHzCdkY6XxdwrpZ3x2g5zDbaeIBcMwgcfUusPL/xl5i4pr80SN/9SBrYK2FYTpel2/5v9PUa7oBuN6strDU/i0I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KegBsVwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KegBsVwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A99C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748197193;
	bh=mTnZ2XZ0lxfIeuCqxn0GIa9XcqZiJg3NtpK7Jo+MlZo=;
	h=To:Subject:From:Date:From;
	b=KegBsVwdLtA8PrhYbQFL4kHCw3GezYUDCF7ewiLrCh9jSoJvNUUr6iHtUGOvDQpBf
	 K3MomXt1jMg+iTQRT8XEcesUX2XaFHglR0BGmIepMfVgTWVy2s+sKXHWVZzZ3N3Yxh
	 v/rIJlOohjV6cGuCQ4KGkib9XmR0XoY0Er9Bn1FM8aJEWynpMD4oKgW3yloRr6nW9o
	 rwx634b23UjOoNH6ztC3+h3tbn5aRNe/IDgok67vsn023FDjgfRka/FosS6ntw1RMi
	 mxVwLtT144Q+doEsDlqTHrOc/Y9ravcoD/DOAKNBKTFaloSiamrTca10UMal/Llyvb
	 dRC3K7m1QMIxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94112C54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819719357.27523.2373939743043267282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eff26f54dd50139e7a592368f26105402796cae6653025564fe855175566a02
Date: Sun, 25 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748197193
