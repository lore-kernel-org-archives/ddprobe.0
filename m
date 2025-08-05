Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216AB23F43C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754391594; cv=none; b=Ri8hDkC0FE1MPn/IUO8xXB/tYSQ5vEF3mDWIl3/yanOYs+elWx0E2aM36GKIUwVNX1LjrfQwP1qQIiUaLeUv55SjtDb3s0+fzVRj8FiQk5CZi8bfKgzepDrVIK5CWa4hECJQnI+Qe7YZAcwZcHXzAV5t4Wb8YQeq3RVi/U25nOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754391594; c=relaxed/simple;
	bh=+EZeAXEPAj40HeZv9nlPBI8HYltJyTK+vnrRm8xB0aY=;
	h=To:Subject:From:Message-Id:Date; b=RStXMhf0AHYQUV7Pn6UBVZZYy9RSy0yaR0lOH17xwGSEnlRWqNa0IxUclYV1iTTbVPCKhZGso1lXybyet8SeZlHMYMzU4e3XSHB1cWupZfJx5T0odI6/wmvaxlJ3sPT7bHQ/dxw2BKdEfkq5nBcxizGSwXJU6yeswZx/MpQ7kJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bm2gfzlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bm2gfzlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6BDC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754391593;
	bh=+EZeAXEPAj40HeZv9nlPBI8HYltJyTK+vnrRm8xB0aY=;
	h=To:Subject:From:Date:From;
	b=bm2gfzlENG9+KP4ZtQXZQp4P95fZv+rOlyBVwEZyXNcT0vwDqx2dZaHFy/xSLPQ/9
	 HArKGIX2C6araIYkZcZdKVqHkjVJFEJP4yQHtzWQhIIwR+l2RXn7lSMKOANGAuv/bf
	 HnCA2moEaZ2LOl6zc9UOLdiUpCqDQW5Y2DoCxzVw6n2DGYCaK0CdFl1jw7vE2nlQv+
	 LdczSIpl8WpK3Cc3RRubu2b+b7UtYtKXRR4m6X7uTn3bmm/LNSFh9g3RBPbhE2QDjb
	 1kV15wOwezDJynVSHev0kGMxczOKiNDJp9B9ofQXDePes5R+SmWfK7OA01gPJMuycu
	 cM4NfKkFzEpww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FFC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439159358.15760.8611156424871741550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26be6cb77d37557f633a19fee590cb026a8a9f04617a2addb311d1c7bcf6d7e8
Date: Tue, 05 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754391593
