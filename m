Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F44346E55
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788849034; cv=none; b=iU29ez0AqRLShJk1OYFhiAZSDapdkTCcMJGVmcDIzejR/HD7mkik2yMu9KR0HECFytFUOGOvuFN0vnvR4/vXXgusU14Dnhpv9DqJlgEmhBJr34keskQo7QcJKeR5K0flAsgsWLbpwEBDMk7I9Gbixb0hf4r7RBN8nykdZrBC0vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788849034; c=relaxed/simple;
	bh=YcSkT6hbCFWj6zR3zONV5x8HjOBjMs5S+s65bBjN5iM=;
	h=To:Subject:From:Message-Id:Date; b=VK9/o3NyaOt+pRKk3RGN+ZciKnhqiUDb3Ux3abFHBFYgeNw1NWJgZ0Fy7YtDJE8fVUEK2XV3+/25QlwUF+rNgynuXG70vBB/qACCKd0nxxK7InUcHXDI7CYZxXQpnLOpHimkkm0n68oXSYWS4bJuhTfN59pSikg9F+Xl/pVcVs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdJ1Wgtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdJ1Wgtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7761C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788849033;
	bh=YcSkT6hbCFWj6zR3zONV5x8HjOBjMs5S+s65bBjN5iM=;
	h=To:Subject:From:Date:From;
	b=gdJ1WgtxJJtJxbEC8n52kBQRRyAK6KrmAvGpscW3StXE6FRK154i5AYDY0UhGEIgW
	 R4vWfcrcXe8VDdd5h7yfxjs64hiJypimLR/L2+0V6znb6uNOIqdlKC7V5/g3vX3Em6
	 Rzmv1MxePmwKmmFs5SCt/68QLK/xUTU6+CuZKD5p0+rfjwFqXRWzoTga8rXJ99M6CA
	 vRZ7MsTL75H2swSFBDYfqmN3ZFj7aicZYQWski9gI75qX4dpO8TSJLC2QZQBvpzr60
	 sS/hMTgtPImtEdBpBC7eYP/BLnF163YD7/askTqebb4zcVhEOc7qKPM1N/XU97Jr2A
	 eAg99AJ0Z3eaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FB7C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884903372.15792.10980685185725438348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bad0c6e6d8e54129b6c3d9cb5e3c3ed8f7c2215cd8eeda57f2ffd13a38fec0
Date: Tue, 08 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788849033
