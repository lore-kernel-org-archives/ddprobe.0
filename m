Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D565219DF6A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773975293; cv=none; b=M7hGAdEqS1OeMYby3Edqu6qkvee9gpDPj4xlAn2lgRUe+MsOeAtUBYKZYvF5OjMJpa7dZdmhCzQq3xoFuwifrGHEkqrjFQABpk8PaPxKtiZdM+yioExYLmjJpkyNOakPW2MXrc7BL1UndrL+U7XkjJ7WBrFTMKZhW7Q5Nah7q5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773975293; c=relaxed/simple;
	bh=fdHbJZvEsTuCrcUHj/E6P8hTUa9gL4sb0xdkDMjPgO8=;
	h=To:Subject:From:Message-Id:Date; b=PLKFJYlXpL6MRx14ub5uXA+LrGurC2BEwtNHa6KH3PpGhLIeOiyEVeob2aUwWgPnE5mpZpzUO90eh2/U9516kczm1AuUc0cK+gwtHDP9FrHv2nvqm+gdtooFaEnU3hnG7IvxwphPiJ2c5wjvHTu+BIP/UsQZ0I0E7xJAiV/fIGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Umuh1FWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Umuh1FWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F561C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773975293;
	bh=fdHbJZvEsTuCrcUHj/E6P8hTUa9gL4sb0xdkDMjPgO8=;
	h=To:Subject:From:Date:From;
	b=Umuh1FWgWSuiQ9J5iKRnHh5/WvdzkeA3LfnOfALRyli2mx1tQ6c38xXsluA2cOyIT
	 vh1MVV7heXot4WaZHW/xs8eNzaTICLZRWKr4s6iJw7EYBylwIz4kvG5nC0MUR82uao
	 jTrIwlz+WHKFqRJnNddXQlWeuCtXzmwQ+rvH+cvegMadXgf1qw7kLcE+6SEVUXc1rt
	 laKB8olDnWLDzjVkj/nW58UiSIhdyt+0rLjvoCypItPNW/CoF7fRyOqwa3gY8aTOHb
	 bbQJDkEPH3QeR7XCWsYA34cz0YS9BZxlJCA0HZs0ElK/IkeM0cwiRPndjgrmA1FRFZ
	 g4GxqIYLcuM6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F60A1093168
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397529358.16162.4559954213347006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5899491b59a2ab39759690256f730eb547525614045c5aee8101cc0946ec114
Date: Fri, 20 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773975293
