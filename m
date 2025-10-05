Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0C23BB5A
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759646994; cv=none; b=ge1GL5YHe8HQ21AdsgFKC5oJbAlQtZllq5FfqeV57n7ACboZRj3ikFD8QXzY9hIgjvQ1AjKu+rEJKEhyYVTRAlvDF81kUaZ6y/yWBwiR1ogH3uVNY7WvTmPDDUdyhA4vhSv5eGrDSyi4e9pb6vJUYvydOJ0ab8r0hho/Idm5+o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759646994; c=relaxed/simple;
	bh=FSeZuQa5Vf7vWqGQQYHH0ZR5KYbx5LafYfQIF5ISlzs=;
	h=To:Subject:From:Message-Id:Date; b=RZF1NP/YsWfedHPwzDoP3zVrT/eje/TEcAXg8l+lQ5vZuMnS70mtNxn+QBkAs/IOV7Iev/s7UXukdrJ3UD6vMm+W/GnDtUbGKgOTAS6QY8U8v/K1Q2Ez67Ca7X9PR/MxaPm1CZ9/kvQKWn9H3PwgcCgJC7SiFJE3oCZgYM6sCKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYlLSuqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYlLSuqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C65C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759646993;
	bh=FSeZuQa5Vf7vWqGQQYHH0ZR5KYbx5LafYfQIF5ISlzs=;
	h=To:Subject:From:Date:From;
	b=SYlLSuqtFpZU1ON2YuKVAh0IMk6XCBgK8l6nB5C116oZxzGqfAJX5l04CIxwWIsAy
	 Y2GgYcn3/SmhATOw8IlYGS8z/bjWtY2xfAEjYxR5ZJtb2ERkr5+IvyK62jml4HSxQW
	 kWU33d+eWtQg60Vjii6yl5IAMmV9RKnzv2BxP8NyvjekzroHYwf3yztg2rA2QvhwzW
	 g/quGQGDtwzOcpST/bJUqjxFx7LjQlb5grCuqdXQLuQrAZdNWR3XKxrQOa20ycIfeg
	 nnOgDXbS3t8lEGzRKGU9U4g4/xLegT95I1AlsukmtkK5AirMbPqsKpQZpXbk8LO5Cl
	 WCCWG4EhsGmcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952ADCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964699357.20256.6981678753537803635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6493b38d10030b8b0da7e6055545f8220b61c619452840e4f5bfbfe8e9fae6f
Date: Sun, 05 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759646993
