Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2284A2BD0B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769753634; cv=none; b=JNo1ZdccbIZ46ANX7cG42LO0EQ/HDgYDOR8Qe6sKUVwjYch4e1OihPRbC539V8i5X6bbI39nVuDjevk+HDar9Z3emOMsIS7YtpLZMZu8PPl9Y958d84xHvZkJAzqyoZuAcIqh4Pgzk6OV+TFmOn1VgLeV2CoZCb44lLleFuBQK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769753634; c=relaxed/simple;
	bh=k1khuJZvXH1u9Bm3hCEejRJ2EbRlGcLcXxT1fAiDmdQ=;
	h=To:Subject:From:Message-Id:Date; b=Z8f2JHUvrMiQ5UOwwpUGP8Y6VakkSxS6nawt1YRxI4bR4RJQalCqonTvdzJvGr2+PkjCFJxzK7KEsxKl/PlbIkq1Y7WKHDHSL4yMisxQe6zkw82kU7lAhsQM2bbAI15XhmXwELdMfsBCTFl2Axs7gGDUXNrzEiC1fRew6jUS85g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pm8jvRnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pm8jvRnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCE9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769753633;
	bh=k1khuJZvXH1u9Bm3hCEejRJ2EbRlGcLcXxT1fAiDmdQ=;
	h=To:Subject:From:Date:From;
	b=pm8jvRnGQ45h4iIq8U7Aii1tWKQ2D5WMKiejcuXe5eqYX2doa9itSqUBOWvATbwOL
	 3Er49yl/049p25el90nc2KW9usMG0Qak6sDhT6dcz416XiNvkIKPh4kl9oD//zK7+E
	 yqtKzQJnxYn3Ery9Th5vUnhRfm4KRf5bT3O5GpQuJPz4WqWTQCoHJaQ3ykiHxb9AbY
	 v2/IBbwRz2LKSnGGAb76/k/Yd2TCfHsXqpVrXhN3uHCOZZMYesKe9I3zSKWyESbgbM
	 uKpiqhveNiBCbu62CUF68m/Ru/QVzZ6i46DHwJxc6btlitOAjiXAY20x/gstZD+2VE
	 t3oVE5hEnyhmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996B9D358D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975363359.11981.14689377437105804211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9864e4f019c4c42e1ac443aef6be5d0df50b36c1b98be1a4397f4aaeffd78d0e
Date: Fri, 30 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769753633
