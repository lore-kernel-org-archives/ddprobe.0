Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7302550D5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764843774; cv=none; b=qCfBwtbGPVwgkUBwna0+qNNJDmt1233EvDsMtK+XVeyXuogzxVhVVJJyEnIwA1fYBCMyfEMDaWao/e9+uSWUiHKvVCtsy/4E3PfhGKmaL29DhXQgJ2UZvZH3pWesx4xxTyOVRQo3mbdN6ZLnZfukmnaVDYATP5ZWzHc5PHfe0cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764843774; c=relaxed/simple;
	bh=RuSUE84n7JnowYRPb8mQ5cTlRFcYksl8BwOHytk4niQ=;
	h=To:Subject:From:Message-Id:Date; b=ecODDq6f3wfASZwsg/0YrC9zgtbHf9/f5q60fAJuU68E49UJcOhNM2FfLmPGHpnV7LhzsHeC03NNAcLl53QzJEpXZxmsjAkaMDIFXx+cu8shDSaYDGqQmxYgMHQqHeCeIaPpcei/Gx2FXYsfzEkEF5FOGcagmCwWCVSodFjhum8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwGVKswp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwGVKswp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F35C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764843773;
	bh=RuSUE84n7JnowYRPb8mQ5cTlRFcYksl8BwOHytk4niQ=;
	h=To:Subject:From:Date:From;
	b=qwGVKswph4vrBU67VBSOQA9tQaQp7C0abc0jh8YfxcLu5UkS8PcacisQ420PmeLgL
	 q7DLUXmtCSbhcQncVI0uQNUkYsnXy0IU8MDPai0Xbcl02/JSA9V3CDtaqEoYJNznwu
	 F1wx7q2AwffXfFWV2QXLwamZC3/RO5csny07diBds2EAxN4x2UASxkJ6GJ1bSFf30o
	 O2H0jta9eOdxoQHKi7ndb/AMnfGOt8oN1mfdYAf/qyerKhxHStjhL3bVqjJO6Qp7CA
	 UibFhuroLpdXGGAhir22DKuEgFi54nLTKB6nfMIX7a/1qzVlNOWrvudbBFl/nP+g4f
	 EWFzeHe6B/QXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9809ED1CDCA
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484377360.3166.17440613622756257573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bc02eb0f3a913a34d19aeb852923ebbc354d5b345ab371cc0ff47d194cb4bd
Date: Thu, 04 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764843773
