Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691133EA8C
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713515363; cv=none; b=G/U9xGUEi4jAJXftg7MCuoGHVwQI38ANReuuwxOTnwneJo4cAsTgPTXp/VEMbDSs6ELXuvr99IUDmT7xdoy1KD/vL9OBYpXC6jumQYd62rwOLp5nLw4o6hCTvIaggZdoIbYWUr9Q+LLtmVKl4n12RaVsmSvF0anRS06P+eqkILQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713515363; c=relaxed/simple;
	bh=tUPF2ldyYXCHdJ0GW6+svSumNwcWbT47CitXkkfX0mY=;
	h=To:Subject:From:Message-Id:Date; b=bih6hDJ6aqjFVim7vPv0E5juBevaMDcvcFjGT0eyPC24y23IattcH8Q4c6LcKv6u9jvrNruZ8UcxPOBxxn6AfPOHbKnIet8p/pWIcroz5eDXd5T6tppawK+dVaS5YXhTy4USPhln9xyd6E8+1sAAo0bZzH2L6n94pqPPkuUw4vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL9ulXx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL9ulXx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC68C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713515362;
	bh=tUPF2ldyYXCHdJ0GW6+svSumNwcWbT47CitXkkfX0mY=;
	h=To:Subject:From:Date:From;
	b=eL9ulXx9E7WorPdvIrIlkGKRtuzBWRGDPqlXlRPJDlXw+7qF5adePxEtD0bWodxc3
	 bE3dXLrwH7ekTA53n9cuVTd2f6dAgQxQiCJWTbluikrjCDd2R9JDtS4wifboojCikJ
	 BJHtcObruwc4jqUd2QdlxDPpVlVcPAPjTQm6hA9hqAlBXIthSzENeojpoXeWEi2ZqJ
	 7daKDzsds/zhmnlNx2FeJmU9A2Q07xQ+9u+bjhdowp0BG2rGLjm86uXAPAZy6pfKV2
	 FkbJxVJAlOWH3i8JeKf8ugYMGQ3MkY2+C9fKdrOBMXFGTtNkBTBStZK2uoNHF+bQ7h
	 Irjs1J3hG3BYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7041C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171351536280.5589.16830804529073264080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7420af1bbe0fd183a4e2256b6f9eb68ae1a8ccc29c9c9272a288b460a3f3de
Date: Fri, 19 Apr 2024 08:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713515362
