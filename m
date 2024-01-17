Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10577EBE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705460297; cv=none; b=fojMuFLOSo513kMgzZB4i0UQ+1MYzMRkZIUIEwjDz/R47u/tdkQ4Wj3WWpu4vxFqJMo2etbKLKi6dHNvE/rfpqQpCK0Evxs//vl5MGWD/oyNid26JgVzOWIAO6VqoU3UuXrBuJ39kU8oJUshMRDqbEvUlds3lb31Fx20Go+Ok8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705460297; c=relaxed/simple;
	bh=WfoFwQEQT2jvo3ssRF36AfNlOxviMI9Kttx72xMiewg=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Dq2bpCcqmf+BzEaH0Jqc3QGD+tQZC4tHDWia1wY+umnrRkERT/9/hEWPgGwfHgcssmqQe97LC4anDlH9pyTPIHQXvKoKt+2TQd2k2dDZmi+OjB0xwNxkncymMV6jA/7Cg0w9z9EJKSIVv8hplbT+s6PaYdEPVCkFYWqGLGP8Ao0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nw4DXBXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nw4DXBXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AECCC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705460296;
	bh=WfoFwQEQT2jvo3ssRF36AfNlOxviMI9Kttx72xMiewg=;
	h=To:Subject:From:Date:From;
	b=nw4DXBXn3PcFXOHBrI7YGBXYg55R6jdNednvr/or6bSHzWRy5qlzqBI0W2E20tO+b
	 p/+VruZtlnTnXEUrI7Wmdh5xhXD4IBeWTeYobDrKKB030bML59jJF2NdhV+t/XSQD+
	 32BDCcRtdeMdkwV4cV1+cTwtk01auvNAlshboPKbaogVUdbZSbq/NDyhPNKtvYX6E5
	 dOA+fahzK5Gd+6goMNBTlmHAOuNhBveDVKZBmMnJWj13n3JkxFlOkT6OefBIrYmCct
	 rIcwuhkDhYis5OMfsG7mQd5ujshB0te06j1sEvBofOnmNtH32+b0unVyooWzLLhsDu
	 6DFMxYwPFkGTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F143C47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170546029637.6236.11173543632720017295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c54e717307020ea703076a3981cd4293f2210be717f2e7818cd7a84399ced3
Date: Wed, 17 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705460296
