Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C171DE8BB
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753513194; cv=none; b=AzSqeYzSCcs5e2ZWXG7uJ0W2OrDtDsE5vux6ioXk2nMjcbitebVrdtR+AuNtvSIN2Rq31CZX7CBsLIi+ATNbGovaQa511betOFqaQCPTt2GT/+tur4yU8QxZSDU6U7+L0W3e5ELUABP2oe6ZwWKHd+BMDZR1uNbEoZAntujl9FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753513194; c=relaxed/simple;
	bh=Bh/bdCAFoJQ7iV7Hhwmvg1BhxKk8uTJ/aOmzu5kf55s=;
	h=To:Subject:From:Message-Id:Date; b=DcnIA5gTPFUmmfVTJeznyzKKGApLnPDgd4/ytZMYbbYbqXNsSfSvExOe8apCPv38zx7/d0+r+TFcsjRtIhOib8nv2yIrqsJnR9/foajOWaWNjTJ6C0NjhWV8oE+WxFay6tsQa7qJRuzqk64g98AdmdL3qa0QG7RR9Dz8xBCBCkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2Ypn6EA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2Ypn6EA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3267C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753513193;
	bh=Bh/bdCAFoJQ7iV7Hhwmvg1BhxKk8uTJ/aOmzu5kf55s=;
	h=To:Subject:From:Date:From;
	b=R2Ypn6EAIqSiXOfzkOUWXK0tYs1KQUDLmZC4ELKd35B5XtD49d+c13lk3LjC8mWoa
	 eT75ktCeIQ/Y9tgWtmwJ4QwvCATHSIYQiZqo6fn3ufsuUVKNMkH6yQfXEQcjDSI0DV
	 rhUfEa8TGbuqAGy1pnGuUTO++XCS/IGDUcnnhW1fiNTVLn2HfA+D7C9Ho25TQFkaqt
	 CesxR0zYLMMP4KRzOC4zJi4ZitpzFUCcadEqb+jTUU8SJiGq1UPwkJGEgJo7GwN35b
	 Co3getSQ4g/fmgOCsnvHBRUfkIJ+zpRoqOvjdS6qLXXu2MBfkOP3zQjiPbrBK1ucvJ
	 9PySbs4cfNlnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E57C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351319357.7906.14643115127693353434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e68525d0f4756e8c319b52cc44381e7f18eebda0cedd4785936ef65e188246
Date: Sat, 26 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753513193
