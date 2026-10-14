Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564B54C2252
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792017634; cv=none; b=PSb0Jh7oYZeCv/wu2nlc2uGEZg+jeeKMQfzuMejD+3LIumDl44Q6z9eXyNKiSLEAxzYfvoMhTROkCZO+oI/Vv+KGkYR1h/SwM+9JR9f8SrzanKjENaQOF7KSJHBHRNvO0THlfb6XIIMBEi+ubD1Ig0Sexqu7/WDyAaHH0e7ZXNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792017634; c=relaxed/simple;
	bh=YcR9swj2AiFX4TGRP+aMyPQGHj/7szsFST1IyDBozlc=;
	h=To:Subject:From:Message-Id:Date; b=nFySGiV/NSczjckKsUA35blHImXlr9B3SMXJSef0lqr2db/S/EiLQxF0/a3UH/2tKPtY0q2k6TWsQ4Z30f4oUDkrxHhqS981724Mn4zY2M/kQHPUCVK7qiT2pmEINQKE/50U9NMf1huY2j7+1Wh5VoeozpqD76a8hcCKVDVc108=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWZVmd1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWZVmd1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8802C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792017633;
	bh=YcR9swj2AiFX4TGRP+aMyPQGHj/7szsFST1IyDBozlc=;
	h=To:Subject:From:Date:From;
	b=AWZVmd1eDOtx8IvpzNebu+uy1vun4vko9GK34vv5pQWQ7OsGAg1SiArlfWwQLefrR
	 57vN9nbur36snMdcN8gAbsayRn/7Zma7RrWxpywCgIP1onL5ByyEnWyl2f2NTZHtOH
	 3r8hoT+Dh7EbBWL4TEUzKOYRwinCHOhFHVwxIIYVofklKsI14hcIGnswQoc0HG+8pt
	 NMjgsrUaJJAEkxgPSnwtdkSNhSqSYuyCsk4VkdhC6NxM80G+wk77WX0mqAXKttAEfl
	 VSXvg94hJDwf/jNrxSy2T+cO3Syhm3HqUP2dPZVdt5YQC7GeRxgpKe7cfFwJQQGJDH
	 badU2Gq305EHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B65CC6B2A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201763371.8884.559231338237714595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd427110bb17cc128aa366f6f6b02da17425611e7f70edf6ab8903b53935bee
Date: Wed, 14 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792017633
