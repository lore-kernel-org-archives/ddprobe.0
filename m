Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E67477282
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789130434; cv=none; b=rEV98vrqjuQhL8soioS0Kr+IThqUR6kDLutk+oUTxsF63BhBqPtonaGvIzlpH7FclTjzjflfspCzOKfWfhdjLdPAYLKH1Awqo1WVoL5OwZW/7pmywb6dpciTgsrOA6WhabE3Bun9M8OGnyUAYYRYEK4HjVDD3t0jXoqftusm+g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789130434; c=relaxed/simple;
	bh=jIuxvLan63m7XB+1HS86wOMmNC/DXVT6dFG1IwlrY3s=;
	h=To:Subject:From:Message-Id:Date; b=oRm76XgneqlfWwxVIctYoClaWNgMGNvKvsuuKOoKIMpzIlaBKwzJNGbQZ0jFP0CAh4pnCxUxudewzXyfCzWOM0xq/78CZ8LHQeJeTgQEIZnVxzxQt8eQYnClixqXNBQ6VGpkoCj+5XvnHKXbFi/0rMq+uy09DVvfVWZnPa+4M5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USzoMcjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USzoMcjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5DDC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789130433;
	bh=jIuxvLan63m7XB+1HS86wOMmNC/DXVT6dFG1IwlrY3s=;
	h=To:Subject:From:Date:From;
	b=USzoMcjUmOYKBWUyv3zv5E0n5yKOMfBJ6AR+DycYKLPar2KMnazAWyDb18rUD09WZ
	 SrLtVgJOdzM/hEofpCHeBJJTVIEWi7d0PlMHRo7W48Y4ysBigGjzC8bSb47PO70UVm
	 B22miqBFVOGoaJc1PpZuMzuYRoibkLJX/ifI2THoNxlgyImc1w513gqY3jw/s19LOT
	 C7B05olrrnOG1nDEGa111u5QkR+2Wvuig+DvAVXcLkMp1/tl0IT1DaQx864Am9DjBS
	 +ORnM3IFtDFQfBlNyfFCUOhfR1TRMK23BDzXgSLKXKGRm3OtxXGFFH25h6LwFCIeLf
	 dvItkEbrNV6tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAB2C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913043369.2116.15384512382661559927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c81dac025df41dff49a9f1e73e78e79602b7658eac46b3261ca9c0fe3b5192e
Date: Fri, 11 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789130433
