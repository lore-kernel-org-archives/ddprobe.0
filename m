Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFF4219FC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769969634; cv=none; b=aUQ+6ppH4omvYBbvCQcR5D5fho3YYBO5HDY0ygQ93nG0usdBw2VcDuWvFxAf6yMQH0WgTGezmnjGbFHStNVxpg7slumodvaGIO1cs7UgC1Y09b5JUB0GCvh61yFHxUU2DvlWbuaxINlwkiJ3SZi00wnUE9WwOz6fjtMHr5LkjPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769969634; c=relaxed/simple;
	bh=R7Jk5YvijTut6pHhxCUASn3sqIpARsoJCXOMJK+2Gx4=;
	h=To:Subject:From:Message-Id:Date; b=dWTZ6EjAdOQRetYAuDuMG1i8A2/cDJUnxiLzk5gxQLfATuTNzu3XiQjUp0K4b6kuo1m10fzOXWg1pjXC5lyKoRSWnz183eZa8rz8v+UwnYr0IuoO8wCcqFovFjww74pLL73FVxUSIAT/KSJlo9dbdMs2KzcmxgRuILySuxBFlmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZmdyx1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZmdyx1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE612C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769969633;
	bh=R7Jk5YvijTut6pHhxCUASn3sqIpARsoJCXOMJK+2Gx4=;
	h=To:Subject:From:Date:From;
	b=BZmdyx1IocElDCgo4eNEP1GPfDD1x2iIKMLFkLurW3FmScyCG4lOVr+ba/GDyYG3h
	 aFGQQ83zsvzucbUtbrWOWoxBDuNHUsLAgqmdWlNaoKdQjnV0zrIlXZHMbB2AVPc1wU
	 g9IOENkeSJKs4UznoUZT+rHOikc9i/TL8luZ5J/Wfsll2pzvz0Iy2Y1Eo2TvwoShzp
	 evoUIUar+aHawfGZ89eseJzRsvDPNnNeMhpaJu/UsG2AsQuZ422M5+1XQzF9TJ8dB0
	 NQi19mcisoAgvdjjYqvp+zgR5nkFhfxeuzYp8CRmJfFu8rcwWXZr1Ns7zNJmOlB3hD
	 eX0DJnEw2Zelw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97225E65296
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996963359.14944.7506154868174568453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad5c7853904a89a93ab6de937e896043de12be41dd4924dcd5c5757aada3584
Date: Sun, 01 Feb 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769969633
