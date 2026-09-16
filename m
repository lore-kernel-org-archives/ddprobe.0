Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47413350A18
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789602635; cv=none; b=nYKjHadZLF6mJPSbDrK7ObaBZaYZS+9krIjeLPGgKjkwmtwadbOhYDMkBdAmmD9dt9Sh6shYI9am7mWCk9F518u2UWLqFZhpsw8b74xeikRZmIBHtQlgeM3PjX8RVTjMv2T7FxVOXA8e17KQfxIFIDwpduceAj9jadrQ/2J7oQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789602635; c=relaxed/simple;
	bh=E46YUU4CJAy9VT48+MZyt0PDlHVV+sY2uxSsSxh8vXY=;
	h=To:Subject:From:Message-Id:Date; b=atYZk6RByAW9UDv1RXk6gj8tN7udQw7Yuz7e5QVWE7IKyfsed1EdXrjaQ+HD9CdcoQxFnHNTzS+T35IQM953mztQaenm0yBSk7hIXQeTk8gf5/05jjhIofitYB9qBv1hz1ncYk6iustYyFFwfYojurk1nECQpLys6jqXXSxXr5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChoafbDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChoafbDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D208FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789602633;
	bh=E46YUU4CJAy9VT48+MZyt0PDlHVV+sY2uxSsSxh8vXY=;
	h=To:Subject:From:Date:From;
	b=ChoafbDMSqmCIWZXViaRIrwqXffqn/oRgGRpYdzNcPV5fvd+MkWegbdln2I4FkCx9
	 LMFgwSD/jwPYJRog0FCN1E1pOyDcT0a+h7zftND8LPDRid6/B+bBPXmYCJG5Y44yA6
	 DIowWN6MWHZ04QfaP9n52v8ttChQsr9o/od0CUGtKKg2SJgNB9fWwA7iXpV38ZbrCG
	 YMY3oABzFe/Lzr7GM3KmAfUYj9t+uEPMTTA3HvrbhauFoLdmo/87n4QJc8EjBM2wgM
	 zowrN9s+OZi0lQNIZBTVyIy8u/WUqeZ3cc/zbYH4ZpWsWq6E2nVn3kTF7vtOV4AVFv
	 WC5pXhBXo/BRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCBEC982CC
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960263369.31829.112618599660302420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da772d96a6e76ddcb753720228f3b31f4c12b31b2078052fc1a24ad951194cd4
Date: Wed, 16 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789602633
