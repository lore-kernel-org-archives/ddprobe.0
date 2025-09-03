Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310E92FC887
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756909794; cv=none; b=GExMPJ7tlusZO1lfvhhRU8N78IkUGzLtLYNIEDsjIjmOH8EGFgwRxcrNxJnX1L5zs78vBzPs1lOTIoaNlUVcgHiOmx8g8n3xkI+RCvo5pvJyu4OB7lERkOSB9dGmASnFrJFUOexFa9egWwWfNFrN7poWOoWCHGI5ThAVrneAcNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756909794; c=relaxed/simple;
	bh=9JVyqBWtdCyNNOq6vatC5jJWhQk9xdW5Jv4yEoDSkdY=;
	h=To:Subject:From:Message-Id:Date; b=SAiDZaLMbU9S0XF2wZsM7AeqGIv1N9FfA7hSZYpgKV0RqTMxL0QT5js2ZotSsPkxPH/NjQxYIi1Z53wqC5d9O+hP9uKA/7pwXguOZmeDa7VL6S6MNV890ly3xd8luLrauq/H3suDp7ldw/PmGOzlD0Zf4rbTEpc6jvS7oXR2yUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lS6ee4gZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lS6ee4gZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EF6C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756909793;
	bh=9JVyqBWtdCyNNOq6vatC5jJWhQk9xdW5Jv4yEoDSkdY=;
	h=To:Subject:From:Date:From;
	b=lS6ee4gZ7yP9Qk9Qp5v++kWvd2K0GFWwDDRNu+8qddXfexZuw2tVr8SirTenEA6lH
	 LF+t2zQU2OEsIfR/iZVKEioFlXh2YMmNNRda01d+SeYb7Z7PEbYqe/yyh7qjrsMzIr
	 R1hlyITmgkPBpN2nrdmk1+AuQv0lnibNpN5cmnX7WXzsCW/l0DepVSAa9Su+xxa3R6
	 DA9atPw5JHLnZo+6WvbXgzJbbUTyWDR9qWOk7JDDOK2EhjMA9FfkxUUNBY8IwX2vII
	 UtriVY/hIlZxR6gojFn1EbQnqnSoChtC6WmmhxdXfadnhPRRZ6/nnaG0AeDDvSsOUH
	 3oNDJ3aTQXbXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD8DCA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690979358.19991.1167826074540111887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7418c8ab7253b968df6b65babd2de78bac90e4e8126da18ac7de6a6ccbed372c
Date: Wed, 03 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756909793
