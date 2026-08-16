Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BC03B38AD
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786894834; cv=none; b=f21SK/l4VCxlDlexGATFEWa9TFoz3a/zyoqw6Jh1zIeXEowUSo+dIn99uBmhtGoiDoxOTjPUSUOTW7c+L+X+sISN210CzGUJ8tmZVDnDYbYvPwhGBTcKxie+JbODyYmqBQn90zKlIMH3MgosnztYoXfqFihUQj/aOnagMbAeFQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786894834; c=relaxed/simple;
	bh=pyiZjGkZnF9/zEMMEN9Hzm+23sDVqLK7q7caQZT7Wmo=;
	h=To:Subject:From:Message-Id:Date; b=hh0fai1jkYAt2e0UpNPl8kMjCQeOkigygcDXfLbXpnU8GLFgYOgsXjxIZiTgo9sbsCp7L9E4o8WLWe3CECFnYaWJvxjibWYUM8HUXN5kNa5+qUleNbNMslHsE95CH7OJSjUC+ko51Bk4XSCTINypalkcb0logBGcRaPGjTjKcOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCdgUonZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCdgUonZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75A3C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786894833;
	bh=pyiZjGkZnF9/zEMMEN9Hzm+23sDVqLK7q7caQZT7Wmo=;
	h=To:Subject:From:Date:From;
	b=PCdgUonZU9EpcbZUeVtJ9R5WwAnZVNPPVGJQYdURRVWv7jD4Lmt3/ZXO0WkBkl6UQ
	 fKdQ9oyLzECPZnbVmx9XcCKut9WCB9HDzDZSOvjA7AL5tCub9R6zLIwSfRBKRjny/Z
	 Fl5vx563Q3K9RlBakLwGhaO3vx1d2I98ZJ4rzR5KEz3mZd9cDU1cB2i/Mjy7cK86N4
	 FgPRahaCCRKTnbcO1EFM5W2LtK8h5xwZefDF/ocRFN8B0C4zJ/lxQ3vZch9HWuqcIf
	 XvDrSIMBeSq2/x2MuSCtsF4jsBVDLbLaKOuc+JqY61N0ZTtBIekB/qxs4sVOosVSjE
	 YWp2VjEDMi0hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B5C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689483369.3346.6998075744507299083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec44cf94fa83261ddc24eb25e5313cf4f035bd1e39cb5f5c3af1b781c223d69
Date: Sun, 16 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786894833
