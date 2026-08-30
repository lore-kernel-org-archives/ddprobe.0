Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506A82F361E
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788048034; cv=none; b=IyIQ02JT95ByqttX2zXoBAhWR98fjt9iRUaewxjtKfefFhpUAgIr3P0MUXnAdj/jjIWk0n+jfhGxqW7m6xAw6q0iNDHShbx8fCULptbXGeDRLTdyuTaNMr6clmGEk60+ZPH1N7AM/z/UZTmsIoTNWBlZhFP2t0nZ9eLSDLFSLic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788048034; c=relaxed/simple;
	bh=LCMe54MBB4y1Y/HpCGlXaRSmL/oGFG/Nii9Z2MG+c8E=;
	h=To:Subject:From:Message-Id:Date; b=IBcH808I5AGmaBUqubrfZN0u3gn8WA4B5Nrz+HanCnAigRdIQXVr1+iLqKcU9AGzCwUZeLZKnu4m8c7HOuUkgoyc2Umo3pSfBnA/zob57JuCu6FJrubohQiltcmONLEKpyWzqxBUQpYKGqpjZJYFmAiYMO96idXsqI2VuzxDVUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VE+EvE0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VE+EvE0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7324C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788048033;
	bh=LCMe54MBB4y1Y/HpCGlXaRSmL/oGFG/Nii9Z2MG+c8E=;
	h=To:Subject:From:Date:From;
	b=VE+EvE0bwy/Sprsph78XYwDvHHPH5taKrYv8oY9hryxm8GjkSSx+Lm27TPf4OAcx1
	 v0gj+izH+qjU3OdzgWyeo9SkmPmCCbt3sCooW+hDVNglMJqpG7RfP7NGA1CzJR4qJw
	 eU/MWOH6LADXa3He9XKFbwGcr8nCBf+HWCrDUlRvrg8WeqMBWP7Qg0IkXAF1xrjlz1
	 dt1lQceu3bbKlyRn4yFsDVHDP1dwTj26aKQ0fmLUcIPWfWk8In1x/8NQpg2Cest38D
	 dqXz7BjlIeeKGt0q9a5+2k+TZ4JCuAa6z4ao0wX7h6Ftm3hWHUUH7DV5yMBXTDheVA
	 F4aI4yyP0d5Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE822C61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804803369.4390.11126941630532474126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53768b87bf69d12edd6e3883c75184776906eb3cd57b406ef196ef46625523fa
Date: Sun, 30 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788048033
