Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEEB264A65
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772530494; cv=none; b=ndTgHaCieeUBk8WZAZ/9b0ESXm1bd229JMIoJNrgXZuLNvltrkXV3QnqiXujVhzLWr6TfT+2fSeG7hpAXH1yrX2SEd1fbcvZjig9B5+hUlTetDzHMWqmq5+iYbhg04yLnQGwiv29Mb928IdreMNzy3siZu2pPNqLdxTEsejaPpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772530494; c=relaxed/simple;
	bh=flVCgHiWYuVm99Pexoy4vyP6yJMgPAFW/XoKv4xsCFc=;
	h=To:Subject:From:Message-Id:Date; b=NEbwse7J3fPFCvsP8sgxz6dwTuxIK7D6ohejGfCB+zecvS60iOqLLNHM6psVm+X9UgEaNib12srr6OImok61JSvZPi03fVklLG7GM2d7V1esZgVMwQCjMXGz8SbDS0dwL0SPrmJH5v+SukqEgYprVWda0Bc/C+JOCC61VUCFeSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zd6DBcsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zd6DBcsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD92CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772530493;
	bh=flVCgHiWYuVm99Pexoy4vyP6yJMgPAFW/XoKv4xsCFc=;
	h=To:Subject:From:Date:From;
	b=Zd6DBcsNFWCLcwPNFWjjR3FfGudPBSH2YOfQDAML8dNyZoVvkEXRqFxa2TnDp6Fd8
	 Sw1y5XsCrVVr1Edcm9EW0O8d+GG/8/0UwWOkw6iopI2cRj7DzNAmXo31jmdz24vJ78
	 ejgA+vmXA+UBWr5X4fKk+p1E86c3clq4yKEc8BPKXgoueLUV9kiIrhKdQU0wx5fGa5
	 vZLJ0In206ysTZU0X4FU46rj1H77YDS9XrFcpDnW9pSIrxS9cHbnWRZDpiUm44ChUW
	 B1fmWo1U6XLzq0Ch9oHOjgMxLwQokfrRELi1licQl4l1V8Bb3gQXGIvTL6bjmEfjRJ
	 V6G+Z08IrjIpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A712EC047D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253049362.20470.1023413299136673415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc3732b8255c7831b0429ac8913cc9042a583c63dae49c6c586bb7e9bbe587d
Date: Tue, 03 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772530493
