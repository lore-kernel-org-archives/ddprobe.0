Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FEDD51E
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 00:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718672303; cv=none; b=FV8KEc9TqCXkwM5Y7+QaRLmZ26JZgWJvXdAgPA2iFUwNk8v8Eoh3U/+VZxYVOckaN+AYjJTgl9HEQkYJL6zJ6LLuKXLu18hLnjfV48VqEPH0BBUN8EVSxwqqOfzyvlXENrQS3dsb7kbhHUZXfUlZdnPpUfmr6fbKtiOivyrY3b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718672303; c=relaxed/simple;
	bh=TREv1sib+eTo5dDYhrtC1wP9dsg8p9A+56ybU3UoPt4=;
	h=To:Subject:From:Message-Id:Date; b=IpWVFS7i9GuhGzWr7TN9iM2EIsJgqVuAjsng0DC5yBFbulVTcBHpRXKr9kvXjrK4l/3eL/oQVo4uUin8cgvdwxhgglHUJaBJ6hdxOfY0id9qUYgUqlFj2z5y8FF1Sug5vAZr07RLhYmwSBcGYTFXFSDOKGfUKU5Js8iBPOp1SqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEdSuQ92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEdSuQ92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D822AC4AF1A
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 00:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718672302;
	bh=TREv1sib+eTo5dDYhrtC1wP9dsg8p9A+56ybU3UoPt4=;
	h=To:Subject:From:Date:From;
	b=rEdSuQ92cES1v6GHNkI6G37hgVUUBoH3lE9L9RpHftqcHyvPdbzDTIIz6m/maZFpI
	 QOSaDDrGJ+9fG2aSjSnYL1jQPJFRh71j57qfi9BaijPZWKpyNi87CTK9Ji/CGsvQpX
	 6PpjszcdfPQ0QuT1lJ2iPne2nMu9uFHonNoM70MBTiXP90ukpjt7NRyMsv5wCdQM35
	 ihoGecKS6rY/kS05hc4adBhLCgxiuikNlORwXfP0cR7yelOQcDxXuvQAl8XmkcGduI
	 DYk/TyaqThM+60ZmjMsPoMOzyC+bP8HAMc+iozokv9DRqUvw9f0/DO1vj2bjNu61Hf
	 j9wSCSGYJf6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49A8C2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 00:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867230279.24040.18204039288379224039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b996f652e08165a817e26100fa3c4655e88b4f8b8db3fb43ffc3c0328e49ef2
Date: Tue, 18 Jun 2024 00:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718672302
