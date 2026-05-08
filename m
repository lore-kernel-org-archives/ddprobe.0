Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7832A33B6CB
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778218054; cv=none; b=SV24ZL3qg+0fgQSmxQzpOB2W9+G5Zrip2ZJjjqFdPUjxwVMO3PRxQZLfAXaCDvPiyh3CLZsrPXlZ94sB0EOKNjIpaUDW1PBa/l8wz9MUD9u0hPmLen8N+NLHxAwX0p6shUH1m9VXlHkxO3U2F7ehR3fd3CaOrNZO3mKoqWKnY94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778218054; c=relaxed/simple;
	bh=l1vAHgOf8TO6yaAhtOYXm/khMxRvfFeu5p+sVA0ov2U=;
	h=To:Subject:From:Message-Id:Date; b=ia8BcrLEgE9d8jj+KabFIdfSrkqBPWI7SG6PUs+75HAQopVVtY1a7ANsB7ywA7AFPfyM3xP3Dp71bcNwSQa4V1H4lmV656ZZK/r+roWmg5Bvy3q+NlSUZ7GWd/zg7DSLT+pYJnq+/e4RbwwyKQ/iK7OYOOi6SiPIYiBkU86WfMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqSnxoRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqSnxoRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F52C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778218053;
	bh=l1vAHgOf8TO6yaAhtOYXm/khMxRvfFeu5p+sVA0ov2U=;
	h=To:Subject:From:Date:From;
	b=rqSnxoRENMF/A/7Ok2ZM76oQFfZn0Oa5GFOZMw/jQw1nejlenJZdEYXyJPW+I/tXR
	 3DXwnBtvRqpEGWmIA/sJ7kAzLSaHQ9sgKZC2lL0oRLFIDsnjXck5jL6QDiXLpskR1G
	 C/7Zi/kvE8+6zRVhWLgLJMJEHH+L5jZua0DqHbxfrGWztuH3iG+b4M0UCGm4THjd+e
	 hJVPo8wE7Svx+ABK7qWb8uddbCVJPCZGpo9cSnQeuedb1wCvz33kmldXBXray/HxTG
	 A/6a1rEfUMzL9J+/q2W8ZH0Ul2AxeVktAcZuAp+FSDSBPb+L4qsiE2ja6Ibsw7u5sD
	 cPTm6WgE20rFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F91CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821805372.22896.4129762484466554974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da908d86cb9eb34987d6e8c05f3a0eb9bd2a122e1d5d5d4362cee43e8c38b7a
Date: Fri, 08 May 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778218053
