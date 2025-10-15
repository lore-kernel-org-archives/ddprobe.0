Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27683182D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760531994; cv=none; b=LsPpqf1CbKLG4emxOV/TAYproCAMovpb2tylpnuaPj4z/Q/lg8qTw5ulFUgUUS4dA4nenX3ZPuYws413GreRw2+xqzLeXZBbSiJszmSSpyPxi2zTXQU+okHhGn2l5PYLipP/BylM3+FLL0jdQbaDmzP8/HK2opDhfUqVLeYaMqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760531994; c=relaxed/simple;
	bh=2ZRNqlgT7ORktANoraSLHdzaLJ8YkjxH3HxpWbjwxZY=;
	h=To:Subject:From:Message-Id:Date; b=fu4574onyD5bSp0eugGyHN+aNkblb/vhT5gVRIaWHt/6YcYJXbTK0XW2R+6ha/vtoYCzMxixjmFpGww/pxGBIa2JzZ4wrmDG04MrjN9bOuCF6EOuyxuLFwtCI9c4jLdOEYkD4aOI881/Ba5aQc+vYTFtQiFE+TNzWbZMCMz7M14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or6eOHOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or6eOHOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A239DC4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760531993;
	bh=2ZRNqlgT7ORktANoraSLHdzaLJ8YkjxH3HxpWbjwxZY=;
	h=To:Subject:From:Date:From;
	b=or6eOHOIc+XZYWoyZOg5QPjFIi/OHsWLcT8iQ2ECQFvpZRUYdOlvR8V2zGQvanUAS
	 TD74g+idjwvyKUEw8W+q8KIqkWzabHQR/fqnbW45th1pMs5zEfkKFMEhQpqW2ZQUmA
	 DytYJmGDSAF6ibhY/CAMsKXOFhbaTZIC04aDsbCLnTd6ll/ReXQ2XSVqQ4sWz8/c2E
	 5+47D+TnXC+PUnngrBwZnXNKqLH5efMZcO7uTz7tWSuGyUy19NgPl11MxugWEQ6Kew
	 pg/sdduCJ+vXUtxJOhpqnZnF1DjAq/qO+6TSRsdYPsidVSn4tONwRx6FoYRzxiIkcs
	 GbYUEGrAxZijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279CCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053199359.26597.17723687348848510008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2035c4422305c6f781e6393b8411d4b5ab85958c9c6a7bcbf5162cc2411c6afe
Date: Wed, 15 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760531993
