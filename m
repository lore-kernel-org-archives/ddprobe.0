Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D469C8E0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739597934; cv=none; b=lSUIZKFF5W8Cvx6fVx7/76y9c0s5nONRo6rWK0TANzhfzVXdOjXLD2XxsnXIA2e5ltmaWWtuxqP27IQ9V5RcvWaGMUqauoucCAj/t3OSCOmitKiQUn0UlffPbJ53N2XuF5vSU+aro0Y8DSC59mbIKbG0mgAdhJfy23lXtkgDHMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739597934; c=relaxed/simple;
	bh=Zv6ZlUIJZuPkF49dDqBgn7f2PL8XRIAQ928PACt/1qo=;
	h=To:Subject:From:Message-Id:Date; b=s+SwSN6mEHMFefuJQ21O3MGZx5E2C/M42zPQiYNCRIYS6FVetNJrQ+gfDaJ5zjB3HYxmkNkTBbaYbtgGIO0CP8p3+WQTvZwNpR9gQw1ALST/Z1iO2qvTpYpeTvzsDZ4t/ruETe9DI58DwiZj8hv/vYeklDt7caXKjbJhdR+kofk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpirjghJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpirjghJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76A4C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 05:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739597933;
	bh=Zv6ZlUIJZuPkF49dDqBgn7f2PL8XRIAQ928PACt/1qo=;
	h=To:Subject:From:Date:From;
	b=RpirjghJBWqtlCvgHp8jYxbAbSDwc9xd1sWm5tV7J097kVrj08iRSREWWtcy2Qq4v
	 5UbJ56gjwCTRBQ5NCkO8xAM6zxo++uoC2ti2tqnDvOehV5+IKH1J6jJEOSoRVbEPLM
	 szIu+VzlyZZuwDvijOX+cwaldiVVclXLKH8H75+VocCVDH0Ej7SJk1ojR+uRnoj+L4
	 bsN2j+/0Uxxm6mNK0rRrnNhiHrchkytuldGQhJ6J9Ta32rTj7D779hO5ETAQnVfmwd
	 rJYKYnUcg5R0lURNYF81JHVaXQQsJuCcWO8ynW8rMl2d4A6i3Kv5WPx6fXw2tkvvO9
	 9oRhHVtIdsQpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943DBC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 05:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173959793359.9246.327258525074744044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cec61fb5a7e607259ab5afcaa28e3ab57a5688afc10ab9cf10cb80bf100a84a
Date: Sat, 15 Feb 2025 05:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739597933
