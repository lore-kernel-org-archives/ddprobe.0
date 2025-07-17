Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250BB1C8611
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752716394; cv=none; b=Yn7C8akQ3oFvXm+Cg4gUKCH79UIvvjMwY0DG73R8w2UGCaHXHzxPqWjaQxTI9pJrj3G/p5LHFiTVpQY2hMCvpPbRtOfsC43h9iga45bDpnaP+OxJLhHwbjtkAvnN7v5btpMyLBH/Q5DVWcj8kq7Zlu9mnOWYBR96z95B58UcM9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752716394; c=relaxed/simple;
	bh=cGSO7dVDCnhP5ASY1EtlrpMrCnxPdQPG9VsNEnsorFg=;
	h=To:Subject:From:Message-Id:Date; b=p9PbHB1DDAYa+SxoQ+EQ0OJBAPegCtq8wnUEENWDOQFSpLLlwrJocV2mTmrzoRo8E23jeJpN5xcNXFdbzdgZ0gNaAHWtHxe+hJZaEZ77tnr4XgGhDqYdX6pf63RRYo1oBDnVUpy0ytUp+5RTb76aLzJU4CSQfLSiwVTn/ymLa4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCJ4uWvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCJ4uWvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE68C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752716393;
	bh=cGSO7dVDCnhP5ASY1EtlrpMrCnxPdQPG9VsNEnsorFg=;
	h=To:Subject:From:Date:From;
	b=ZCJ4uWvAKTIxmMAl7V9ESiyK9YJ2yAnfW/0FnaXShhAGeWG3x5gdEWJHSI48uFZk0
	 6TBf+3g8v5YRn+lItaOYz+2/9B7BCAdlIBPoOmEnznJhG7Y+24tGPzYHc82lXccWbx
	 hpIinJ9oGrwFZoYM3bGDORx4aQY5xWwZ6Jzt37ftpSMS7Q7cLb4XkdmKbkXtkrLDBP
	 oegsJTHEsMzw3XA2TG0AyHP5CplyUVfGMbAJNRhGV+WiwTeIaP/r3vB4SQEUYxDF7s
	 fNFNZdBHYPYjC2wuS5RrEuybvOC3rmIiZoUT4+e2JjJwF0rGkSCtuXmvQNf0+Qm6i7
	 TxaY2FDSu82mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5AAC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271639357.27353.12521751461119761405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1879bf7442040b56891e8d2de4ea853ed6e731971a4c88863c6f5621141c9375
Date: Thu, 17 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752716393
