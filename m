Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F3214F136
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719574463; cv=none; b=YgTL8fjE2ojsqzRZOEUN1KP8eL4b6RmUPp1nvfgaac0Wp+lUjhlK0FRLHM+1sOyrMJIkqBvA6seufci9yqKzM4/beBxQ5N+PWARqq7GbwvwuLjM9YqtWPJq9ujS7L21TPVqBNuNilKyMy0O4Uzs047HBXGiQaIFbiO6tgfdLFKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719574463; c=relaxed/simple;
	bh=a5v7Uo1FOe3qMHkmIM1vE3hbkVyAdW6CS2GDit8BUxg=;
	h=To:Subject:From:Message-Id:Date; b=Au+JMbC11Ni47zlCS/uU7ETfcNgQkPbYUj/QDQEFSZQjknu1HkVuyCbi0qoVBMICjOnPZ/xyPvzbtTZZhIpMhRaJLqAGbzW9kAN1YltElyiEyCUrFYzhFNCH8saG5CK/i9Nb/1N/MNbVfbhUx557dP1TeLnHheiERXwKyjIlvew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7zYBFcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7zYBFcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DD5C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719574462;
	bh=a5v7Uo1FOe3qMHkmIM1vE3hbkVyAdW6CS2GDit8BUxg=;
	h=To:Subject:From:Date:From;
	b=T7zYBFcjqJxIQyb6W2IK7dhFuaGBk3BQ7QrsprDLoX1T+LQ652Czr9kK6eBEBax0Y
	 +f4xsVel28IHeA8cFGBOTqSv7D5fWj86gqr4lSR7xwM6qn7uDdsLIUJuM21HZDmTWT
	 1jDZ56b09+FpE45BfFM9S0Q1/RV8g9qOJDI+oMMdObjje1L+bIjUn53rcOvMc8H/jA
	 rycZeKHeytGStP/QwsYR6gT6PUAqTRCq4gisixz0aTi/K9zxcgLYhTCfGx0+wriXBQ
	 O+YaNtYn3/ri3ZWhSkNUMvmDJNEaTvNbZtJ1Q+2BJxx4vLGWTDGIQz7D+GJJIzQuEw
	 AdYd7v8WtucaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5A9C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957446281.17758.12091860395667941896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ca09f71ee9ead73f5942cc7748bb959dfc36d7ea17238a705b09471598ff1c
Date: Fri, 28 Jun 2024 11:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719574462
