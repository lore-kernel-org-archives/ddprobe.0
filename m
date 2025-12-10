Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C41D19D081
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765360974; cv=none; b=qElPs4xlGu7z/bqBGznxF7hHlHOJ+6AR/Zs3h/Skq3O9AnseAsMVm52McSZ/a8p4ZlkR3E+JQZdBaAHkmL7cQOR3tRhc6M5MS4eye5lAWGjVF6SDek5wbVcAFbZwzvRfuoiPaW2x0k2KFJ4MpIfAzVrBadkf/X/q0tqavnCPBEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765360974; c=relaxed/simple;
	bh=WE9L6K68PY8uCs6klcczxetryGmpjxa1keD2KBKiXhI=;
	h=To:Subject:From:Message-Id:Date; b=fMkARAQ+sNI9uMKNasRS396pflOWIDaRBwJJqdBnmdjAPZXSvqznif/3Nj7mBw/VI0BNPMpNdI1GikvGwDxCMSSHLKah4bYFfcIWnoTToRJVOO82hvcncCz8uShKZMqwFpkKZdprg2U0Jdvg7H2Edjvt2WzvBYMjvxM3yF14Kno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WF0l45yG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WF0l45yG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F52C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765360973;
	bh=WE9L6K68PY8uCs6klcczxetryGmpjxa1keD2KBKiXhI=;
	h=To:Subject:From:Date:From;
	b=WF0l45yGQ7/oH8rivuH/Hs73EqfOAIPKzLVBCpKrlFZVK4vxxqYmqQdZc06cFWqUX
	 wFPwa3o0V0klb0eePT//Ww3F4HXnVD++rJmp0CMpddrgDy4pgqpuk9Y31OBgBo1WLl
	 5t6NwtaF5tSvLmu50AsmEpn4tDSFNFssZLmUrgVgK/Wc26e0vuET/CGx1HMG5GUXvM
	 aBwEgZzzoleS7hhVu/ZIwrk0pHYCxK5xqPm1A0udhK/aFmmMDpcvf7H6JcCKxBlwuO
	 oyE7OAeOFpWMJrdX5iTDSnG52y8qapUNh9ekqaf07DOlIvdkMhTBRclEO2JK9nW3Ie
	 TrqBngkBwwO0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92587D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536097359.15399.3271614345652327520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f55ab8f5e779cf933005ef8d82bf569c0e56997945aae56933d0d569da2069e
Date: Wed, 10 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765360973
