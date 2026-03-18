Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA093F6612
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773863694; cv=none; b=sEr5hVnFBggJX2gFOhKOY3TF9jNzZFjm9DwsDCTs/nnWYhxIPJUgseNjnde4vEpvtyVaAJvYSCYIpiKl7LAdtkpYpOEak+C302QzO9Cg7dQjYkbGD3qbR5I6cU/wlDfsfeXMoHp9XoCfe0oXSjIBBAs3W4sap+lTcJcI8UCDRMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773863694; c=relaxed/simple;
	bh=GAmvtIN0lqjX5yjU+e860Y6K9ralcGXkcW+TKILAcNs=;
	h=To:Subject:From:Message-Id:Date; b=IaKp567dGy1GQ1qRkaJ4EDy7GBcy5o3Sc4V4EX8FWZ5bcOjkWna+1BF7NQI89Bj4x/xK1GyDRGR4SmDFbLyvu1PjJAUwBBuKD5TsN07+n8B809nUYLAdv0Gi7h3NXNcqP4p84BMTLhMzGqz6HdOM2oJoXBUI+vNDCyJk3ZXdwps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuNSZzYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuNSZzYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A042EC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773863693;
	bh=GAmvtIN0lqjX5yjU+e860Y6K9ralcGXkcW+TKILAcNs=;
	h=To:Subject:From:Date:From;
	b=XuNSZzYk7CsZtC9bHkroBUnsKMXY07/vTrphpC2qWNG6fH8UH0SruooJfwoJ/3xVV
	 V3g8S3HHakaOrN/VJlYHu5Zg+u7zzZeX3n0Tg4ahlDuC/asi9W2c/H9oZ062TtLioF
	 /aaFsKjW0QpS4skFCaNX7Q576bWQaX2fILc8DiAEAnt8BfvLQgvEOXcOJ3Jf40y+8+
	 zlNML1CkPmliEHZrLtmcyL77AL7qQJ/GepcdNQKS5nixYvqL0b0fbGsRLD+8hdscvL
	 o1ROqmLnMgB4z12xEI1jFikF3z7e0aRYOnGZk25Auz7tsUkpdnlZ2elMexxSqLXEvO
	 OUX6+Ocr2i3pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F291107760C
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386369357.19521.10225835072069994654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae51769e3be6e7ee9bd05d7b6abfa90fe5d5c1263d7cb4d9f217038551bfdc3d
Date: Wed, 18 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773863693
