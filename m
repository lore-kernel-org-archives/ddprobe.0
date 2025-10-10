Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A21234BA58
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760059194; cv=none; b=DDRoIoWe0ST1AVocws97CB+2Pj4KUVboItYr5JxxToo05xgCFjXX7N6bxvgp/zGICgl9di440P1E5NTRz79z8WL5usA+yfl3qlRdSZaSVAtwZlVlW9sOTPN1OX7xhPa0dzQkib/BIcrpWM4sgPW99OQu5UwSl/Dcy6wVcqZoB6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760059194; c=relaxed/simple;
	bh=nJD7jbd0dhfrGNaUQb/Bts2jEOV0scnjewFxueSZLI0=;
	h=To:Subject:From:Message-Id:Date; b=W03aOPjutng6mY9JhXhsvydYJFwiCsTYyBUQU+TJ6rFwSu94LWbD2VZley8swLPQMKLriaRzlKF0rNcEEJ86XNJ2jVuO+Y8FVfesAaPicv+OyZ+aJvXEtie5fZNwBtefQ3oth+L+BnFjC7HkSayhKAm/ijv0bLxlL9LToiojcXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WF8T9enm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WF8T9enm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B20C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760059193;
	bh=nJD7jbd0dhfrGNaUQb/Bts2jEOV0scnjewFxueSZLI0=;
	h=To:Subject:From:Date:From;
	b=WF8T9enmDiBQ+dXI98TUb6pjkgpNukZdOTXLydA8A6hY6/r3wf8A0c0Xt0Y+48R4p
	 gOVX4g6dQa3LF3DJ009znY70BKo6ln6ZL59wCy9g6lKHkYKKoApO3bhfhuytwFDXBe
	 C/bRlpyehaSZVzjBQBfbsVeNypkBZUzlXpZIEn5yea/y4K7JyCkk4uJ90n6UO7nFsH
	 Z9r5WCCAJ3ixmCpKEOV70KINmvCYLWN6e89934Q2MJs3zLG/hrcrbKHDd0mdOvXoBX
	 O8cberqSzNWikSt9NzHw9ZqEBykHG5pLNHbSWkC35NqBPgoGfQArVVM9ob6hpDOtiS
	 llSwwk+zNA13w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF4ECCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005919358.18853.17321309335847943928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d61bc3460c3ed6b4d7e793a315475381d4cfa538d5c562112d6beff0256022
Date: Fri, 10 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760059193
