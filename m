Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F9961FFC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724456753; cv=none; b=qE+zly/oPRuReOW/etAG/iAcLSuWkUj/BtBhQF68vn2ujzXsCH48L4lV2nR1FsGAn4JbWVw4klfolDDXQ81ulMYua/qIusafBPT1JMgvznQzWPLq/IpBIK0fcntevxUnXeXOEvUWWRmQDYHTb2QvjaHM+UM4vgVXlY9BEqsmhgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724456753; c=relaxed/simple;
	bh=PvMsPgwL5xQ+QwH2pn4Eu550uv5BVLttXTN/KOesHPA=;
	h=To:Subject:From:Message-Id:Date; b=c8lIRL6VJQNrNYYW2xOUp6HDOBHRKytIdKEt/adrmEdz/rzu11JCo3UBPyNYcY0U4ke9P5/mwHhh9UzNUDp+E8ReSECxThym/eG1OT5fYB8rN380JoG3I4nO9YsGedPiRMqQBoA8E9YbWSnb/S+RA285F8MXpT1vhaeyy5VEVE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgCFzJE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgCFzJE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC33CC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724456753;
	bh=PvMsPgwL5xQ+QwH2pn4Eu550uv5BVLttXTN/KOesHPA=;
	h=To:Subject:From:Date:From;
	b=JgCFzJE+4ARMdD42FmQcQABdAMaUD8KDZjyZdRMxAaXJJ2xeIGQrEgNk+gH3Pzh34
	 KCjnDXFAwBEwZ+9kJPkhOF+mDVp4PxJirzeK/E+XQNbwfA2lbd5PuLmoqHGL5Fc3gm
	 BeT3VKufBVPHzoHvh4qSxUIHkilW4JzUwJl26W5gz1TfS5oYbgCucklYrlRosJcp6P
	 UG6wuPfMA7npTgFnwBBm9VEd5NM5cJHpf+AbP9tQSwWsilXUk7a37KE+qeYtzzmW/v
	 78ze/WpwXXziH0UBYCKA7KeCFTjtO7zYP6EW2TEJ9ssAYIEC48KJXHfN6FU82OLN17
	 k9Tg8TLm3d4xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99763C5321E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172445675360.3246.15252918094307833065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1935bc03a64604bd574a7e445ec73bfb5444917afe8efb1069524cfc297597
Date: Fri, 23 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724456753
