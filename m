Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A4D2E719B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775595334; cv=none; b=LJ+qAqukKSmOXidd/ZS0p/IMdBwxPszNk3WbBVcRgzevG6V2zlimlT2BZILdoHrh8+IlUOUOKMLuNbLNNNt1Aw7oThRfj/zjKIfq8k75+p/A0vAemYzuUWMBZnxlbnVAWt3oYQxVux26bPH9oXXovEL0bSMYeLZffJjLDxkredE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775595334; c=relaxed/simple;
	bh=aCzFulKQT6Fby+hgMK7y1/S51hxy44FEuAyd4INATt4=;
	h=To:Subject:From:Message-Id:Date; b=ivdtbAr0jnthlvKFc1niCOMRV9vxwaY2utyKWLnZuPs17i0vo+OUW9YZIdQHc8uFrgNhvl7kplYfLmm+YFQQaY/qE6R7F6KSMJZYtySRKzcr2NwQ9TyJsHPt2/QWhk+RfsHrzDkw4SRtgBRPO3BypM8+rHPOyJQNy60rU7bgd2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvZxHSaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvZxHSaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB206C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775595333;
	bh=aCzFulKQT6Fby+hgMK7y1/S51hxy44FEuAyd4INATt4=;
	h=To:Subject:From:Date:From;
	b=cvZxHSaQbpOnjMp8v4wtNRMdDkC1POhEEk1YF/9dj5szBBnsffLwhSXGiYS/+j5fH
	 NmJ1avmi4p1Zkgv5ynRC4IYy6lpcEuXbwqRnH4ueWsGsAKJBCnbkyAunLra1w16cce
	 8zeV1wjcAxUAjpdEGgWesjKCztBRWo5wBrR4Ks+mKdvYNvGO0MSgSTR5THh2Fv+TIf
	 gYn8Q8PtazsCExzhqiMvUUDwkb2SCSa5lHrBIUxDb1FpBelO1buU9m9cC6PFFg/vwX
	 4FLzRBBSSYu2WHcLpj2quJm+/6udtAPfc3K8/EMNnFKlUuQUUOBGSk4YZ+XfOB6JlY
	 jq2zY5RbnBfXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE95F3D5E1
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559533369.20004.7941352174129552864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e91817585fa2669ab8bcd316ecdc81016e7689ace94db3b010e1cc0e0a5f7c
Date: Tue, 07 Apr 2026 20:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775595333
