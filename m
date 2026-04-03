Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B0A262FF8
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775243134; cv=none; b=MZc2E9Q/dbDDw0dY0GRyz1wPjG/28DfpypoSs97AcA6TCJoJvzzPz8iDFjgypKAM0DlOAwgrZVZHy75rBrGjL/DCLcqPpRm48KI/YPqYzFE6oldSXw31kCURkgMCCtulQtMzcbaCEz54je1QANCGu4votHcrzVNHJkd7F9fBY8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775243134; c=relaxed/simple;
	bh=VKcbDAQvRe4tV2FrIFEmQk7mqUqqB8N+S0Pt3KAeAtE=;
	h=To:Subject:From:Message-Id:Date; b=caow81X8Y5obNdJ4uiXcLvQJKWfJNyicqwAj+4dnZzSiOkSgSV8sN9HZTc+96mv3z3S+m9BTTnG3cM8HHRsK+A/tRlFIilOKChKASENsF2FvvJ0ztVEuRoYWr/ZZ5LVJUjpLIidfOGQkKpZCYFT9iOUSd4HDE+vYg1cfX3/SY/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIL8RjbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIL8RjbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF317C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775243133;
	bh=VKcbDAQvRe4tV2FrIFEmQk7mqUqqB8N+S0Pt3KAeAtE=;
	h=To:Subject:From:Date:From;
	b=qIL8RjbCNFGIbgHB0znH0UuYpy0PznL5sWX5WNqyx6UhbECH13jajxfiQzj9K38nV
	 YbGOw9GlMIyXkvPIIS7lFsFgCSE6XfvIYEgLpdWutRoebN3hm/XEofBxMA55hmQjBL
	 u9zmjgHXcOUdlV+YSPnB41J2YQ8tw5hdEieowZKWgIMCJp5RXsF29Egqj9DCQ/pyhl
	 bcUGr4BLtQXFk8GAOiFbiKEABJllBxj05GW1/NqkMbHv8X5W4U7+oRdp1pgOIP7gwl
	 gK+JxUKTBY3UASMtS/ms5rIuB37gCylw5l9B//5cTOQsB5ZFVpVEi2x/FVhZLt3Dsk
	 X8r1nmtWEgN9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5DED730AD
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524313369.10406.14807237840081944254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f348f2485c0667c39acb77294f56d97d3ce278ac69d5547ea704f482661bd1
Date: Fri, 03 Apr 2026 19:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775243133
