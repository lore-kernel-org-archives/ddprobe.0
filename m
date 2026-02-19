Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042FC33E34E
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771500294; cv=none; b=jyGJifupgnevZDssfdOEAM7hwYUBhMTXwOFIF7/qv8y35S9uGKJm/PqYcRDgKvF9epJcCpPWfzlo4Auz9kkUVk6QrjOVAOn9WAwqlMFmzOTVF98QTGUzzMF+l3kT0JeMf09M7zqmPjTa6O1S074WmOucbvwWdtGydx1CRge/aPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771500294; c=relaxed/simple;
	bh=VbpHXybHCauNqQhG+OmUWd4ZRcc42arqUPCgLy86Hbg=;
	h=To:Subject:From:Message-Id:Date; b=IVkp6v/z3Ox42xpqgeND/P3h3i0G4crJmorciUAU1ttpBO8KXoAn9bb1M9yvs0V12bdXM0D+JVoUMHKJJa/Mny3DGfo4WxiNpNnbdJDii3YmxiX4CDDkyO4+L1oooxbbqzxBwETE2EDHu7azRyEXvcsueCIhXSaa/ZyGSxNrA4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQpLb+yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQpLb+yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89EDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771500293;
	bh=VbpHXybHCauNqQhG+OmUWd4ZRcc42arqUPCgLy86Hbg=;
	h=To:Subject:From:Date:From;
	b=CQpLb+ylYbIOurlpqMW++VBx/ZFQvy2ScUhVTWOdpAthue1ZyCRaR2EYaKItr8CmY
	 0HDlbgbC2zpzh+fwFWYpK3n0DE0osFG9X3GQK9HgxL3bLb5ZB8ZodZIyLqdjr15y+V
	 a2V4iWrAw606xjjejmkyYqM8NOgxoAfvaQ/x0cjiQUJjh2yCKvuS/bTFhf8aSesEOa
	 f8xXNR01IOBTwThNyiU/9UDU5DxikCFCaboQv6Qu4Hs26AYNCGni7RJx7BENL1snvv
	 1i1xeefREZ4aynLb5AxuJz1tGQPj8kKvOVX9co6JP6K7HkCROwS7hDkGsQ7+/yKa6h
	 7XoeC4Sxd5MLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9320CE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150029358.25709.9922114209170068051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ee68e1e292c6aff8dc2c29538cfc42dfaf87c208f30beb8ce57b32a89a8cd0
Date: Thu, 19 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771500293
