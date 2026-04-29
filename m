Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397D5283FD4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777450654; cv=none; b=GPvbLGhG1dwt28B4CRgSQNJRG1d7SlRc6mQC4dlOxF4tZC5t6r8+T1mfq5ARy5wphthLxImgoPx9JfwSAo1QSQCjynqUnntI2kAJW3Bu91dF9GnCcKh/0Klj+ehVgW31xvi4b9HGttkO39slIcX0WuUgjHfMJ8RqVUnhiPs/Ba4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777450654; c=relaxed/simple;
	bh=uq2H1rWmuTV48JxQaZhLyHtfhYb5f8N3C8FuO7qlPyY=;
	h=To:Subject:From:Message-Id:Date; b=UUmqODb94XJZxWfS5gwcMkX/K+V3vukkatx2QH4hF14iLE2OlLhtahhgOw2vgiXtzJpMd2yh7yKpCEZJhPMSFxngfI83MEm1WcqDUN+F+CZ+9SGY4QjMxj50FEYalGMtmYQaiJx5QSJe29dNXdaXbRja7xSuInqZU7kTP7o/QIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL1FG/GU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL1FG/GU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6BAC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777450653;
	bh=uq2H1rWmuTV48JxQaZhLyHtfhYb5f8N3C8FuO7qlPyY=;
	h=To:Subject:From:Date:From;
	b=hL1FG/GU64eqmc/7aXK1TdhR5o8YH9/ji9Qvwdift6SdukFoTVQWcj+M0G0Imf9yb
	 3fdHNmn9MA1/WeIAmf1ZBYVBA+ZyzAwlbIzQtDSYHqsosFBVZ7f3Yy8vf2idRiujb+
	 wnawuZZ0ssqYhKdCYWz8xDEAwB6ljDmHyTKjKIyPDb5TYi/I42M0bH9YJbbL2vFUC2
	 FHiKmSbqoHTf36uHS/Budd8zmW+aJpvcFfgZ+CV0UI+d72E/X0/RKDaO3G7exP6dQH
	 7pxs0i11Bt2J/ppv/odthZjCzcMpZV5uCxpF1BJVAM4jUiZ6vQOfk9DlwgscHBG5U5
	 dOcW5KzKPaesQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC21FFF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745065368.25270.6090063659057741913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab80eb1933c6b1877f8838852bc75edece6278303bbf603d5890ffc31d00d5e5
Date: Wed, 29 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777450653
