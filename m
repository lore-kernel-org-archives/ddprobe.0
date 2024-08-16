Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178AB3C24
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723787754; cv=none; b=GmJmoLCV9tguHNmV62n7qrN55AcYIHEWcDwRQNU6An2wiT5KwWVzqkEb4w842or+501lmU724nXUo8wVykaJ0m3TpgTQFBy7ne1199zpEYGCdYC0p9Fjz5vfQJuVrn8+sO6sc315xVCdbEmpJnCiGdhGAN9lDWoM+vIG1DbLepc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723787754; c=relaxed/simple;
	bh=tBcUow6yWmjyDugS7fXl+XJYuLFwB9/hBXFkSWrudE8=;
	h=To:Subject:From:Message-Id:Date; b=ZXbKLhIB2h5jEg+K65IfgkIwI9zMVv6cUwi6soCqIohi7YY5jlZGiDVeiM5nlxAfisd5fGsBUCHBljVgRaLlvrrpwj9wbLAJxQyvCg/sNyj50HqSdoOaYPepowouNAyDHCzEx/D6mjHAfkhpT+AoZpskucZpl2qmDcxMRJ9KGOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqIJyjBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqIJyjBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9873C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723787753;
	bh=tBcUow6yWmjyDugS7fXl+XJYuLFwB9/hBXFkSWrudE8=;
	h=To:Subject:From:Date:From;
	b=XqIJyjBQT+DWeaDUMatQxlzYJxLT0thpKhyUH6xABK1yfEoa6YvXIZPnXb60NyYpA
	 9MEAgEexmln7X3XId4fBZBVYdI57UydJSaSFI+slZ4yQHtvC0yXG+duX08YazWe+tM
	 ze2S3ZjJ2PzXkRE+6Cz5ooBHscTO+1ClnJt0HXPlOC4WzXeoQ2zwf/k+fP2LiRKLIC
	 8iokgBvRWvdEVw/9xC6kUtul7fyRUg8RoAgcKZSgx4xtItlc0WpM4l5iMytbD1oKaG
	 Xbq5dKkKjeOKEtyeqQ8DubR1IFPp2/vqPiLBT8hI2u1UR0N9Xf7iSK3mnzAPoceRI9
	 RhTwlCVZT5JOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D81C531DC
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172378775359.7701.1479543521600229003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebf9b95a7faf265452bee18868c52641484afe2e7cf9913b29bc40c692d6777
Date: Fri, 16 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723787753
