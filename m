Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4C81B4121
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746545394; cv=none; b=j5Xak5UwLDmFb/jEii2B2hmLpJnPdmuLEJK51iTXSLblKM5MxCkiXlLf8+v7HHfGD98BZrV20vbE7OcTgnoODAmI5ze5EXPqMQ9pKYO+blJeOgZPQA2WvTBsem8pLFHqOo+cgK+E3FeEVUTqZXrLaRFH9Q3FoZ7l7NAVVtEdVfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746545394; c=relaxed/simple;
	bh=e3efjPcdyqW8XZz6SaQBeGNXWSm7G7zFVTLd/LqI+zc=;
	h=To:Subject:From:Message-Id:Date; b=i1qBzB/amaIRYLsMWy1VOFDEHF1xILsR4W9lz4WEeTMjCr8SLbwuu+9xHFP8pgP5ExcRau/92uNiQHa9dFUC0Q5ldK9IyNRzQx9jP362E41eJDybsV82+xbjCK2VfFIOK+JNzhAKemdt3Cd7hyqW7l7ahsGAa1GRZDlesrzFCfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBzt1lpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBzt1lpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE49C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746545393;
	bh=e3efjPcdyqW8XZz6SaQBeGNXWSm7G7zFVTLd/LqI+zc=;
	h=To:Subject:From:Date:From;
	b=uBzt1lpwvtwTl961/dRo8+p021/1vvoy/ZfAM/31QqH8dOGTotHg+71qwHURF4iLq
	 0t8oLpFtljJEVf6ePs99bOFAAJOeqJGgnNNz4kHPv9LdHymPhyqmfle3woK97301ZI
	 7HzDXF0LlZyxzv9tulUTqbHtdJguOgeu8ZRi6MnAd7mPa3RLK/8As3m9wW8igFNumq
	 4A3irx3yL2YJE52UuqjjQJj6K/gvXY/jvm9TqpIQxmP8Xw9tkr49WyuiorCmfWrwnh
	 N5xzU97Ze2j/M/9W73dJ64nUK/aUcKzBFrOte9KkBz3JifEk9l3hBDOG1lSw0nkdDD
	 rkxeEvUESdfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E04CC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654539357.5055.5627711722071232130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fddb99af5adba8e8606585db2adb2f956f4d84f7093f43c1cb087037a181914f
Date: Tue, 06 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746545393
