Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025C2101C1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711088897; cv=none; b=BIuiw4APHegx/JIR8U0B8gbJKka1llgzQx4NjgmBBa5bXHha5ZnbFJz13CCDmPDyP6REpBCfa2M78E3dfZ5OoIT/SQa+tcHpdqgf3rhy+ZCmPRd6+Gn1rO4aeQfT3SDGI8syWxe79ukbZbclEnaBc+5YIjKTcVRpeP/7Gd/TCp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711088897; c=relaxed/simple;
	bh=D6EZYmgfhhfPI/rQ5dUTg5J3kpVofMuuYiN3Fh5U3H4=;
	h=To:Subject:From:Message-Id:Date; b=kallZM1ipvzFV9X54dZ75pq5XM6HuRrECUrtZcWWd4/VDawESQM4Eb0ziuLCKQdDmQ3DLjjId7qYcxRcyFbbYirgHeKsBVMOAku7vyEuLc73i0H1+Yzz9psCkK4l71wdV7FXBlNEbCi2+U2iMhIHu6ZekrGS6jMfEs5mZkT9RCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4mPuARv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4mPuARv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F6B0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711088896;
	bh=D6EZYmgfhhfPI/rQ5dUTg5J3kpVofMuuYiN3Fh5U3H4=;
	h=To:Subject:From:Date:From;
	b=R4mPuARvGOJXTrMDH2GFZjtznd31N/nsRQenPyNrvibojE2+WkguoMM73M7omvsC0
	 2gl707tus6IRPtGrmUbwdt5Xdd8JPJji+7VupfeqATuK7VR+J5JX22iRcLgB8dkf3I
	 SEbxNWoF19BjsrzaaP5nLZOKNks6KBEiBWVcLzd7tbklVPKoJmU4WR8Rvjee2sgZSx
	 vFwMHoCw8NVzUYDgEwUQHQoY2u/ujT3gqKvbiW5QnqCUksefnPCEsU2up73N1TevUp
	 fGMQ6zZKxFt6SiI28sGNhNIDE2+KiHGK6HJA/uiS2R4wxnFtKorOExYH+UtdY8bali
	 wx3Fbb4N+rKNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D71EC47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171108889637.8269.2783056177875215066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f6277a93290f8c3aa4f759c11ef049eb44e6d80f896cd269bd249de3fa9f5e
Date: Fri, 22 Mar 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711088896
