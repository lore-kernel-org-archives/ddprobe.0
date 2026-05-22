Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384393644C1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779475354; cv=none; b=asNdlDbIePU15NlfOJPOX1Lvtc7SA+pLzSymwBH+dOPIzl6mTbA9kD2Sd2ExmPYpAaz9YhbN6hUVfuqEgA+tIBI6ji3yLPQ+G91EcVhnakSp2jqh7uBVGUR39X5IiFGQ/ukT8ulMwz2BHvHaHCJL5AZ1GjHQn+0vGnoD4ht+XFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779475354; c=relaxed/simple;
	bh=pu+hs3f/CHSBStBIKM//7qmtVoikNJENvNRMrlVTeTs=;
	h=To:Subject:From:Message-Id:Date; b=EucwixI43tIBbULEyXi4HscAQALwYM6WOh6npRusXiFM+lijeqHJJvRTkaG8rY4rgv68ZIUzIDzrO4KVYK/aYMcZmVG3T1PpDkY/iO4OlMI7C1CI8HdaYT8GCPOw2YKxOeFodDBI0HzzTJdHOMIxFWtRn4KZaFNghEgY8b8K3qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8xmaOVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8xmaOVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8ABAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779475353;
	bh=pu+hs3f/CHSBStBIKM//7qmtVoikNJENvNRMrlVTeTs=;
	h=To:Subject:From:Date:From;
	b=Y8xmaOVjaWNyrN8X+ud1Ne456T4hh0tb+L95Z3nfhUTfXreJACeGNpexN8lszy7eE
	 Jj0TQrTrenBoWYnOg+edhdDtkOK2BA6ldyaHjkaZi+YypeOhCH7jhKPTfMkcULNoaU
	 zviNBahNtXtOBABhPryksbH9rs6FGHLn/dtuJu5E3AoC6ncihXj25+GPXTjr3t4pab
	 FtdtFMt/Y1uUjggKkX+IMTQeWYTxz82C36AYtQI4hnhShD7xFubdaXkXeXmt/ps7cK
	 YgMVHOfurvj9hsUDTRR96I/ltyCZGi2pyK3SNSM3i6lU+v3PngIE4+6COJpw1V8ueG
	 GXeYL4A8muYGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCDCCD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947535368.27745.5884067136677252425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf56b7341a9dbadfc301d2b22776ec5912a652a19ff8aad4f03b9d168bb1b4f1
Date: Fri, 22 May 2026 18:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779475353
