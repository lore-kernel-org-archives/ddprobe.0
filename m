Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB86A262FC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762622993; cv=none; b=YDofdrfCxxlJbugOBM9YflNnYcuBALo6uezUfWQbCIlmAF1xIaGiqcjkDCzk6cQRWbr+lox4FR4BRs7eVFlA22UXY6YZnDBxxsZDHpeZzEi1NbLPTRxNoJGOr4N83D6MPgNjQILDvwXHs5remPffif/IUxyYeFAWPBO49Slu2mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762622993; c=relaxed/simple;
	bh=Mp1C86lr/UQgR7CN/dD51G84uVeY+oJGmsw9TFkLs7s=;
	h=To:Subject:From:Message-Id:Date; b=frBAiBG4riwY5UvJWBh4gpaJFra07WUlJdTlovVLGa16Q0vqO1CwrIuLBidSia2OuQqMVFLIWk2PQybIAMPWU6aa8PgjKl3/d+GUwiaO5LktGlEZsLufA0uAwucboQZBlsoZLW4VBDU9STKVffvU+KkvZB9IQBuZP0ZbsrN/tiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFuLNuOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFuLNuOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A349C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762622993;
	bh=Mp1C86lr/UQgR7CN/dD51G84uVeY+oJGmsw9TFkLs7s=;
	h=To:Subject:From:Date:From;
	b=iFuLNuOxmUdc0Q7TRKf4fGSFQcA3I0zkqWHmPQ2J2vJSPbe8+p8ho6ezxMDo7IOaK
	 5HxMlq70us4d/zmkw7yV2CfjE3Hu/YVVuburo/UYy/3epVzNp2xdKOzLIDB7jwGeYy
	 +SC19TrwmdZyTn+JeZX8Q9/eEFVkmcTFFDJNv7llWBSQ1auKDR+o8hlS55jA7iuYX/
	 SiR2w9+LuOF6EsD9u7R6uzLgSB4QQANC/HclNOPFs/MC6lNPBfd0Lrcwh0G07mKKOQ
	 aIsKIJxRpJoiSmBNhx9GrH5N44qskRiQ34o3hg8HkVisQEIdRJtffVd0hl1H17qG7B
	 4tuaEm0BWqGiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFEFCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262299357.26202.10720647335039476684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13965fdb7e3413f1d172d4ce6078eddd10e4d50a5119a0c6fdbae88e0e2e72ad
Date: Sat, 08 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762622993
