Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9949C3B95EB
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787100034; cv=none; b=cxr/A/XxROtA09vZwRWFRlfhCpHtY3L54hJ4QDhd0FO62rAWn4ZUC/5rDah9gbqdxOXcO6raq2xs46VTrE1CQXVW1E29Klx8aQv6GRmQBIQZ7CYQTKicu5p04y59C3j+mGDLhEiezcipzNwVoBSeOXPXCulHLfqWZnhoWR90SLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787100034; c=relaxed/simple;
	bh=j4kjnnx/yyKlBcyKM355ZGXfrR+DlwOVG2awCq/e2ts=;
	h=To:Subject:From:Message-Id:Date; b=erD4H/YLhysem3XVOqiy04th5jivlsod1fQoSRE2dk9r5KZ43uPkv8SpL/70ALbZWyO/RdLtKetVyYT2ud2WCzrUkc3AfKnx82skQ3RV3KUnXyGgBKQ2KzSc3AN19rYk39bO9sGKqVaF2Z98tOQduLgbVHdd5tlQdCJbyymmnio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9pTIhvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9pTIhvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4974C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787100033;
	bh=j4kjnnx/yyKlBcyKM355ZGXfrR+DlwOVG2awCq/e2ts=;
	h=To:Subject:From:Date:From;
	b=V9pTIhvzRUmDLt9+qKW5SFBexjuXxG7iFnOl5BpHONAiIBYXjg/5V7S62CwEQ8NCn
	 pkZBZ5l/ZghiL7irJOnSbsD1h5dSAQb54d2p8R7uWGe5KiDwiQQj1ilPbwz/ZzAOuo
	 bdhOuU0Wi9atqc0BqYehOGx0g08kwvm7G/gl5fCPhZglYQHvPkfJVGiKiWSTvP4FYK
	 e+49XYUDCAHQqPwvQjAlNWGgAYUbDGlU1ogq8HdxWq1lN3oQr+OZ1+d2xr09ZKfRn5
	 w+pl+aGNlq1sH6655mqroqNH2jkTihQ1iGj04x3CCCnydxKDb+fV/nMihsV2881+Nz
	 rjGs7lrlwUeyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CB8C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710003368.9563.6322078761656850393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d77470f802750c8001e47eb2579fd2d18a59282df24fcdbd4e9cf335c4fda44
Date: Wed, 19 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787100033
