Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E42D52F
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710479896; cv=none; b=ff2uZigIJPM928RZfoJE0ia5PUwBut7/+RtIqvxRpBh9mUeqR8bWhee/L6bZ0eTpNyvFKqF4z8/JjuG8mvuJGXjccktoMquJBJukJ4qf/wydNqtGDLiFdtqVxVCi54vDhzynpecWbAllzRqZSfYoPCuc4yqeMnuXaNXKbs3WGCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710479896; c=relaxed/simple;
	bh=NcUs7lOZRPWqho7vXzjfzcNU4bmWoevqEjMhhqovF1I=;
	h=To:Subject:From:Message-Id:Date; b=VqDWxmBAYcxaDr9rm3HlGjdSr97N+uFQwS4WMS3ZNUvHplgp7JMm+3Va7p2+6/V1cYefHpKv+19quU5Y/o4lOjKxZdUnga/5OnlusqskcJ9o+XW7A5+yPWzsUGiHbhSE8fNQYF/oU+ztMIt2Dq8CSDci1F1ZSN0P/n43BWUjtI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMX88YCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMX88YCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7171CC433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710479896;
	bh=NcUs7lOZRPWqho7vXzjfzcNU4bmWoevqEjMhhqovF1I=;
	h=To:Subject:From:Date:From;
	b=CMX88YCmqECH1UCBbyaKz0TkD5BYZ+YzkWzJHhmzoFhJf2f+vx2mkQWgIsfC15F+L
	 uybEMziuPUuP5WNPlFFfroQ6DPLs8LOyETTl0s6tweYSok8rkGMkSo0Zi5Tpg6IeNG
	 1Y1kLhPb4Bm1XFj0Qf5EA+hjQLd7IM3/MDly6+cJuc9wS2BR4N8UlEaCRKZn6IZPO3
	 CfKbPfdXDoxuqlJ9rXe5kV3IffbOTwaq34JYJrl3+2QduH7lHdfHi1mTqwhxfDvYe2
	 9jB/u2QJLkVrppL3GAePNLc50iEHnwrYwufU4dF37UaiODmY/w3I07xj0Y3S5/PYhM
	 KEFY0lsd2L/tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608A9C54E58
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171047989638.19551.7765062366229387126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a33b8703965f399342efaf8e0df09922e37f9c43b33776e0065e8045f9ab2a9
Date: Fri, 15 Mar 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710479896
