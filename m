Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D262E06D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770161634; cv=none; b=qLE2+I59v9phHjh7vvIijVch0YdLN4XW7rBB972Ozj69C1pp20C2N/o3gYsVLMlhFtMH6pCf7Ys9IvEP8v5OZrcZ0FuJIwBO3NRjBtqkG+WsLe8IIiaNnRFUw5vo+01ld0R3S4+FKLdGIhkLgjC8szo6Crkx4xvtBkbEWNTlnd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770161634; c=relaxed/simple;
	bh=9nQs93GBDIV4u9rM9mZd7GAFMJ3jxxZhbvlneuQJlxM=;
	h=To:Subject:From:Message-Id:Date; b=J7vjsVXpfwbLxphBXIh5Np76CLsmifp7jhuS8hseC4XfCovJwlzc8RwQp3rb6oRuUeZ/8RkuASbk974o3J5RsnLbH8zKdoHTqpPWnfVpdA85tmxQfuAjU23RkOJ+E30mKnba9PNhdi9AyKctH8pqWCcOVz5FZ+ouQRADVEdxWis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+70fpKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+70fpKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C03C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770161633;
	bh=9nQs93GBDIV4u9rM9mZd7GAFMJ3jxxZhbvlneuQJlxM=;
	h=To:Subject:From:Date:From;
	b=Q+70fpKWmvsKIcbTY7RkmerrFjeMMxkVaxdw7s696wOUQ/YoIscYHm4eGRqHu38EO
	 7cjB+R2dnlnPg2yQlRZ9RgQ50exny5BeKLOYC6sZgsVxJddYSFMdHIpCP3jPYlkAfs
	 lErVDPswMoZfgYq5BYDcw+zaRjL227OR2ttc4aSyXdf0/+UNrwlTmigREta/HDTs/R
	 W0FAXGgJRieu/MBAkakDyLisbMMKLU2Zp0i+kj9oS10dgCQLHekYmpoG7jUs44D6RV
	 +nNJySgRbssmrSvwVV3iJ56M/+Y79tBdRvWsnIf0nS42sq/yKN06KWz0eu4GRzs+C4
	 GkMIpfyW/aoqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12B2E8B37E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016163363.18463.15749465705189150881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff4d0e69f9e3dfea48b4ae69baf7af163520903fd0293096960caf998cfb706
Date: Tue, 03 Feb 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770161633
