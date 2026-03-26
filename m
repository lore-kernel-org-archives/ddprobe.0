Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F128C35F612
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774514694; cv=none; b=gLr45U3USVqrYAQ924G9Qdjpx+pof7cmrUTdC9KCPylWzcYW3CwbSskAtUGD7jyc2SMfSWzSDpjwop/PfK/DsL1AEREY2mGOyJ85OPYopA0drPao+xk5wp1/FqbE9nyX06QwZKjfFJX1rXDkEJzExYgQEhv1Z8JGTHuCiuX9sNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774514694; c=relaxed/simple;
	bh=KA9YHTuHQ1RHEZVNfya8v5oYcvJtSH9CLhTuk4vB4PY=;
	h=To:Subject:From:Message-Id:Date; b=pJs67PVBolzXItN2l3ZC9Xrdo3D78fFxoo8l2qlEl+hQFODcKyXHJkMqytOGSAWpGL1VAPXHDcqllfw/+TSEzihgubTpcsERLrFPXq8QnduVizq939dIEVMQS8v7AhX+u00/RMMfNZN8QJvEVtfvONGT80oN0uTwxZ8llRbTG7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEaSiBpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEaSiBpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B8C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774514693;
	bh=KA9YHTuHQ1RHEZVNfya8v5oYcvJtSH9CLhTuk4vB4PY=;
	h=To:Subject:From:Date:From;
	b=XEaSiBplzMyHzDlURO10zgHaV2cmpp1U6mBhcWb4rPT2vN3TNafKgSSZO0chq2y6u
	 ypZ6bK4saOzCV3ia3s2pJ/tvcjutC/CVzYJbsEUfL/7IuY8Aeflu0ORtXwdW87qdeE
	 QuDUxDGDHIhaGtQkzquPr++MG+Qe5B2jz5ih8Sr2HyHShDv9nLDTmW4Vb2R7Ct8U5q
	 N9OR/hhJ0jSryuBtLnFZZZmd1yAO/m0ebCjOXakxmJo/dwYW5aQn9yHd3K7KtpyNew
	 OqdPxjMtQifIqJaY/F33cWsmKiqlbKEOSqN5rjZ8GErmhKNx6lCankPlUmsPt1Vq+7
	 UKu4El5OKimzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D7106F303
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451469358.24981.14246208314662057588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 385b933d1b3a843b3aa7a641fc56b44b086249e3f125a175a92b4fbe209eea79
Date: Thu, 26 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774514693
