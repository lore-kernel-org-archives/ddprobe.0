Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B60A22AE73
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738757154; cv=none; b=kc/4AHb0K2TDiJLPQkUsNT5xBdirvhhFz8NtVN7H6fHDj9TAbziBZwifqTUs7QtD0jasjUdw3Xgmw5JoeJxGONmGSw9aZMCxbsynTcCFE8k/kPtYVgc6eSLMO0HrldekT3dEhQqpvIEyG4a/Dz8KPbWeCIjpazjpYiNVVk7eI1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738757154; c=relaxed/simple;
	bh=W0BosbKzDP7Sty++KxoGwOQtUecnHPy4GB8XQktaDTA=;
	h=To:Subject:From:Message-Id:Date; b=Lpyp7OvFzKhLlMDv7eVEO6CDfGrUFIolbxEp0uYtnNg9yO04tby54vcAKEZza4L3zwx90KvvWYM4fX4d4DGy1uI28lNrF2X7xVjQ7ebgsvejw4DjLVx+RNKBZFpsQ5p/Hvpu9KRQ4GDDeDFn0MglYkc5OBzVJ3dWZAF7e/CeuCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAAM6Y7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAAM6Y7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED92C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738757153;
	bh=W0BosbKzDP7Sty++KxoGwOQtUecnHPy4GB8XQktaDTA=;
	h=To:Subject:From:Date:From;
	b=jAAM6Y7bIQ9t9rLyfz+2fpAYexgJ7fZw13hekd3nkOmVFBRto8Tn1K4ccahkCIcvC
	 67emxcxUYUaX4R1YzFAf/mSIWS5aBdljRdPIh5CqjVyumWYbSCRwMHqhuGJBDkukuP
	 6tL7ZRzbd366LuF4i3Ui+VeM2Nr26jqEgTekfwY7TrCyS7Ac8MsjBikE6XSkWZpX0k
	 qp890WQnSuxyp/Y1fl9ukYbhV2RqgOT+OHCu/nVpOmUQFFsZJGMwWkJ0UdQ+u49lUx
	 IEXPn+AT4AXXyNOAGmMdybdk4zk6dLJTyAUjfwdksBGONXuogVElCc65o+YKyPMJaT
	 8YCkGTJWvebMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97618C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173875715360.16067.13886590705825819838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860b775353bd031aeb55288446e5c36950167ec56f52d4fb371d356ede55dccd
Date: Wed, 05 Feb 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738757153
