Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B76F1422B7
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713907223; cv=none; b=ntveZJGdP+hoTlB/V0HYVqSsvD0kx+wt+9bYdw0h0C1IbXiSXj2MSadQlfV2AEKpN9jZhY6HlkswS9RtYT0u7GsQ6xTBPISVuAxk+HkMwDG294aTze5P092pLVRnC40iBCTP1+ZPTHdqRKf7NahHKHgoE66sY+tXXsiClhUnQiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713907223; c=relaxed/simple;
	bh=bNsYjxcKtjs1iMeuH11H+OksuH7vxtDC8Htbn02rjuY=;
	h=To:Subject:From:Message-Id:Date; b=WXdWgxpriQT5IePAe9sHkkXq/YjkusLB/xnUoaeY3b10U8M6hBDhoJft6D7Jv/yb61ykssGiVBoGdn+6zpiWyxq5kzgLTJn5FctxT13U+Rgd/2INK00+gB6PKN0oprYJn/xYSctoZRp96wsMU15uie24eCg1APIDi2vPsPRZTfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BA6WkZFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BA6WkZFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20B9C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713907222;
	bh=bNsYjxcKtjs1iMeuH11H+OksuH7vxtDC8Htbn02rjuY=;
	h=To:Subject:From:Date:From;
	b=BA6WkZFHJizJ8D+R0hokb4YdQjz2HdtB/AQWP8higal27QwOcDiFH7M3Yo0IL1gsq
	 kSm3FrHJZJ6SjECIQGniesZExs8C+Y3GOUZrfLcIEMY5AT0SaBnWCLurpir/aJ1YZB
	 bt7eFYbG5aO7Bvs7gW5DKcBu1OXlJOLF/jB236c7BTiPbTsLyRq2uCuCVRqTj0ucGh
	 LSMu1gX/ACDeyxWNzj/JFKH9DRX8F+JAUXa32hoADkDJX0d7fWo9c1T6BeynpjKT2D
	 86rbUANSgIOv0SR7ah1qf6yHkVVpDJ4wKfco7oYcEMXCqc8UtiOWfusC5Y6VkRLd3i
	 rckFYsHxGkUcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEC8C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171390722276.11056.5362739891056617647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b268cf6d8d4c5c0318babc2da506468a9c686a758af978aaf9969e0a31f7271f
Date: Tue, 23 Apr 2024 21:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713907222
