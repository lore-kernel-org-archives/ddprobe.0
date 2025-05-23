Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3257D2DCBE7
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747972794; cv=none; b=UgykXZx+M4dylm0C7QVF0MQx0EpqDG5wKCuoROrHLnOIag7dkZ3X/mZHxoBgQnrMY5w6sDoyjTEDOXDR+zi/4bv/7u4/HEAECQd3kOzzYpv11VDjcY1D72tQMWRIcBdBo9+Tk4BkboiOMOKxwBZTAvhS9jLRKoN716O8lgOrBr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747972794; c=relaxed/simple;
	bh=xnt6YMR7omveuG9GTkhlhG8AzMvuoQFyRNUSiBI/grQ=;
	h=To:Subject:From:Message-Id:Date; b=TlKn3apApkDfzAR0u2Eqtn6wkC7I0eYBP6RVVqKlz5U41x60aiC6MpOJC5gIoD0AvG8PIToBFLSqsErlhOgw+4PQbEfHFYAXqznwlesHYKVsSCSMznbbzQMWBEwhFOMvGVmdAM4I+/RryH1573AUxB4oyGj6b3hTbXTzi5nBgbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1tmiGat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1tmiGat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D5C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747972793;
	bh=xnt6YMR7omveuG9GTkhlhG8AzMvuoQFyRNUSiBI/grQ=;
	h=To:Subject:From:Date:From;
	b=O1tmiGat5JmMvTZhNbgePVA/UcCcd4/5lDD+8KFfscHWpNTJUVmW4IwBtxfPNlhnA
	 LTdzBlTN7k+knrUkraU845OoYOe8JnxVKMw+X73NZQtnil1OD9yd6WSitr3ritn0p+
	 v1Lb+oUMxFduLjhFVD2ZbAus9beJ7ryThg179XSOCGiXq+z6H4pIblSE3BOTuO7hN4
	 CUJX/udfcw4o6gEZBfjz9AyrcymDDS1+njl1Bg0Yd5qtNiHjiXIZ4rFyD1YXLQ3wjY
	 v0ax1bYwC+ZOZ0nynNoNarbYgbWPJ02QVxwZgSVue/xneXdUo/6xcOQyuagt28Ujun
	 x03xiwNgu9WTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E1C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797279357.4163.831446072235265798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c84b3b38269399c097a8f02d94a713d5bad5fc1b48895f2eb81847813c62e80
Date: Fri, 23 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747972793
