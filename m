Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6CB280330
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758190795; cv=none; b=LlT5QTHOo0ezf36dflEnKMTRGmd3IJrlwzdYbW4mP/u3tUwJvthHS5OIREEYjc3PUlQ8fGb0ehUHNyR1awBDaIzlELwyrb+AQh/zlm5ID5ikk2BzTzj+pUyofU1K6CNNp0E9F/BWrhsHUQOlBpKLgHBdt3Ke545Kq3rbbw5Xj+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758190795; c=relaxed/simple;
	bh=P2PtMM9HfYGX5yS5sCXQkcvphUuYDlD7d4ZKoUDjjPU=;
	h=To:Subject:From:Message-Id:Date; b=eySbEViXAWeLJqp6gXugvYXEXloBKbwofAndV7k+xm0jUOlbx+YbqxcJH3ndy9KKPerdm/NNqsHEGFQoNKRaTOnlXAG64CjWUAAZ1mbsNWmylHgHjztreDo2aNYWlbcgoIof5CoEwp0QyZ5WLANh4sblxdqTZP3Ni+I/YI+rxrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Te8vB5bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Te8vB5bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B84C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758190793;
	bh=P2PtMM9HfYGX5yS5sCXQkcvphUuYDlD7d4ZKoUDjjPU=;
	h=To:Subject:From:Date:From;
	b=Te8vB5bvv6XJRtsZvQjSTMTAgwWvjuanuAkUv4cHLZPAuG2BtAV1/QR8qouZwQQrj
	 P6ER5GG/ctHet1qDifJEVtFGWEy31zl3Fzz2UTeFZHpDe9oWemz+H4v6xTHMXDIZRQ
	 gh+SQY+Y/kxZpd/nvDSG1q+ybwduEaWKy+btzpjpC8k/4BhMxRcfVGX0GqMqhOWviE
	 NOPBV3SrFihtYPK0nJANv17stU4ck399DZwhD8IBu6Y8JlwFi1deF6GSuP5grk5QWF
	 av5NCKgR6KQZAOReoWlvmkcGazUlRgqvJlA90Oj4FmvmEtrJs9ll7m2y4rz1aflm3b
	 s0zgLQQd+QK8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D51CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819079361.29473.17028770907189032124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d262da922f96e3d796e39ac521dc8d01733a7c69352a86e6cd7cf47deae6ae3
Date: Thu, 18 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758190793
