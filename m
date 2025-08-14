Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A2E2FF65E
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755141594; cv=none; b=B8B6Q1CgUAw9qDFEt6jNZXudzkcHh7kMMvMCVuGJo6SxVck3HjegvUwfrfun7S7Ssat7TDIRCvzCRYS+3eSKXeeu0v0NNHqhWmUHZASDBwtcCHhkkSSG51BLiu7Zbyh0Zw0SqcpC0UxBh8EEkTCXxSSrn8us/Yij9Q23M+5sL8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755141594; c=relaxed/simple;
	bh=+4VsDSrIRnwjGV/1wi9D2XPmkLczHF2otYJtdV2BIZw=;
	h=To:Subject:From:Message-Id:Date; b=KGGNwbVJgnTH43vDKmTwXYYNbDqdyAT6Z2Qmx28aC5sHIDHb4xCgq2Wt9Wi+JxHxOvueu9romVGYU0soP39jq9l/4/yJ/Qh7t8N5easxkLqaMU9UHD7WeT6YBlxdll2Mg18aVIKWbLrXXyq+Gypm7C/Oe6ern1wHUfWWR69EwlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArlDTqNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArlDTqNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C44C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755141593;
	bh=+4VsDSrIRnwjGV/1wi9D2XPmkLczHF2otYJtdV2BIZw=;
	h=To:Subject:From:Date:From;
	b=ArlDTqNHnQDYcqrXK2rFlcqqgWo/AvafN0Ngszp1Y1Wblx5TDTE25Zd4xAJGbT75t
	 Q47VXnqFDXjSLJGQw2ay0f6CjKIsC15JbxR+/MGR5Z828pWuBRlwu+VI/KLTBroIfh
	 RMmfwu4/IeQYAs1eyYXswiNBn6D9i/W0/0jPW0CjzmJOjBpyzMjlQxm3fX6bF76SyI
	 X+y6iTO1Y/PpRgDY8YyeuY0x0P8W+SaXOsk2dApUN6kJCFnVEGA050rxAwmUCHqge1
	 u2GK8zsJRMg14SCp4HLQ47bJ/A79+vH0ieWjxVXo4/U4ANIGAM6isH37hfutZX7zSH
	 a4h4NWdAbRKtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002BC87FCF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514159358.15753.17425487010376964921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a142b16f3570e37b44298f1caa7f6d8675c4b9c891cb13c89868290d83ed2193
Date: Thu, 14 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755141593
