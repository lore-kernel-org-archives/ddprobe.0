Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3956E1EA65
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746882594; cv=none; b=ht19739g/QVsk1ZDJyzpmEHC3eHuSYK4k+zukCqo/B1UHq0gl63+Cojh34x6SqbPhBZNi39QpXNdjxGkXFXYaCuu1GLsrffiQq8jDWrqQd5Bi56jKrCKXSDZbLlUS62eJPuSog+aDyKwD8uar6wOW0HfGaMrxndQKPLe6U1telg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746882594; c=relaxed/simple;
	bh=Ye79TWk76xGSjLUXS7Rwk/TZ9FbjQv7HErSJkE44VJc=;
	h=To:Subject:From:Message-Id:Date; b=Jtr5YftiKeDvh5hKedFva8WM5YJnR8Z80LK/HmGhvW/0C0E/ZEWWdU7gUdtOR6TJlD1h64NfbErmYBux12ywPKYpI4m8rNcZSDQPPew0ifrB3bY/sRHy5AutlOU+xqCVboS3itlylut4PwyEuEF46Q3WWHbIALC11+c9ie68Gnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doZzzQio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doZzzQio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52A7C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746882593;
	bh=Ye79TWk76xGSjLUXS7Rwk/TZ9FbjQv7HErSJkE44VJc=;
	h=To:Subject:From:Date:From;
	b=doZzzQiokoX0pHebPNL7CmVsZZakzKBokpLuvjJDXTm1HKxOytFXhJSAIK0jqztlf
	 iiOy2DTamMnyk22mytfWS0FWTlJew8LqNuijRH5DHPVe7pYU/ZfTCzV1gIj5xfCg7X
	 hflG1t7g7DIzmT1HvbFLa/MZHrSgPfDd9JlSjiZnEA1XbFDCgIuBTAdqD9NjHdW0/r
	 BbIJusXKRyyVMb7KfGbOBwgyRjWYnpYpN/zQqlEKJra2pOGIf8KPn96qHMRhvaEU8g
	 ApUNKDJFVhHq0ZQV3B9gUWwHQtUMkYd8lAb6zRM3a0IBWDh+WZ4/wCp+YFfprJmpFf
	 190Vmo+9BV3yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C5C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688259357.8582.16124226956682029966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a50bdee0b4c4a49d4b29f57ee18ef1e17af6099da6893024e321a36bf1e959
Date: Sat, 10 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746882593
