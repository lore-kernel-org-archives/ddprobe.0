Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED8D2C0274
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776068854; cv=none; b=aIeQgWUNmfc2ZqvX90msvuC7n+GiHXBF7lhEDSx1IhoET08xaD3rxsYEWANaj8q0sP1/Zb+7dhZiuc0C6r7N3EaZA3iclhq7sVA28HBeedHpbLj0HoTGgwFUSsDBqvTm2HJVyDJXatv/HJUr2Fnoe7vv7DS55e6IMWc4vIhRlXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776068854; c=relaxed/simple;
	bh=80Ga5BPrQeML9AFaYc9BHblM8BMNJ2k79eB6SezutqY=;
	h=To:Subject:From:Message-Id:Date; b=AsjKY8K6hbHF5F2BiTcFpCpaEdYn4HywG2ykkzuq2oWxIkrJiZQEIYfooLw7pTr2D1Hw99aJT/zO0PRVZsIr777KaQQ5txw1PWq3ErYHoF6qYuXYS4T7iVzO4rXBNEgkrjZukn7rvCLCnXax5LoiX9oBVjm2eZaHO7jIANHzfbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQmkj9jX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQmkj9jX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF23C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776068853;
	bh=80Ga5BPrQeML9AFaYc9BHblM8BMNJ2k79eB6SezutqY=;
	h=To:Subject:From:Date:From;
	b=nQmkj9jXd3UjMqG1Pzj2CEGrE+O8i71COknbyCLczi+1A0ntenYjRxmhgmtWytnQz
	 UdjuUQtAAUKQ+ZrSivoLIbQtWfKB0TB15q6727krK88Rs9Cwe8ypP+TYV5m5N9Dlyw
	 xRpw3b3P+9srdPYQ5dP6mZOj30aYLOS2IoY0v/4PxU9/0LpWKs9vJC5h8Um05qEnmP
	 XPHH254aqwffCRnZ2y4MuChtk07FyhecmMQXIQ8JIrkkQPVcclZhMCM/5aQeYDI7Y1
	 JzLV5LEwQuurOVZ2YoY/ysuFRDaL7tysyU4AP92HW9tLhK5yuKlzmCDf/NQQ7MX8Rm
	 h5c0XOg4mmCaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6FEEBFD18
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606885369.11292.922112741020413250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c01b838715fa52a2a3da56327675494119c1e2a7b7d034df8caa2342363cda3
Date: Mon, 13 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776068853
