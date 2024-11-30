Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549FB184F
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732958154; cv=none; b=RZzet2Im/KARE8IyGzKDqASDtQil2hY39Fi6ANVptv+THH1wXHRqr4oL3Q+EZMLMsAV0YBw2njAhPfP86di3Os6qFqG1qH+fBc0POBqHhvfr6swCvXHjSob/Dvt4cKUqsToGRVC5sJrfDWJR+VKSiWtHYG3jl06r0qtT4dZX3hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732958154; c=relaxed/simple;
	bh=IB7dVXnFUmEY51jisJwnOh8FlM4NsY+nRH138LuE6cE=;
	h=To:Subject:From:Message-Id:Date; b=g6JlQchP0rdFtlsEWn355KzygnSlYo49d8SCX4KUhbMogKQajf1ee1bN3FuiPZmBAw+Jlc8YSoFMY7/BpJ8Qd4+wPrxDVzy6z9zgHK6evKey8OT24uqKfuQF7MGtbX44YDDU3PjpecIzPu0HgvpFXCqBK5EcysquBktcHANVzAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLzEXieo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLzEXieo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAEBC4CED3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732958153;
	bh=IB7dVXnFUmEY51jisJwnOh8FlM4NsY+nRH138LuE6cE=;
	h=To:Subject:From:Date:From;
	b=bLzEXieoNnWG6YvqNMk9yEMf1TFwlgwY6Xu1h3xSZGCZAoLD9qNa4PIHQgedVarHb
	 IReFtur6h2kJAHqsE7KyRdU2ipHcaeGxv96WAq2k91gvqrCEhSn5+G1wnFtZiqeUst
	 YOogWXKRCzsJjhx3/Kt5pInwG3QKNeHrVjkF6QtyDhHd8ZtembPCrisUW+57GOCRdm
	 TTQtqY/LlLYg9DLTIT/fupCSyuCJLHqDmicNrA49imwf+aWijMiohgv5P3ShA3j1zo
	 +9bO9Jw1XscnZ85CR8+qFeZ8GhQAby8mhF+VeWK0l5dUXqcyrvMfiyIEoyFnn1Nuws
	 4chz2mKgGd2sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDDAD735FC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295815360.16812.2831936118853090736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d959e11a8668acdb94e1355749bc42d868304e5d0191e6f54719c92ac0e3d39
Date: Sat, 30 Nov 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732958153
