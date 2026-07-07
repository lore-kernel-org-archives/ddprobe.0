Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4336618FDDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783386514; cv=none; b=XJw2sbcGKf0EziEmyZaQJN9KnL81etAqVQtRJKqbq2NNMOuj3l6usYlzcvnCgnPUcEgvLYE7LeOh1TEiAZlVMMAEJZq+q5dL+N1/vC/udvjmYz+P1xKeokAhHOS3D/ipkRQx1jetUy8jVHJ93GPdEgGEzd5cVK9+AtY6Yf4nx80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783386514; c=relaxed/simple;
	bh=VPB3/Io3PjsX8BAKdhON+nVE7rFx1eF3qUXvjL5dgvw=;
	h=To:Subject:From:Message-Id:Date; b=qafv/iKnoaUeUvFoKsQovSg+Gw+xmzBaxn6aOgSByI9MubwYHI/iTUzgXQo+pYXBh4QBLk0dhDhTu0S8UuDeMMe71H7p5W1DWi0zydtewVEwOFzNkD+gXR0/ToQ0u0R344eIyAN32FUkaDbIilm54spUTGTvPyfKuWSIz/XaKQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYf4raPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYf4raPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA751C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783386513;
	bh=VPB3/Io3PjsX8BAKdhON+nVE7rFx1eF3qUXvjL5dgvw=;
	h=To:Subject:From:Date:From;
	b=AYf4raPeKWsTGP/IfEGVOS4MV9Hp9z/eDYeJdCROabe+bD2Q8g3/z/ReplHKmKHMH
	 9HmeS3DVg8x4AyfPetkI1vRT1hYKRjLLgJ3d+XMN8QedaHIZd7FrD/h6DyD4+cXE+y
	 tBlnpgUB3LR30oc7WneAm19Dfr+S5MkA6JlfPKeqQLrRBHMBemnGpxD9zgYoP7FQYW
	 HbcL1RMOivuDe1JLgZhMOK3MfJVgQSDtaBCv0B4PhC/7Tv9xlz2fLhqJz4VT3THij0
	 Z5E0mY0tQsh/PgCvpD/jlq5VwLcmdQYI62KyexuOscfS43LW0rHNdEvVr5KmpsaLwq
	 f9oJOaNKv8x4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D84C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338651368.5151.231086290670582006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c83c0f6ee25b88cfdd04d274c10d5802e05a213c45825bc056fe3370661b035
Date: Tue, 07 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783386513
