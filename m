Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3792B185B52
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726044954; cv=none; b=rvM5KZeyRDx+/Ac6g+jifrun5CeRB5QEaYa5oYvvQqhapuTbHKjReA+h/Z8sXLUKhzPjGnjklPIv1ScOyuzsg8VkN0ReN6mMmwq/H+9jux7U8+Wuz8yxkSQQKv3+cRAkW5RTV+A7ivesPXVY0Et/0CWRXZLmC+u/Qg+cQRETq0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726044954; c=relaxed/simple;
	bh=i/FWwPvSLCTkkXaTAXfNh9K3XUuVTQIQRz4/zCH6q5I=;
	h=To:Subject:From:Message-Id:Date; b=dTDG3RR61WIZJvJelld2zWYsCsMnKCBAdfAfXJLEnkos1XOtSpA2ekPQoKdNck0pKVhuRlF8rUoZGVYvVADb/NY4lNRL9fkrL/oIj6i2W8FhW5xHpq/QzkA5QL3mbaz1mDc5fINXUJIUnQvdNWi7R6LPTBPGNM5keP7zPDYJWy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUno1tuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUno1tuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3760C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726044953;
	bh=i/FWwPvSLCTkkXaTAXfNh9K3XUuVTQIQRz4/zCH6q5I=;
	h=To:Subject:From:Date:From;
	b=LUno1tuI3I01Y6yYuHaQxxJg/BetX7Fq1tgyQlgkb2aF6DPfrJvioBCpfk+mbh9HQ
	 KaXZLaKWHbyR+AHagcglZwu2Yg2g9b75q0H6sJBPd7FU9/ajXaw4xRm170610Z7QTF
	 W9mSAjAElTm65JbuuNwy7p7JzTVn7Co4klXFoOjZSqkCfJgljpyZv1mXu9RyO/8s+/
	 ikrSt8VJyUnMVER3zRnqBVq0Z+KwDawpL19Ts079ypwyVxqnQAh4TmX/M0LmpRKs0l
	 ubcOd2xcjBPBGtFRmI0AaJ1LpfRtRYTtbuhV50dxft2jkz1ng+piCuOTvKZ0OqHgI9
	 2G9XisDT1tUoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92234EE021C
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172604495358.1134.5519542569324200743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b39949345e7b9b2540d3eb8af478f133dc40df8d01fdf79589b78e5a4d4119
Date: Wed, 11 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726044953
