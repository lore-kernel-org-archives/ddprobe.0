Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384AD3A0E97
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770126834; cv=none; b=QbiZzfbhHVahY0IqfcAXFo9Y1vmSNT9UlVyjAOeov/P85KfiBmcZvoFARddnMa8k80J3nMXL7MlQKu15LEGHsq19A0OSlKQDX6HrYEDh4GKBos7I1W5KCreOAez8ppJHnDKeuESTDAsm5AKjRjXl+0nt8d1voIRq3Uf4Fc77RMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770126834; c=relaxed/simple;
	bh=yU0mravcSsFkuoKClYy9pRgGNtJt4105OGNCCRmP7SM=;
	h=To:Subject:From:Message-Id:Date; b=O+b3AMygHs/NoWk7mnplBsJKakC+OmpHxBoMX7nkr2eWYPf5pvPg4i8ISy1NYWb7AzvDsR+pl/imqVqT9qFtX/yyvT0jNFRF3xNk6JqE0NSU+FiFdbPlm6r4AL2TKxs0myW9eydvihPi9GY+iPFx+zAAjg5tCNaGuecurzalHlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uehLequV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uehLequV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14F2C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770126833;
	bh=yU0mravcSsFkuoKClYy9pRgGNtJt4105OGNCCRmP7SM=;
	h=To:Subject:From:Date:From;
	b=uehLequVs0J2VGLOLVnTQEpH9IZbrPQqcLx8p4Q8oNUNGvGZccDsqdwA3kL4xeW4J
	 Rc8kLdCy5LqUV4+ThV96gs/fDnSEDmJqsb3cWOrAQYdcsiUGzNzvjA7hFzTZk/Q9JE
	 HdfjqtiCgT66BbdKuGav6rtNoERhUmHmBrPmnjKS06xf989V2c8+tX0oBu4RjXfXoH
	 HAF7BVO/vjiSFKnknqv9Ddl9ntn+qjhTLr+BaaJNMI6KXJYhbgDuRf/V/DB7j3AwBF
	 cTEt0pZAvukNe4USb1QzsQXcwB3UAqdxEXcIjb6vVIUnu0H0FLfwgWF52hMsIqjiad
	 A9oec7JzONu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E937E8782F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012683363.7856.13186429973368031838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1adba9217cb343256e0231dcb657ab45c7acdf75b2ca5aaa336c0dc4c0ce59a8
Date: Tue, 03 Feb 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770126833
