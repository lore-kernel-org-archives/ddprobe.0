Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7BE15D1
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751819994; cv=none; b=MBs+S+afxKNajOHAh7Ol6A8gqNkBvsTxNZcfw1O1Eeueb2osBSqmK9tIf/5v4xXKZMhVrvvvIJuzoVEogNalCCBrLXOsZZZpQ3u5SdxFQlOXV2DDPBJ8wBf1gsmptcW2JQR6vSxgJRaC+PBmD4yeNFFw6F2ORBhWhHpurRm+UC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751819994; c=relaxed/simple;
	bh=OxBdzctc4uwkHtTdOwYbB1YF6K4ZlxfpWjfP8JoQt3E=;
	h=To:Subject:From:Message-Id:Date; b=Sbb+8f4QpUNryvaxk7MyZnb6kml7OOlfqniojPASbq/r/idzRAwvrGMEf5QOD9YUwGW27CuQ0uoM+IFEYYgoDrJqiLMU8c0noYZh0NN3rISPX5eqgcxinXyudOYeKpN/+QoBbs9utboPooNiAVP5/kUJm1grdHVRxqGrQHxjdqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOUi1y9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOUi1y9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F00C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751819993;
	bh=OxBdzctc4uwkHtTdOwYbB1YF6K4ZlxfpWjfP8JoQt3E=;
	h=To:Subject:From:Date:From;
	b=kOUi1y9r8biiIQvJ1co9U9UYEfZoP+aWYOE+C7L/RRq1BgN31tI6IEmmRpnkhhwyO
	 bG5n81jI/4hx5e/4O9cZ7VekkjC42SjOv65qGu5LptxQJU8W3+AJ8MHR1Z+o1qWsik
	 qUpVRLyPe/hOKkXozj8JQcGbJSczxzSFLe0WxqWt8uWwxTzDAMd5TK9G/kjuA86cKf
	 uQ7JV+/wkQ0ivUPO3PehA/X3UyxW6OAsZ3kl2wwW0jvzVOLps54tn+zdOM+l2Avaat
	 swY3sWoe85Qsw170la6o+2FUnxOGVd+iqaEdo2b00fdtAMnsU/wMYl8Y0zDtEme1hr
	 0XZ1MrxPCUKoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9147CC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181999357.17310.4781662348878094188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43efa257f21c12971fa6b020cd91466d58e911e2e11da84ec203aba0dfa1a5a
Date: Sun, 06 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751819993
