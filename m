Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDC513D891
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750939194; cv=none; b=C8jeRYMu2+asBMgZInfabQaaD/vIVKIsMqsd8SVkopt6aFCFupIhg6muy4X8V3QFmjY4ZW/XnVp7QUvYgjdquIOwDpvS35GJPohUtOZuJ90lNEGUcD3atqy64u8E6sC+hJGDVvGGlPpXK7Btr99vamH7yXnDlch9LgpIN7UeEpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750939194; c=relaxed/simple;
	bh=4W6Exn0nI/IND7Jc+2ZzmT/3NZQiVL/v8liyB3+srbE=;
	h=To:Subject:From:Message-Id:Date; b=lMZehqm22YErWWimmElFvNWcXrJ7ALIHRBLhVii8NYEfmnBjEsk5oJSbxTK6avbmgT4vFGg+2mKUF+3VQfA7vdSAYtRGUZ1TI9b5DssgYi2LErC5jUgPJmaYW78E4h483n2T9KobiekiM5tFAqZW4Y8+9QFTMncyXek0VS84mYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2IoMG4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2IoMG4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53FFC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750939193;
	bh=4W6Exn0nI/IND7Jc+2ZzmT/3NZQiVL/v8liyB3+srbE=;
	h=To:Subject:From:Date:From;
	b=A2IoMG4F0HhbApvg1VWOUzlAQhKx1SiVoyOM/c+9yETd2/32nUv35SdjS3xSNrHHU
	 zu0EqUr8suqiS8OlpUGddRqA+ECY8OGxUKqm0ZASqIGciTTw49aPc9aK6WfR2f8gVC
	 TjRP18YkAlHUnkbihnjTXiDTrNFpe6FUUEC8FuHb713dUS6g1CVmUOfYXAMZxmdiyJ
	 h52LBlCY58iJCmwCtPt7IWH+15zb0sDh0gomGIAsFsLHQDxpTFfNlJ/fsHLQeWtNqh
	 U61aDw5HT6HoPKHXI5LlM4i6EpIhR9EWtte1u5/+KAtGmI7A2zlV9juLhpQJeGYibU
	 miLE6xieRuoaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005FC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093919358.617.16740950026034646115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295ebe5a770a4e42db6475bf68eb4d75cb54a113d014d9a81186ca354dedd462
Date: Thu, 26 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750939193
