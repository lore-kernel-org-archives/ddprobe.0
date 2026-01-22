Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4E94207A
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048634; cv=none; b=bxoAMsy83nRnrGP9J3Qfv6M+tHutBB6jb02twGLljuZX4tPt7MXz2XWmzBX/CZpAmcaeAXzoq8O+5feZ5uhzckhJLJ8zcZ4ovMjU1UrGO1l0WOce8QQi0lTI7SxQ//o4b9dYYAXw1TRHJtO7mdOD/uwNke51Mh0S6hj4unE17pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048634; c=relaxed/simple;
	bh=QHojz0VjMMiQDQ8lUW1NL2sXzLSHj41hqVd4ErONynE=;
	h=To:Subject:From:Message-Id:Date; b=utdIqamltXMD0PngRuBb8YxthYDvrIQdoTbRND18dAMyX7pjjaR/QLNX/BNN6J9H/JvZzL9SF32Ud76mLOJkmkFsL/GEVb3NiDJF08v5esmhDDh1T98XJeLSPfSr8ynOOw8VjiuwersroKNozc4wrGaLK0wnqzlS2wnqurC3gDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sloA54pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sloA54pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FCC19421
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769048633;
	bh=QHojz0VjMMiQDQ8lUW1NL2sXzLSHj41hqVd4ErONynE=;
	h=To:Subject:From:Date:From;
	b=sloA54pvMWRD0upbRM5aNcW9YkA1hV4R9JCV4Lm9tmXhGB2yA9/nIqkdrWWtSXt1x
	 T1IgjqNLQvNfdeaTLNo4nW3p/zV90vmtphEYGXlQhaLQf4CjSUvJYRh7ytCh5ROd9z
	 1xR6rA3EpK/1CDs+aHzVhm0md0H4HAsKgpCW3L50Rai0sMALKBA/4ukmRPbuYPWxmI
	 ILmCYhoNuD7UKZgLkrPBGbGLMpJgEtMCdkNXECJn8A/op2J+FhKw3170olQ2R8k2H4
	 tFVmWmMUfjnKWT2T2skj8Bmzt381VwulnemcTwDu4hvSUHkmBJ0/e/KnGE5Od0LPhY
	 Ivo9aDC04AP4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90956C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904863358.8709.15153023242776598550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1994881204942f19ee725ba05805a4e6014fa1b1e71e95e17bcf8d811f5dfcf0
Date: Thu, 22 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769048633
