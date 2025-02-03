Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4608B2036E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738581954; cv=none; b=Xf7/pSuqEnjACtIOOpf/jlX7TFFgYNRouqr9UTpfaf8uVH9bCLf9fkwoT5ZaH8rjTqlIwl8lCB5Hj8BNGi/RfOJXoiNU/tDchIPl0EOdg/DwSU1Ld5xmxTfd8vVf5McxXPN+qHz1WRnECk3TTqkmnIpv7lj35FGTZeXcRBj7y4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738581954; c=relaxed/simple;
	bh=DAhPHH5ABbDTPrYBxKThTB+4JJbWQN/3W7qCL3wl3C0=;
	h=To:Subject:From:Message-Id:Date; b=swKYfhUv6ATo8N1t6AnDN2tJtYM4/IzF8xMySu+IUjOGJcBtw7awZq41Fh3EfZn4gIuX8pWUcMJEnSh/uJrGQDeqc5UCDGP7voZORxYJ3stKO9ithXZyRHqnoRrj9xX3d1Goy8XA0MfL3taS/M6TrsN960nvykaYySy6E48qTsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7GWMx21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7GWMx21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB718C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738581953;
	bh=DAhPHH5ABbDTPrYBxKThTB+4JJbWQN/3W7qCL3wl3C0=;
	h=To:Subject:From:Date:From;
	b=J7GWMx21SgWRBkPx6GtXe5q4vvAjIddGtdiDVEEr67tVQ2hoPB8N5YOAd+txqKFhR
	 6ue06ynDbo2pmi96+/EgnaOfvcsT9dEu8/BQBeYU0x5yrARirvcfc3FR9JtS11LGDF
	 XBpNLNGCKhOKYX/gDgHIULyhOYgN86oN585LGQRR/L0cBlilMadrgr39DBAsbU1Dq6
	 DiQg2qe89WpYmFm6ItwwConmR/stYQFhAqEzjRG16e9ZkNNSQBzISiTrErm33c1M4I
	 aMuGnPGFCLXo+D2KL/uqJrEpkKcpYJirf3FaQjES80FMrN1yNvPn4Ti/JEx/h3ynH/
	 WqpSLuSB/RBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E3FC02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858195366.14194.12005320512616785244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54af49d72e3ab3554f6f589c4c77491a587e0ba65705da1e00c89a312add0bbf
Date: Mon, 03 Feb 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738581953
