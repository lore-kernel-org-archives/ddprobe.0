Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A54F364058
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790420434; cv=none; b=Ps5tBssoOWCs7rZCO/oE0lWTaxym4ygzETdP0jy3KOE6F3TbpyCR9EEnS6MWmVfo3UdehA/P3WwRpULkqNQO5aEYtfxj1cT9YM3N92cZyqWIera7oztfKTUvCWyUEHKZV9QNOLF/Alviemvul0y86JMSmDfid/wZ0PHronm6vrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790420434; c=relaxed/simple;
	bh=EY7stlGTOsnTEuDgzurP5ZCUCpvT60Co4GIQqh30sFo=;
	h=To:Subject:From:Message-Id:Date; b=t1L/rGaCbvcfGg4m5chrGvqvWAiZ4j1BWsgnATE7gewjf+ttvvX/aE+05mGhoJ5kZ/4d7FMQlCRwpcJ7xrokEgFij4SPii5+vrZeEYhjrOd7ZLv31OZzU67ImoV4jL0h4lXQvVrzfYWmVeQLGKjk0wbS5L0gSQCuQdYcheXiYPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVHUTvNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVHUTvNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1771C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790420433;
	bh=EY7stlGTOsnTEuDgzurP5ZCUCpvT60Co4GIQqh30sFo=;
	h=To:Subject:From:Date:From;
	b=JVHUTvNXMjuAn/MGH7jXWLQtwu0Jn1wa9UuBySpPTf86UHcMNIHRh8JoKLEvq7upN
	 /k9rs7IDTl2pLe0eLw7Iz6857XepzSq9TblUZxT+75lEcskocY9oTjKA2kZJ61WFh2
	 fiXKOAgVSmdviHpxMDR7akkgdaYAvofkkPbGTXSPtUHsIkb7+tRMtXmqPkf4lL3g6X
	 ZdWNCekFgUePzvrlT4Ir7tBdSMHSeclTghtRiUvjefDt0ia4QRIR88eE3UxlgJ5Mqw
	 WB65uqFP+NX4+ygPrEcejPnPHb4AsZoTNcoAA2FiqeN1vM5OnsLW9eur/JRhdY428/
	 qIsctTusIGK2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD48CC98332
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042043368.3804.12568781463459087693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5584e130e3383285707c010e68c22087800bfd3aa1c3f932d757a2c58d9133
Date: Sat, 26 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790420433
