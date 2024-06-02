Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689531EB27
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717337123; cv=none; b=h9dAnOwRENXkNcA+KznewpBJfLfszXpNkRMYVw5EkPu161PkCRd7iwxhaEqY4QceYQ0cJOi4HHugKWb7nbiHFe7QqQgZ6VfvezW0KIcsMbC55bzdQgZ8e3xGqph3/ROZW8L2dyA+g0fLeytoqQqNOuN6SLKIoTOuGGk7cAoACUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717337123; c=relaxed/simple;
	bh=Z/ZjC9vq1NjJEIaqYMYmK6s1mgZwSyhKxSQbTcbzwqA=;
	h=To:Subject:From:Message-Id:Date; b=h/Hzxrm06s14sKHQAE+L42yjjGlNklY9kNfabKUgnTTNbpxHLQ/Jmw/qo9H5XHa7gt14Od6Km3Py9m5YKi8rlU3bwwKbHD8V78aRSlBEl+/nX+Fk3O87P4oapJ7NQkoHaUOY095IbciIUvvoetKikTk3uRp5S70PfZSnZ3mIMNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL0wqhJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL0wqhJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAC6C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717337122;
	bh=Z/ZjC9vq1NjJEIaqYMYmK6s1mgZwSyhKxSQbTcbzwqA=;
	h=To:Subject:From:Date:From;
	b=XL0wqhJE68Qg3KlZZw+wbdPcugid4Ox9hE6tRpnwqM8yuXRP3K5MwqFOubu5Qshau
	 whgqdeHcq3tGKSAO8zwNPAKIKhWvkXRFSoVhx0Q15z1rKpjKREOopZTetfXHyzmT9X
	 c4wFeQIu8x/qqCrFEP0hHrlCdo+cWA3B78t61UzDCkQRIreI71CeH/Mnem1T/NPb5F
	 q/jpfNLcwbwdpYAxpM83EzWDRlmFR3lziXjhLvPQzD9JLNi2Cia9Y1vrOfEgImU0v5
	 OqjaqSF1w6OW2Z85k7f5WQG3S4fN84unHecdUvlHiH1QECOg3GNRV/SiKF1pKHZS8A
	 WhFi4z22inzXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C137BC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733712277.24867.6855010464040271283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf7e1ad7e1a72fee367a8687aad2bbf172140d1236c9a88fdef85632eb270be
Date: Sun, 02 Jun 2024 14:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717337122
