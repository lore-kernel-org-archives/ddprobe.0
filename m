Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F64371885
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789973434; cv=none; b=AFQcejDaA069Lm368pbIlVHXKf/TYcHppa/gTbKPeaPmfPAWtJ2Av2munVyo9IQriebQm+zXsYCEO5Cem35pdRKvWM8xIGFV8SIRAOjylU7aNf8g1av46trtJQtGLlEy7E8GKMWSanMAll06v5KrMoHkXDuyP8kACoP51izcPds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789973434; c=relaxed/simple;
	bh=1JFqPOApWkpPIhOTQDNdxn5zlCmC75T0yreN5gKJT1g=;
	h=To:Subject:From:Message-Id:Date; b=Woemx9zLkHR4QFmieqcY9jkIDPltLOLnAZBWqmcvQAsJlR5mDl41Xi7rEhyejqE3xWtkeBG5nTookE8T/9uryWuEPSwfj53oVgq/PTrbVIB0jT0JBJpJbn799IZTQfW5bPLybYn6RiGgXa00+8bxa/BTd4V3hkOiKeH0cNAMOrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgK8tWcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgK8tWcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF3EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789973433;
	bh=1JFqPOApWkpPIhOTQDNdxn5zlCmC75T0yreN5gKJT1g=;
	h=To:Subject:From:Date:From;
	b=LgK8tWcXeKw81RrlDvmdgWL857z6gmTPEU7bDp+BMkOtwH8kJ92irluyJQA7OtklA
	 8vn8KBWLBRB52AHTsxniizeFAJVu8FyO5YDqzWdEG0czpLUp+bFMTW/iKTr4Aog57J
	 JhXlhaBa/IOddAWpf7Z+8yh6DInk3HxMopMDm9EFrI8bUxZU6MN5UJM+pX1yMU83Tv
	 FeUsNz7RhOO3O0KDSCytyBa5F2do9Uv2SmNLs9gg5oQVuZ429F0mOJDcP+F4cE8o6z
	 b4NMIEadje5/wFph/mDpv/z+GvM4oK9Jm+QzOsCczEUX0vuIRONM03z0eyHtLQXekg
	 giULK+NOr2L1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA10C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997343369.6552.4240027446520733640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78897117aa458cac70234842cce0aaba7c6180a3ff95a084486fdb4705cc323c
Date: Mon, 21 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789973433
