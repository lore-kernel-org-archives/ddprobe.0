Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFEE2D9EF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775034334; cv=none; b=uT8h0n94hRjbe3PlTprUV6WQSh6a2ZrJnjAJQ0+/eGWuVVl7+3+/A7ZeYn9qlKj+LRc16goGq6no+2MfWPLfY2FyIJOijRekxSVC4b+JU6DbGAkagmvfFXM166J+i8HRbkY09gKRjwz+tKGFa9eztyoLY1gAEg326L4+jQ99NfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775034334; c=relaxed/simple;
	bh=4lMVCHV1Ry1IPaXpPK+590DGtrIzwmell2Y/0PjeAXE=;
	h=To:Subject:From:Message-Id:Date; b=WfuvQWeMxy6XnePnuFNA6OOE8Ey4SYcNlC3UV5hdumnIagDbZSMaBcrlmk0m5RqzE3+oQVjT7HgK+enVynfFA61sONrFmS5XnLz7Vf7qJUknQlyFhVDtIJggReF2kl/IJIPm4MDweOItDGIfx1bJc5bW8kNkhfWQ0cbSyOAUx9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzSsjLCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzSsjLCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED52CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775034334;
	bh=4lMVCHV1Ry1IPaXpPK+590DGtrIzwmell2Y/0PjeAXE=;
	h=To:Subject:From:Date:From;
	b=AzSsjLCRU2AawvrGWU5Oj4kIYX0TdjKX+PG6dU3l/e+wDI9yLDEVD7uiTKJg/9DxP
	 1cM5eFrTywUA5ic3EvZ1hM1kjXpu1ume3n3FaXJHG6PF6VAo2Ecz0eyDw4UWEATCM2
	 FGRMGUtlmNIncjweJk+4a6+7iyHwTc3yB6s2fsNUpPjbYi7QkwD6SujgFP8F5ooUvx
	 lGM42oSrx1LKymHB+EnAK8Y26pMj0EejCSgd3H7zRuW09j5gSt7GyJEJj83TMcc7d0
	 0epGvI9CYJfqp9qM+hLHbCMpX37y6G7fNjWxUTlwJdvkf16FnHKnxfEqV5uBGPYlDm
	 otRKJzCQqyVVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0555D3515F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503433371.26417.10410828775251269176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f0f884070848bb2cf312a09b8811b00be1a3416e77775cf81b5c3f9f6d160d
Date: Wed, 01 Apr 2026 09:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775034333
