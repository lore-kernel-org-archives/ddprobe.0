Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691283DA7EC
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779790354; cv=none; b=fCh0XsmmxPh21FoojQOmfaUE1o/50d98zTjZgKi06oIjEH4SXKZD7bOghONEu4xH8+dp7HyVtR+EvOiZdIq5xpqjZBktPWfDfC8UwN5RpUmf2C0SU3hNlLdVS3+yocdwxbTyR80PQIi4LH9xoKy3RrKWg/M3TXWVa0c6uLA94ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779790354; c=relaxed/simple;
	bh=PLylcTBhXPqCtKmaa/l2JjEPEL1a6unBaGd1HPz7Tf0=;
	h=To:Subject:From:Message-Id:Date; b=eYL7blWEjQwqioUxcFkn7OmQNzKD5NQUW6wUjYyS1UihRKCBkALwjBSb7bmsbjRNfPTWbwoXDZiRhsrDLC+t5USPMPWCZyYZU3ZVRz+kNzDAwQE0P/sXml5Vt+ijx32HXFlacZstcLnqOBRqepw5sepNRusMAJcRnJRspTFnFkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIgp7gFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIgp7gFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB65C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779790353;
	bh=PLylcTBhXPqCtKmaa/l2JjEPEL1a6unBaGd1HPz7Tf0=;
	h=To:Subject:From:Date:From;
	b=JIgp7gFYG3rpol0/brzhAnnMKuQDzt5K5D5KmijDR8f0GwWSXleDV5LBQjPp5sAFK
	 Qi2VJb5OsxaM1eDRLQ7aXR40Wbno7VPIleezHuwgMt+lDbfpztQrZtmXLacuMiOU3A
	 1g0SwQttBs/TdXUQQfXu8G4VhcI0Lng5Mqds8g8JkQl/7/I+gLIfAZOxrs0uvEqMR2
	 8JhujzkMh2/9pd3mn9WCXlJ8RAsmVe73gct0ab9fxb5ax+nylO+5QXvji05P4xg5Ct
	 hl2TP3t04KgjFIimY4JZ8uFOg/rkMvL5xnzaIe+IY5EuGsKsJHykUddBopfZJVLL+v
	 cBZpYDFFh9Ggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BC3CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979035371.4693.5768497322080801894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef2f95d481483d9e97b9d1c1d0b3d8044100d99a34749c371f19eb1be36aed3
Date: Tue, 26 May 2026 10:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779790353
