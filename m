Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219B316F8E9
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754707794; cv=none; b=Pb7m2T6tltZb7DfmDNMWwAiEUE7NeqYtS3wPRjfY6ANjwJMBcx2eaye1nm+zUotIcmabChq7Xc5C1tRaYJylJEK9WHYeKw1UEISw7GOs6Elh721JTAPshAWm3AVhGfDQmQt8TNjgMHoLdtiHvUG98WA3x8OkGt5CYIvZAaly25o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754707794; c=relaxed/simple;
	bh=xOpzHxDMLLShzNVs2D2Rx/uRb2TCxH6G/sCYsH+GRZk=;
	h=To:Subject:From:Message-Id:Date; b=tEF25Dvk//3BN6wJ9aFXGi7r3G7yuyvjzMxmjsd4ostOxxzH1VE/Ui+fvOhfxcwf0ynYv2vwhMJHrP1ZAQVm/bLzFsyPOSUX8WAvStW5IAVy83O3NsaXH/bQAOLxUJsyYOcibUV8li1D2IjVWkiKeUZ591fnrHdHAQucJ39Kty4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCUCBqD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCUCBqD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B6AC4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754707793;
	bh=xOpzHxDMLLShzNVs2D2Rx/uRb2TCxH6G/sCYsH+GRZk=;
	h=To:Subject:From:Date:From;
	b=sCUCBqD6fk3oHerXWuUWoSzsjqgr44H4kXYjDDXlJU+QLORNLCe4nEBpIQ4PWE/0V
	 GbL2+2z3TFPSmjGWgr/ziie2jjDIdGIQUp4TUPceLc64NU5A2HvncICjAOIEWuXK97
	 b2vCGBl1HhOO9bKkc9tTRQwHSDtLLjgURFAaHPCbZr2wpgzUngH9GErH+TC4aw2Fn9
	 kn45sLsMgwgzX+y+/NNw0IIlCkDXe4XjhjFD1z7HIAnNuW7qNkuwlLI4oQhEfK/UwM
	 M3rDqkQb3MIzL9CviSMX0i1Q0M6nB0bxk9Ipg8vEAD4RwVYjNnlktxnhS0x2W+huPg
	 Bv+HE4sWth48A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE41C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470779357.12401.10851790241155061422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732beec4b9629e58a3d76f92c6aba821a3ccbff7675b282e31bd6a783147d092
Date: Sat, 09 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754707793
