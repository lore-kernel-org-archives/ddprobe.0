Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE7F2C0F79
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771269894; cv=none; b=E5pkweWWgOYavqnygUz1aeKbHX/S2odjLFilFtMaW2+hZHfa6SNtgoQwD65t0G6JPBCvKJIzOSA4VX7TGOhVboQElsxK1b3KpVc/mw//wcu0WwhP08CxVpXGXS5KJC6mttniVMEWLpZ4BJXSabvdoA/FcMzo4dshW659KpxC3Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771269894; c=relaxed/simple;
	bh=AFwteoTM8fZSp6TY4O/VtYkE8gJ5P55qX8j2EIYUQWk=;
	h=To:Subject:From:Message-Id:Date; b=rXLyXR08QODducLl8nQDc3+5JYjNbDLlGmgeMAfw16oKng/hM2iaUkgrWm/cKGCEdL5PnOtrDQegxbGy9NV+4MkmfHKWz0KnTWs4yWpOUyUrEQlWgQvhGl9IujLAdy3cyvBArzbdDA7NALvp9x0DYU7f9n/cUynF/ZNqiIEl0RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERDc4p9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERDc4p9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65C5C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771269893;
	bh=AFwteoTM8fZSp6TY4O/VtYkE8gJ5P55qX8j2EIYUQWk=;
	h=To:Subject:From:Date:From;
	b=ERDc4p9uErq5FzJgsI41IOChOxlLIWusdyrbB5Tsabll70xuKg91ld3qkaO3qUbiO
	 PNV928W49uW3HzNDgjklbD21Qmohh+T1gjEUgnG2nn3QdreOrekrr+bcmKl5kOkdIj
	 xoN7ron0zKo1h9k+6WXEQcWSm28PSL5bjYlCOFeTDFi5GLf4j5KLDPbf2/rQ2lIU9M
	 UJi0mdT5F1kJGGALW2/XI/ow7kAmEfueJ/Nn4ZuPxCAie8VeRIFDdbQTuPPoelkV8u
	 UplWha0ee+NKaeSkE1wL9D/fU/KkwwGhgjY1RCLNZCumXkPwG1yvqtYb6Xwz6BqbsG
	 Z9IF2+13yTCqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D32E83824
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126989358.24669.9407766223736453699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9deba047da25107c94c292694ca3791ba0162ec262b22a5dce1fd7d2e92c0451
Date: Mon, 16 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771269893
