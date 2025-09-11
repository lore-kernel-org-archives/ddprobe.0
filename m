Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD18248F64
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757606994; cv=none; b=EkOGYyo0Qp6YiRo9G8Nmge02PR1I0IIYrfWHoqzuIUmB7n1K7BE82iRuwegaihi56T7/E41vYkTFLV8hlV19ZwQSIezuZhJYJjmwULwkeqODf7gjUHJLhN7E49SoAu7CtKsk3ZMba8r/qyHQ2hF+LKPrU5QCyE936YlsKUpEIiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757606994; c=relaxed/simple;
	bh=eE1gfFhieSWY1mEruGHJSJHhJMFEmIW+UWkLIB+ajKg=;
	h=To:Subject:From:Message-Id:Date; b=KTl0TvxzgzvuLvPdyjR+LJp/hEihjDk80m3NU5756BHIRyXOxw7vrjFXuHrRSk3EWP18FSu5vfkRUR6TVD5tsf1f1bwe1DRQyCQ9ycAx1kS7QfptSfjq3/26uLIbkNlZE+7fOv0fMKWWhY8i3ImA/GzNPEh3xCmsRKHlPRcSsdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzrvlEKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzrvlEKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18C0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757606993;
	bh=eE1gfFhieSWY1mEruGHJSJHhJMFEmIW+UWkLIB+ajKg=;
	h=To:Subject:From:Date:From;
	b=AzrvlEKeTdHNtcak3DYrmLDcDP2Rgb9Tb75ViasAmKJvdXpdnClz1aaF7uDMRLTz6
	 W5JNVEqCwFnKGSWUGRdtyk33ih2souOGGkDOaS7rqkfgISb+f6zYAmlo2LLUvGgomd
	 9KhEwRhMEG7OvFVteKuQCFSE7Jdr5tQRsj1W/o66Q+DNOMbelugkNjmoX8uoNji1NZ
	 6Mq1OCeLTRuxWHvUqyKDxjRlqPKdO9NHhvfC66d9T6Tka/gBsOEcZTOyOi+VlSByEi
	 jw1slBlsCde4oivauZqZEUfWxt7ptaree/UIsJoH+eXjfY5SIUPkCBl4xHtA0p8030
	 Pmg+wEjiK4Spw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F794CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760699357.31022.11855131374246358899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcea7cb2acf1fb3f0d89cad65d139652772f924919b22e52917a1a5b32fc8223
Date: Thu, 11 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757606993
