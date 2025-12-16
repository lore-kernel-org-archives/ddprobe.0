Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8A5331223
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765909434; cv=none; b=HQUbbo59AUz3QHtVsaBpsfHsgaCBL9l/FEXz5m9ddx22bT3QXkbdABLFayClUWaRyUJVHhQzC2LigtY2lijEPYsWGUqqnbcttPxmRl6DDU4Sru04dR4m5ZwC5M27JSFD4T7Flg1WH78PJi65bQQumyz6rgIdQjWQuACbHgnHaPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765909434; c=relaxed/simple;
	bh=Lw60p3o6xt1mega3T0LqYnPbB2Ci5xAOXx2DleM0w1c=;
	h=To:Subject:From:Message-Id:Date; b=QNOyLQGhGYXflNWpuhkKYnIdgWl86wr5REA5U8TQrG4WL1wVnfpoFaTnZgTY7tljEQBbotXgfJRkGyRjI5KuPe0IwCvbCjQddoY7k+8SH5b2hibvm6iwdb0jIcGn5Zna1ZrHZXo95hFWRS5g7dc3od89XUx+5NQ2+DU/GCyMlng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx3S+6Ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx3S+6Ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A345EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765909433;
	bh=Lw60p3o6xt1mega3T0LqYnPbB2Ci5xAOXx2DleM0w1c=;
	h=To:Subject:From:Date:From;
	b=Bx3S+6AeQV8caRBdIP/a+vaGEWYsqebVHZWQ/chiEf6NF0/+bWsA1oSxzj4z97L2s
	 OSFVon78dN3uf4r9E7s5d5nFBTvpqKV0VUXzKYr96ifxpEl2Nfub20gFuXU5Bt7WYs
	 HvA2sfHDt3xNix7Jk7TGtDg+YSNVYbwG/bHeEvJqZo41r6qiUR8ri4FalmBYOdQ4lx
	 0Znlpndf45DxCezQdCOV6jpVwsRbRjOViEyDvawYByxrYIouJQEaJt4pQhsavX+ZBy
	 oxIZJ9KL5eZ/75TTEG2ZIEA9rHqXergf/auYa7OtO3GTV386QIhOpvrajll9c6PNcR
	 Ftv3E60rEyrtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F2ED609D9
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590943359.9369.13075230804885485660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0818c684bef536dc6051f4a24c823c6e93e0cc772b4c2b8e87578602e7d26641
Date: Tue, 16 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765909433
