Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192E6101DE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732587354; cv=none; b=jVq+PeoG/+S8a6GR0HsnYni88BtY3zgUBP0rAa2U9iN0+kfn4TYf8WEhBZA8MCF2oGmbhZNm81Ra/p4IqIlXEcI9s+2s0GOA0Uir9373wuSHxOzy3eQLiQMm8Fr/lBjxEJIaUoJ7yske+hV+qtiZALWSE+vjFOdGd1/2wPZvF60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732587354; c=relaxed/simple;
	bh=PrbZ0d5Ha0H9KTSwu8tjvAlvtP/pf5gNNWQ+mw53AwY=;
	h=To:Subject:From:Message-Id:Date; b=TRUYqNavvENcZEYblPja8oZ/zpC+g8WTznVniFyrJrlC9raoZVF76PqGhrB03HexLdbkBt/cHik4hJ1sE5U4aP7yGFqbXllKKnE2FW0rynIu+Ddw7wbdhKYrDwwHxjfX03n+c9OKiUCKTj7KW8K8OEpKZ/mSCOamU+IxZ79VjY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwXbxd2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwXbxd2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5011C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732587353;
	bh=PrbZ0d5Ha0H9KTSwu8tjvAlvtP/pf5gNNWQ+mw53AwY=;
	h=To:Subject:From:Date:From;
	b=XwXbxd2+e2kq3uFrLpq03WaBiTUi8znZDpTMf0a6y7DGmtn9cJ1J3pu5jVVWDv1YI
	 toOIfqxYDALxcUCsMqWXLV8q8M5muE+9DgUdk+6Exa754NUjqfIUwD7Vt3KoRvaK7J
	 PoxzF651QZ+kHR4P+IfUOaQ9Zr+F3i1XR3w1r8K6zz0MQXtPkevCTgSj2d2my3kw4N
	 gBLPKtp29YPi0zyo/vOsY/wOE2V9k+QJAA5/N7bz1X1hIIlMohuvaqMUNjvX6dHldT
	 G5fbFpqqgzkHpo56oKyZyY3bXv3Li/Elt1QDUstaBixBrL8xeHZYXabyLAtz0qadaN
	 fNB8UR+89hDgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90026D5A6C2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173258735358.22614.17465127480936736962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee85059acff765eec80a08ecee0ae05b1efa83f2971339f1fc509bd4f8f7633e
Date: Tue, 26 Nov 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732587353
