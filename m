Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FCC2AD2D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748041794; cv=none; b=ImAqviKmgVLAWTfhxDjFGp7IIyRafxTxEjl5o6ha+jhmO/Sqaf+7yWD7VAZ+r69n9t2+oO64zOoksF5Qe1GreXDzZaru3qeikj1BzUgZl3DTAVj2rXTCJuG9H+ZAt39OlnpUw+cmrZ6UuwjKeICQFc9gM4KJuTTVVS3J+nkws+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748041794; c=relaxed/simple;
	bh=kSlU1IGW+bARN8Xu5wv5HzZmRnL2xtdqkCzYd9SIRC4=;
	h=To:Subject:From:Message-Id:Date; b=RJuicG1wpzOFQ42HSJ7y8kiaFPiDLFRb0nKtWhdBnwhBUvFsLBhsQFjlTGmlFWrs48XaRguL6JEu8qmJ0YMi36CorHiiCXHJRNiuKw7YIk2Z6bj/YeovGZGs6tO+erZw/5yLFRsvHGidoDBaLIiObwzacktMaixClm1y2ZpLOYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmGIpyEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmGIpyEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4748C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748041793;
	bh=kSlU1IGW+bARN8Xu5wv5HzZmRnL2xtdqkCzYd9SIRC4=;
	h=To:Subject:From:Date:From;
	b=kmGIpyEnQmLYlg/hXJFDGlummYkUik4SXhkKBj7tDS9h7XFk+CPOgorvpKSEbfuJu
	 wzzfbUTjzF80DEUWr+S0c8arOXC6WlF6XljoLw53apcDpN8YwH1wCY9iHBTUE525gk
	 Ak6qXK4WRfDeu9fQx4JFtr0Iy04gbysFdGzY3Q5EFAkTFrYP/OE7uJxIFvzdE9lTIL
	 FsjCXBHYZPJiw55GKraMMz/kYBd1cut+UoEGH7MBVXXnPQ3saKBifNIVlOc4xt0sk3
	 HV+cFUQ//BkW3Z8ZLHXothjnN2vfs4nllVsotJR6tZ3SPmdGvghYrNEpsRRzRTNkJh
	 eHWHtb0axjYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94197C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804179357.3162.7615973717629505214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7594ba97f0d187c5431c0ad84917057752d24ae6b64f4af2ba43c36823ec446
Date: Fri, 23 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748041793
