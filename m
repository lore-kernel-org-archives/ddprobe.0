Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1566225A2C6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776892654; cv=none; b=cvyrivRtZoOvxrz9CW2MxsfQ1eGeuQWr87/cy37vWiWqVExJfAPPleyLGj2kGKRXFUIT4KQPRszbVI08+UxEMddpnj4yHgomabNRX11tuWWOZvHDabIW8gpXH5YE0ONqTIgsKCRd0TZ0jPYNV+XqR4QyY1LLbj58Y9YhxCL25qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776892654; c=relaxed/simple;
	bh=Zb1tr01enn6C0G73raeOEW7i5lcVVEusVZ8q5zVzM00=;
	h=To:Subject:From:Message-Id:Date; b=JC242u7qdzHyMWWyni3p6eyj9uYXqRYIscTXDf/EqGhC+OzElLCKAuoHwVVaguefFuOf+FiZOONbsmQpDSPV5FEMLDg1a+/xinJ53nYSzVP49WLa1Ss1qLsW3ixUSYFdHE/DGf/c4libbaTdJwihoQoM3xAI5xyaYtmabZVf2k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTEA9cv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTEA9cv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1E0C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776892653;
	bh=Zb1tr01enn6C0G73raeOEW7i5lcVVEusVZ8q5zVzM00=;
	h=To:Subject:From:Date:From;
	b=VTEA9cv+oTEGkDPEdB4kb7ph2LMUtrweynU1KLBQZ/58jWamGljeDnqHMUKi2dKN6
	 +dDojDhUkG5dhj1an0w7bLJT48EtiTXzaGuXH3E+r1T8nwjcvNABKKxJyw97BiVpY5
	 RUMdw/yBaW2hlVKlJVuv7jB++v65wH7q7LHhIe1XtjmpKmZlBqYwHPVXMhW1dmveYs
	 HH1KJaNqyTdteeiJYTg2ZNL8Mt5Rir35SwZC+/yJyiSsJ2/S9V7BM/HZQ6sg1DDpqm
	 MvI6NCaa9RtCkiXjxCD2XDI5DKJhEq6QgJHonVf65aSA57UAXwJsUZLay1F/xV3fD6
	 551pDoQ0aqCAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F00FA1FFD
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689265368.32140.7205983286364322782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5428e4d90516f7853a173da6da952baf0dac12b221a60be8522e27ad0f1b2382
Date: Wed, 22 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776892653
