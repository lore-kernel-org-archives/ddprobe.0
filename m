Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B206B30EF6C
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791180034; cv=none; b=d79Q/KvDweBk8tVxbm7oFJEPsFUlUT4RdtBsBLHy3oWvn5lVAB81oZBvrwdzgWUurn3D6mkVkwyIYJBQTwpedN5h7hsqEngvEgwcLjkx4SiLzNQMB5pov73crDGsCiqdQfziCakad63Oc7C9IcxR85zGuVnm0EPNWoAUa3EvK1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791180034; c=relaxed/simple;
	bh=9ybh0JST9vUfTLMYy0mTADuxgCw+68mbZNy8kMopV7Y=;
	h=To:Subject:From:Message-Id:Date; b=FMHD2btxY6gTGSQcRq7vK+acIv4vqfzc81YclSj9eNUnI9UhVetuyCet40ylpX3Ymj2gIuIAMvI2biU4J4cSC0/3OA86PNUaTCnzVM4j6hrsN34dm7lLUsy5lx7hQa+Il/or4MeDHfowkooqiWz0nogYxZgazIqfIwkCzNkvYo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXh4DoSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXh4DoSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF8FC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791180033;
	bh=9ybh0JST9vUfTLMYy0mTADuxgCw+68mbZNy8kMopV7Y=;
	h=To:Subject:From:Date:From;
	b=hXh4DoSZ9Q5+gXl4X4t8y35QS6dCVdujosevH3TOOiWtIHUpb7P4uzjvzTt2ygalo
	 Eni80Icq3VUZPwme12vFrjC1Vo9WN63pxcyfXVYEFSJ5MKdKjdsLJZqpGOZUhnQteA
	 rldYSYKpWyYs+i8ByNdGVVxAP+3PHwsDysd8so16CM94QGTa/RPUHaAP+93m4iLTLj
	 BzftRWMWyaiL4TWC3zAHQGOzpzWujvLrOQl20YE79cIcPMGHcwKqn7+hiqPZfeVbgP
	 efet4aT/P77fB8hGuGv308mubQDhSLACw/sTpmMp41N+GxZ4nWFzl8YoWWi0oRcu15
	 3KvKeWByLzG+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF4FCA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118003369.27565.11430471518858902824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7c919d69f693d6be896cd04d433fa241b7fb8030c31b55fc6ba0d0379b9868
Date: Mon, 05 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791180033
