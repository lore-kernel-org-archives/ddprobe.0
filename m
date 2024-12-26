Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AF815AF6
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735188354; cv=none; b=E62x5DfzRoaK9RWQqxnHnElWGwBXaiLv74FQ7q2eIPHgydy7r8uSs6Z5P0UKLCVX5vE8qdG0Dgk+pZLcqksxX41sDI/TYAKIybhx7lcI7+nCSdzT4c64iZ+Y+ooo8CsTdIE0M/tUuX4kSru801T5RL16SwT4KoTvEoxOYSeKi7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735188354; c=relaxed/simple;
	bh=LKgELuUB0E6+9EzG0JIesxoAmw80VF3WMkJ7R63SWCM=;
	h=To:Subject:From:Message-Id:Date; b=WFfYdbQ1suyqzI/eGnItFnoTw0/9Gf8Tio4TEixDdr1WyLpQqnyBjzHyNEY4zlXctmwE3fNKIQbxaJmHXobd+eU/kSHADUCrfT6qXxsXA7xVPHJrs+hMMl7QcK5HI86Fji/8iDU35R/LK4mqo0yCIGZ9BC7aSNADXSZYganRxCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGwUCGFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGwUCGFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE78EC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735188353;
	bh=LKgELuUB0E6+9EzG0JIesxoAmw80VF3WMkJ7R63SWCM=;
	h=To:Subject:From:Date:From;
	b=sGwUCGFm83b3XDgncJa634BmUuG6MMYEgLo8du3vI7Q5CFH9hYvWNa28TB2VSuKMX
	 kLJ3e0PEcfQq0Pb+S/3wEirXCt84Ve9bJ9zFFhi0RUmtDQOd8lE17ffXh6E8Juk622
	 IpoSd91blieMoZQemtJk+ghoggPx2zqnHrgeDGYKH8EXK6bvY0dgs6xy5D28pU/oOC
	 n79iMHsf1tpsBN5M8KtG93fK/zCe4ELIK0iz5L4dAKNIJw6BbUVyNcuYI0zSecaQIk
	 ggVqUt5o6UTRR4ZQkL7aga/K0gJkJpgq6pZLFSCl8kPFCzc1B9MBDWwE1nf/EahHrn
	 0bJWilrnD2MsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A70EE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173518835359.32285.6836775342107292006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ed66b0c3690e1f68266b31eaccbeca9165be42d718a38f55e33ea5a3e32bf2
Date: Thu, 26 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735188353
