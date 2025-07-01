Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E8C1CAB3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751340594; cv=none; b=cBDbCPZOsiyrVkTAHDWM53hocnKa6zQIDXBY3uKQR6Xi82AsafgMJLMhd64cbbwU4Z+xzNn/eITlVNoxMly4eXX377UqVwcfdFpKMyOUz8NX7Sfbi493MPfzTQogLnFk8vCizNCDDElr2lAcw3uk7yE63ppVRMVWyBn8QoWJD4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751340594; c=relaxed/simple;
	bh=qSo7qjeOSaO0oD0NEvjlP902l7/ymib5sbjJzJ5cLU4=;
	h=To:Subject:From:Message-Id:Date; b=TpyOuwEwAaRJLmA3SZrsxr7yGhY46LDBr94Q3ntw1GwJ7N+dD0Ggw0dxkPLK0G0YxcTRu4KfSUUFkp/TIaCqdWvCEp3gAoekmrkEJHMEyOG/hCIh6R2r5sokfjBo8jS1kgb0+QznBE4weo8ZqW0GImU+K8yDEy4EoE7RDk47kV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szx44cI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szx44cI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3825C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751340593;
	bh=qSo7qjeOSaO0oD0NEvjlP902l7/ymib5sbjJzJ5cLU4=;
	h=To:Subject:From:Date:From;
	b=szx44cI2MTgDkSAeyPo0UB/Pg2XAJnQLs56mUmjlq+m/uM0e5N5fJEpUrKaMrSm+3
	 o7wrg7lSPuWofPZOWGywfXz2hd1PhzDm4UIdmvvQaxmg8mW3gvtDbtjgOEqFMF4h4h
	 sBD8RBZYYOsdBisFbr4g2u9VOlrMJiPOzU0rKeAHQLlkyZZsCCJ74wRNbOmbOLC0JC
	 hCeVncM8Ox23Sz+zZcpF4v5NSRTkaCPUsMOJg+x4s7qI3Kmg2D8XpWLIsPgamS9q3n
	 Xt40wT/WFprAOYRCDXHqovUZ1pXKZURILp9twKnEtJO5agJxYRpjRZ7JQnmmdG5mK6
	 y0ElnKaXv1FWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91456C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134059357.8771.1087284537108801296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fccb9ca4256a85ebfd579a338fa542c4425d19303f08a3907f59462de85c2d
Date: Tue, 01 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751340593
