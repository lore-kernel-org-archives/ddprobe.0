Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA9637F001
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782222994; cv=none; b=lUXjBhFzthO9e0yoLn5/ljuc1JXq+CwJB9epRHXIR75qzZEyD738gZseKRZB1CmfkUGZe3ZoLEHttjS0H1JjRIkD5gCYWa0ppf7jIg3UdSMzB3CQKPIHRD9M/cTkNP3ebKaL61I6OzgEZXuwMl10VeojsxNaZ/37sVLkpUUtpco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782222994; c=relaxed/simple;
	bh=ctKbFdCzZsdMGKwkDNhx61zwycX+LIV5iZLGMHbZOQE=;
	h=To:Subject:From:Message-Id:Date; b=izuFLDyh85f2oVWULQxlA9eKCvSzjV3jUUBggfRGortlDnQnN2wg3ZYgctb95lUxAzHPjZXXkZHeD0zicrpto5u2RIMm4nRg8ADNHBuzJucbkWD9eZ6kHxg/0N7S9mskj+nPIAHwZgOKIke1CC2ZEo0Cdl53rT3NBZQbOagKb7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRiSc7UP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRiSc7UP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4E3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782222993;
	bh=ctKbFdCzZsdMGKwkDNhx61zwycX+LIV5iZLGMHbZOQE=;
	h=To:Subject:From:Date:From;
	b=SRiSc7UP1XY1zckPsQqf7MfjWx0OC9bppF12QeZHqTn0EEaaIi+c41Syc5BnNHDA3
	 MGxuNwUwG5c5h5ZFMDy9aCg2DRjFKGhyFRHK2uvz5Kmvq9xW/vJbqas7GD4SEEZ304
	 NJBQtHxwlBIhx5jRSpj7QBo4lb+i9YRrMk8zh2ltmgSCV2q4tQ6vZAbtcsJv32EZGP
	 RaBQTQDOOvS6bmHruoi6yCetLAuGmJ8aYkk+0SDTcqwhjE4DMv098PcIZGcP5YGg5J
	 wA0gmIpESwqGjEbrm0t3Wo2AdDp0y3z+jJ0RZxjMh9Bj4D4+DPziRBPNSH7yJSUp21
	 ciZlTuwdZf9rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2698CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222299372.22147.859240242373051512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e1b1e099d986d54a50a8efbfc3ec4e63749ec417bafa1341fd2b9b2572f296
Date: Tue, 23 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782222993
