Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABC21384BF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732020354; cv=none; b=XnvwCNS1g5B4YuIkEHn/rZ0iVWWfg5AasdRS5PVT96aqIGZcwHQsVlNZzI9N+6XP/ctSGTen6qFYjuQGHF+EHC9N/1WKiXc5yRdW5VXmeD2JteUaPe6obAb20Njd8veLXXzVeeVO8SHKrieA1stXV3fCU8aSDV8kfna6V9dDFxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732020354; c=relaxed/simple;
	bh=1yiUK/E3N4Ub9ATu7mrMoC/m193X/0U2kEhvRzPjT9w=;
	h=To:Subject:From:Message-Id:Date; b=h41JW3G7u6QWSG6g7TlJz0aJ0GWTsGHVYCeuAtaKTApzK8OUaBs8/x4oNsTElbUU6Gz0FA93Hv3LmLkv2ZiB2/yPITrrNLv02SrhRqIllTjo1rYNTsM+ONDUFCOWBYAESO0Kq/FfDujDEMNePLdeN6g97G9NXO1pwqiAk4WzYq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FY9HkDkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FY9HkDkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB81C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732020353;
	bh=1yiUK/E3N4Ub9ATu7mrMoC/m193X/0U2kEhvRzPjT9w=;
	h=To:Subject:From:Date:From;
	b=FY9HkDkOom+ipIfc5NDYp7s1oKjsu744cknxG8ei3gWXigmiixbEgmpPzBcs8FsDv
	 3c8mtFmqkrU+AN5HxIPX4SpDW18STTIHrR2qGuWFxefBn39NI2yLwzFVwpq2B9ywqT
	 Z9cXO9/v39J7n2daY7gqhQ0QiU1VpsokBFq/zscfesXyM/JpuslxKEahELA5wZ0Cfm
	 qqwrRUwV3Z9hT9mJ7r13ay2JYOHo2kiZEDAHFqGQj2sr7FEeC056anMdF7/GWhXStD
	 oPrbCpAhAYwZ0++RosdvQCltENyKpJdcWFCn9mNnYxI8cRFixu9+OwkQERbLfgs3ZB
	 BnhZFbQ4go/OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98394D44154
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202035361.32258.12024372577178536589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523bbfad683eeca5e66ca1c63f5de001eeb95563aee964fc21f0691a6ad58717
Date: Tue, 19 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732020353
