Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B32EEADC
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732397754; cv=none; b=Voj4wRKUkoxpU9PWuzn75bQ3eBX1w8s3ap/eFJPDOWrjw8q0kB5IiHO1m7D1GXBYrYcab5tVhU1hTN7EWG9d+J1AEDFkbLovTvUFOrlABtMID+FfRuEK60ojwGWm+c0aXvvWJfxBmJ9cWhs+2aif8W3eww226wV0lKMoWRRGwQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732397754; c=relaxed/simple;
	bh=oc7YW5r2Z42z/ZzA9ZyCdohzZqqur0NeR60QpGvicwY=;
	h=To:Subject:From:Message-Id:Date; b=Mhx5+Kt3QpmDq2kLAUWmcRLXuh5xYfB7LOCWJW8BpG55UzsK2U1OUxB+l3PE99Pl36JzevSTyNwhbsO6fQId+2ThlHvbDdCd3TIac/JFYa9HJBalJx7o2/Dd9RwmDS7cSsmUYfrNG6rpstKqKIeoanL50GSNb3aJ2YKyST4f0q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+Ty7+2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+Ty7+2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0901C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732397753;
	bh=oc7YW5r2Z42z/ZzA9ZyCdohzZqqur0NeR60QpGvicwY=;
	h=To:Subject:From:Date:From;
	b=Z+Ty7+2+7lRU9F4j5fXkj7nhsFuah3MwYcMz0wSuYZ3FtydOBwgFwbQUq9CC3oR7x
	 zvYux1irXgmkMtVx7MhgAD1GdAV/OdV6NEwzZenllMbmrbNOktOroISXEdZEwtU/pu
	 Tfhc5b74/mpWiJc4cLBkpqg1Tl1itqCuwkIrA/CsQcAALhIJWBcCofg1F/UdvRg3cG
	 uOAdSaYADUWKT505BNbQjdVow0XhbMjYpd4IFZ+K7h/weWM3p+bT3KbBTzz3R8G25c
	 aQ6fknRunBsBlETMjKMQxfSDgeahxYgBhR8D4WkUGv2JXAvSBqjsgf8LUE7FiSioMO
	 ByMvVA9n89xig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1C7E66885
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173239775362.16497.1603280636582330281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c75b63630f132e9eae63847c4c3dd2ce17592c869df2a78068755b1ebb31da
Date: Sat, 23 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732397753
