Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514292556E
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762637994; cv=none; b=BvbUd1WbBVvFWiC/+FSWrZwMii4yeM20AoQTGJwuc7G+tQURUDgmmHGUzxSLjL14LatdeteWtVltJFjO5iUn+skpiF+3Mq7KTCEAEF23Rdx1ZAWRghpIeKzXooI1B7GiK1+UdQOnKvIeh65VH7p/xp9G4oqANw0GaxzF6k+/fQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762637994; c=relaxed/simple;
	bh=sWr47eeSiMNhYSUGe5ECQl+TEMyF8KSfAS1aWfa+v4I=;
	h=To:Subject:From:Message-Id:Date; b=uywLNamhGrdI+Dv0b4kJTs3IbefuV3OkSZOcp4llSXAthjIvEKiTDiFpCVAsdIhbBYrDwDz4WkvwrubtK4ywGwab4G8gytO/ev6p5zLFYJIGOiXz5jwB7S5DLq62bTXe+fAtzJOxi+6N+6+S+BmHFyL36o0iMU4nRsWsd+WFHu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQCCQDBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQCCQDBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB109C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762637993;
	bh=sWr47eeSiMNhYSUGe5ECQl+TEMyF8KSfAS1aWfa+v4I=;
	h=To:Subject:From:Date:From;
	b=MQCCQDBFHjoJuHCYy9IHhHjUVAWut5G2KtVzdukl/JILSP8AfFGnH4vG2wJe7wJ8Q
	 xaflrP7JFVTzDwQ3QUqq8ebAlo6ZlbzEgfCxR92HFNCn76iCdarZHDxBxUtcJv+tqt
	 IYCYKALcCmgBJRL0/u7E1PbZuPPMGCJFln0Tcf6J/LQbeGhvi2VHzyH+FddK1MQ2Gx
	 BY/sjJrDs+h9pU9FUXT6eEewpstveklIJf0koKzDL1kCQmd0vTwIoRyI1WAB4ez5Hl
	 b75Gt5ur0b7Rbob7XykmWCRVXHs6aiVDh/5p7a220IJjwTkN0SDXbgBjv7NHZVjw9z
	 n9uyUhUnkHl0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D094CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263799360.11384.4439814383402079681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a6efaa85fbc3aaab9846cdb37de5284613266167f9cadf5219330229799e85
Date: Sat, 08 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762637993
