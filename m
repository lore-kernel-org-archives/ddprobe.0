Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2180E2DC789
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776506254; cv=none; b=aOXXGo7ynlpLV0OEn/hA6qaiMgBp3trq3PsW4JpD9r7/bj/jlzW4z/+1mLx4BMZnfWUsDVlOIWeiqzt0F5aG9cFd5mhoCETIK+/h5jgodXl84bd9p99y2ZYw133f4hzyq2ui/FYq5Pt7cFFehrFeMb2h8pSa5EyVss0BMTph0SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776506254; c=relaxed/simple;
	bh=GsJ6uPdQ32un7k9eoAA6biWrWwQl34bZi9HqDFnSblY=;
	h=To:Subject:From:Message-Id:Date; b=WyPXdrXBdEA+YaOClt+BusA0qpDHtPQaVlXZ93O7MkTj6bOUCsny4nIT0vmH5T3SU9RtNwFAnkz0JAWdQhN5Q9Nrd3VqJc91m8jIwN654MpgPuXOv6/1Omx0HyAMsq3jZQduUPGJ+vGOckTfrcy+1GUu86ATvcAfNO4EILBy8OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAcN/QQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAcN/QQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB710C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776506253;
	bh=GsJ6uPdQ32un7k9eoAA6biWrWwQl34bZi9HqDFnSblY=;
	h=To:Subject:From:Date:From;
	b=tAcN/QQJCnojT19pNZ09+di/4VL7zOH2J97UkxA6h6DEPmraA2HS9vFFFu8etxTZ+
	 svxXGGPOnemVTyKo1SqDErQ1TTuaceNlV6vz6u5hSb8fn97Ohe7zJHjJIK8GtnISIx
	 Xb03yPCqohEcUsmOo/spN1nBxNlZOgkDm6MZ9aWu2saP6XWaeT4kXtt7/H4ugUdAiz
	 Ou0dPNCON1O/TjhnutOAgHDBJx452kZtSQpFVb6LxuNM4eu4yhJlSszy2jzZomJsF1
	 OYHXPhvZlRYy9T/0E/UFPEkwnDi/L7B0JzUIymzWmQPONcm+d6sssk7Od9IdXcFcEI
	 xvtqCJFbINd9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99BCF99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650625368.31227.1982415442266001886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30671f838dec159419341137d07f3af1c969a493a6ad2d3bd78ddac6c0c4fbde
Date: Sat, 18 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776506253
