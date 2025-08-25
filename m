Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF1313AA2D
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756087794; cv=none; b=JKirsAm8z1PzFwtcmbbbKbTnEb3MXYhhRWSThWZb4mA4S/vZ24bg9s3NM2JkT9FVLfKzncbibrkQEFsqSbSQTGudXk9tpa6M1pncdqqgfDHtfgfEc2Y8hEMcCtZmsxuStliw/WZbajcFFY+bYhU0Q/fiMMdq+MA6EoZGG54ohBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756087794; c=relaxed/simple;
	bh=Sq5JSYrJVlJeNSL1mfwSCfXgODzibPBCiPpUWvEL5wI=;
	h=To:Subject:From:Message-Id:Date; b=i334IzpjSvNs/W70tSeVQ+x/8nzpsNmRKAH1j1z6EbGNvfquq6LznCKm1GiWpG74E2sQvHjdwHrRB/oq6ZyX1iUVuF9DpmSywqLgz4QviZMwE5kmk05dt2I4qB/KbIGPsUJ0Pf5NZKiXNot28MKfX3zp4MfIjr4kusrd0qWq2XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZak32hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZak32hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE4FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756087793;
	bh=Sq5JSYrJVlJeNSL1mfwSCfXgODzibPBCiPpUWvEL5wI=;
	h=To:Subject:From:Date:From;
	b=iZak32hcoOEWHl1ndGbbj/TIVjo8kWktPZ3d0w1yofsq/a8S+3za/WT/TsTSztxDP
	 OaU9kcFHgM8hbszfOWQJEs1xHyWMsU1AYKdfS/7nKBE5Ejp8QA0aqQJIkVADmLjpol
	 lLSxDBaLn4m4v9lVOjjjIUQ+lPf3TSvy19Tc/t+8Xn8lifKdpIF9HtI9PFOmgNyRxr
	 L04X78MufRsMwBlu1azkarukwyvWv2UJEMp+JwRsuzObHsDCW2hJNiEr1HA1tTizCz
	 5gVujgSt01JIiE6ChwO79R+mvZv1BrB2PdFA+cd/1sbTDFnabW1A+AARsf+0ML7JnR
	 V35TepMv+ILNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA70CA0EFF
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608779357.28879.12530406005490216692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285534be708f5f18c8e1f4bf435c0786a2f2dea94b686461a4129968114dd6be
Date: Mon, 25 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756087793
