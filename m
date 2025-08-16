Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351E11FBEA2
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755324594; cv=none; b=bdyO9OQ4xBAb8aY8+u2CKG+Oso1ibBXAPPmbt1E7OJ/elTScx08tYtlb+np4rkGnmw3Tmyi0eltbechE8+stInQi054+afrODghe5OYpx1SQpEvHDx67n928RStMSySlZg488ayaEb6HxCuy1VdkuxlGbjQ+y+LWCf0mYu734AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755324594; c=relaxed/simple;
	bh=FVqz6V6F2dOfuzfnRMapPxXbxE0vyo94cyKKREoBoTg=;
	h=To:Subject:From:Message-Id:Date; b=i+R6r4Kd7sFQ6kZt79/nDrGVJ0EUvDgxZny8gm/eVTMaUPRm05WeY+czRJUNQLZCu7ah9+qPfyNVym2TrF3d2vNf244gPccZ64NPMxOmZp87fgYU+ENhKNKRm/XO6IqmNiDW5JHvdahrI3C4ENPNFKEQJ+kFRV+jSyH5QEj9mbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dILJQIF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dILJQIF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2670C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755324593;
	bh=FVqz6V6F2dOfuzfnRMapPxXbxE0vyo94cyKKREoBoTg=;
	h=To:Subject:From:Date:From;
	b=dILJQIF72BQeNduQI2uF3vBWG+Z6s0pX+/5Q+yQLApJ+rijNluqExlzsCsdbm8Xfk
	 BbA6XRVh0LqmEIU03BRt3OPi7YBD2bqk61FaJWsJS5uUNF9HtlMpb6Yo47gutJSobF
	 d/5+WIe3CLrhqJ8HNdZYAxlU8NFljhnYGWSFvPw+brDImByC7KNZdVnZ0hw+0Jgn9i
	 FGNmxvcjgRUoUzaNdrL3YLG6vjzD5PHoDJCWJxc4JqoXQU07wlU2otinZq5oXArNqK
	 S6yaePi+cCHTJSNxuLWsWg4M/5lAyKvg3Bz8jmkOEWHXU370S2qrCoXYP62JilWfUq
	 BN8NaTKmSVFaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D16CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532459357.11864.8590266162350223458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b822701e82306340b2fcea9d737156ce56e1dd61fdffd45932c3b3ac78eb5305
Date: Sat, 16 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755324593
