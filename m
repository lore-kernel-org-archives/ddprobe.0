Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0637A533598
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788869435; cv=none; b=YMU26c0l3VcBncwPU7iD2qwu1xtuu/GrfB+BwS96z1EavDxRLk0IJsMgMcFv3loq6JaZ+Xr42dNoJKdLazoI5H6k4vneMWAy9n8G4LhewIPY4mGNCDp27fAbhtNLqG7LThwNkGkn3q5yChKLl2t2laXyQH3KG6A9g1iEYFpjaMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788869435; c=relaxed/simple;
	bh=99am0K4Cn8CTkuOCeYOKj2tn9Cubhm46rRtRfus3/jg=;
	h=To:Subject:From:Message-Id:Date; b=AQbjoh7qIsh1HeJ+c94UkiP/RLEvQqJAfXxZGGWS+akf67Wv/wbUG/BYAXKwVlm8u6GUue/ddWudsIKWeil8tfkwCCLYIbcEcptzQpSGZK/krBPh30ObUGn9+U24KVnMRCfc3XriTrAr00bYY/I9dUpHdTKWYxIU0kaF4DwuhwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hj8WmZOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hj8WmZOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85AEC2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788869433;
	bh=99am0K4Cn8CTkuOCeYOKj2tn9Cubhm46rRtRfus3/jg=;
	h=To:Subject:From:Date:From;
	b=hj8WmZOePVg6TvkDNBDrHteBLTW3vdowprccxxhQtiqMMp4G4HfPBy5RnGFXQQDwk
	 Op9UUsyEBWeBNk07OpS5n7RGnJ9NtOnjFH9MQduq94/yDA4IA4+VYY2C+btYOAAfcd
	 NMHWIHWMzdtyKCOcQHiQqpP9XlVjOSB7yGCYoAbTYGh7LHnDWa+tzoZZmyyCHEZs/l
	 B/qo/iYyetiWswGQ+AGGpMwDqxkcCh/nXkRXHhjKuMjDU/ghyXVa2kUyQt8aypD6WF
	 3hLGZlorJIfnDvWjEfCfsXOCx66mLpOAA2oFVHBLbXym0cqvs3O6cgOZndfe/yjd5A
	 hgi94MIhqlM5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39D4C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886943371.32181.8018690949985662080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73365e31cf43fc9425717e93db26dd422b59165e171daa60f2b1b6a50c92cf6f
Date: Tue, 08 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788869433
