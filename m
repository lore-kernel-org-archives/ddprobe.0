Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3681123EAAD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782590314; cv=none; b=VSzfWTG6bR4mGRnHhEvh/OXDdxYy56v1qaw8eg3VbRXT2cBbgTD7gaJLVXNNtI9fIKqvU7us+Oox1n2NuRWBVB6ZcJakIEYkyghUdsl0jpZxDHSLWrStWXe+w2ckDh+5EyjboyyEIMg+bvzi8OVNvpKXa5M4as5DoGdPiBihm/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782590314; c=relaxed/simple;
	bh=ZqJTQpbIUKjgNlXKnX0UZ8+9bNBOhBTMhLdLXtUNn3E=;
	h=To:Subject:From:Message-Id:Date; b=dnNcW8FNI62j3kP2cim05i55SOqW+Ou0YlWWryXPJQHvdi0KsYf2C5wqEvZPfC+MVFOqaV1di8izDlWsVfpHsUx5x5OlohiJyNI1ZU3Xm74VJtzEmSv+7QA2PRQ3RBWfCsNjFxksFUZRI93H0sE8WZqIoO57cvVaqyjGtLSTedY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmBs7WBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmBs7WBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C799CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782590313;
	bh=ZqJTQpbIUKjgNlXKnX0UZ8+9bNBOhBTMhLdLXtUNn3E=;
	h=To:Subject:From:Date:From;
	b=pmBs7WBcZyAwgC6yosCLF5zXuqxqzbE92kJKhCOmhBDaT1OkzvRnvtDxJKgtwbDy0
	 PouyBQL0hhto/FoOxu0Oi3kXml4OJzrd/SU3Obv/Km2+s5eB0v6p9tff03cTvN/M23
	 9B2Nr21i7Kn+mBuqPFvc5CM4WJwb7b2xanqhW7/jONVmM4J3b+7RnD41W4zO/tqIOE
	 WNWOivGeNth3POaZZcYnF1W6za7p3tA/IvMpwxzHhLxvGtxeR0d8rt8VNuIRDlpLbN
	 Q+FCUd0ZMCgkg3vnkPhMBGIpA3LpPlAf3OdqgWgbk6kCafa6Y3m4SlHi5M5+QDV/rj
	 RVOR9SWMQEkGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2C5C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259031368.16767.18030253193111952379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000f85c1222f238f13bfbb8acff78aeed7ebd9084aea86efacd8740322805a89
Date: Sat, 27 Jun 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782590313
