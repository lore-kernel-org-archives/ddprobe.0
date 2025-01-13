Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263431FBBDB
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736780754; cv=none; b=Zf+sPhHYYgEURc8Zmpq8OoZ8W1qVhpzp4sdpx/2OCKOHk4x8ns7Etj2oVIVndWy9sivaED9/tbqdgck9u5HPIkoJKd2igrNmNT8lyU/LoN09lh6c0aYxqb/iz1TvZ8P+51P/KgkNnlEr/lGPNKajVcywa+6y1R2PGepx3w69Pc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736780754; c=relaxed/simple;
	bh=1TTcMpo0ZlLFlzcbg41/qjXOmYWUbG3erXUlzjbWTF0=;
	h=To:Subject:From:Message-Id:Date; b=E7fYi9u+yII/3aBYtf6Hl2mHH6xw2ngy47+u6Jatr3Zo3IAdcfM9DhD+sQtPZnJ0GJhXGvC9l63efzZx6gM0qBoqhk7fMHmSgbFCVf0bbTqBSeEEc605Ztrf9/CvYnBsgnFQuVSMwU5el2N0QjxPaqJC5zfV2M7vlZnVDq5uT54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bwca64gh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bwca64gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D60C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736780753;
	bh=1TTcMpo0ZlLFlzcbg41/qjXOmYWUbG3erXUlzjbWTF0=;
	h=To:Subject:From:Date:From;
	b=Bwca64gh721EbED3PF2pEAif/qCr12ZHNHjKyvrJIklw11Q5Tyl5aaDwuiUQZbzts
	 lJmfIUYiXXl7A1cxnl+tKBbCg2teaTOLgTHV96ICjl8SHLFFl8mraccunK5LAFsDHU
	 7nVqGXlDOQQXoE35P6H/2143Y3Q27AK4IoaUMiRU47OoQbX5QWL9oYNezWzMo/L3Yr
	 TZSPyLqUp/JuLqN/hU3UV8ZQzCxe1Za9JPQ6jXrCJ8K8Oe/5azvO0Fx+x1/2yS8Rpv
	 i5pODUkbs4+bPnHOZK/QnYAPE9Zbaz5G1eaWVjngXcdobZRN1TBtOUMui1bnkazT20
	 vjvE7hA1yY2xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91775C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678075358.30769.2440469436955093584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad4d901715da42cace3ff26b7a79d65398fbb562dcd6522f26242eeb497d858
Date: Mon, 13 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736780753
