Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FEA1AA782
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748329794; cv=none; b=WxSwG/Kp4D9J0AlYGQEkRLdfcT72EyAP8yZIs/ag2cJZ1q2LB6Gy/JqL1bX2fRbNnWTwJhg8yk4s+Cizbqbkguo3UI1ynZZLGTkhxgkpGujN9VCvqmBhU33ZttMwLHhphILNESabxxuhHGsKYlVJedvBE5TQQpvA0FDEUy/pOBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748329794; c=relaxed/simple;
	bh=J+IrZKpYRdH68U+ZN7zQq3oFreSd0Kc0NgrSsaE/E90=;
	h=To:Subject:From:Message-Id:Date; b=f+1mTQC2rL8Z2D2tJcRfcgXQ2oF8R8x6FW4M6Ar3cA9OMxgbVn/T2hkYIJMyyn9afA4CKSbIueR5z0UpIkVaflJ2CB/n561ZVDfUAed0pCFZ/gEXXl4L8uqgWyACrfNPD/b1+s16u37fXtA88Z9+NahzIbAnxM5BfFxYSLChk9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeB1xyc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeB1xyc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E765C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748329793;
	bh=J+IrZKpYRdH68U+ZN7zQq3oFreSd0Kc0NgrSsaE/E90=;
	h=To:Subject:From:Date:From;
	b=PeB1xyc7UECreeZvTU5aODgkKFZE0qOumZdCbdrUdCJZHtmm/7S+649lcSaZewofS
	 jWaK4B8jaGHG2qyilnu9tC6pSXD2hOaKHnfluDCXsgXDS9Z3W5J43SCm4+tOYYYglc
	 ozG6y5Zc6OjgJafR+4hBAEoAmBfSJDMpemjizA2XaJ2yqo+Ww0LU/LYn8I3gjvx4Ii
	 irg3086HYwDCVG0jkZ+SZzuIfxWoKPMpJfLZ2Gwf8k9mqImFgBcIj2oCpGX/4LCiuc
	 vCjrFVCJLmD107S6o7fPjyMY7iz5njUeEioHlo46puR5+T5x7pAjLY6IghHC8zjjn5
	 AwTh9VXQOAmJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F06AC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832979357.30802.2171328639749724371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e104c3ca5d8c953e0977caaa98ebbd09abf0131949ededf9243491b716ad1fb
Date: Tue, 27 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748329793
