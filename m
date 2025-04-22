Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319E81EEA47
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745323194; cv=none; b=LJSPwKlHLBeI9/KhYugLsK7dedCv2qWaJ5TzP4Wf3paCnpq8r+KdlJ003qQ2pfmr5LEcijGsMsRS4fxt/jIBHVzutatU67iWdyGTvUFbxi16NWRgwkuI/kWiZJEylbiMyEzoel2Y3AcZjaFiE0jNOA4QmeFG+M37e1Hz+Wcu5GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745323194; c=relaxed/simple;
	bh=cjLsrpUXVKnIezMgp7y23+sV35BaKmku7fjrXtJOa6Q=;
	h=To:Subject:From:Message-Id:Date; b=qH11VSfT1vbculdi/B6BlZ5j0xX60J702VDEJPurqSibuGaUn7Ocn7U/KgbX6KecmvPrikcZjhD+weEl3ZxR5oiFZoLwPVR140ffFuYrP36DxNAHLrPJLQgc2c8AB7gm4RPXkt/IVqwE51iGe2DK+LUFWz7Bo1USdy+G0duntwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JA2StByH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JA2StByH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F0C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745323193;
	bh=cjLsrpUXVKnIezMgp7y23+sV35BaKmku7fjrXtJOa6Q=;
	h=To:Subject:From:Date:From;
	b=JA2StByH4uLraR+TKQWhcVDMon5kwwhpLsC3CtU7uSXx7DQy8uotv406zIPeTB0qw
	 V80kuOOhgsCfGkWtPK4qJEG1/VGkn6ZueS7a0nzfIkb0mv+hqvx0DS/4Ml+oBJW+AJ
	 PL7wwqQxNGvZqFqx06HzmmorzcNypPEOMad7syPERwyFJtcfSNfghtFb5+j75N68qf
	 KtjbnvvIMbL6Yz14gz4Ix/4jm4wki127OWylIl1v5bAzwuIKH0MMO+e5QRR2onOnwr
	 rCqjIaILwhtOnbZ0Ad6OLwQemG18iBkwWLTBK13dAHBGcOOsFoogHqsdJ0L8BouflF
	 sv9AhcRsTHjCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B5C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532319358.25537.11867739576089230099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd415a1fd53b1e2ac94f46131d93af20985c7bd656358de700e0183046f5695
Date: Tue, 22 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745323193
