Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154FB337B9D
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762975194; cv=none; b=k/KGCCLqztyE5CKM5F4MW2KShoFP/VR+Wcj5DiJhmOVbPUq2I/4moa9m8Cp8fKtw3vtiItKREEQ1qo67BvuIR0zMLGN0Ozv8ayfVcU7KFLZ+MtZRGD5rG8OJ6DIBDIlz9mPYSGhvHyd4WtAIeU3kUbQQWCof4eM7RapwhT2duvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762975194; c=relaxed/simple;
	bh=Tc3zeV40bcpli5SxJBdDESnXBAeuhWbxEnxAWIY2JYw=;
	h=To:Subject:From:Message-Id:Date; b=u3gru+2IH5rVbrXHJIlcJDEIe/cnk4H6ElhQOY/t08apfMdrXIUUjH/jvvl43h633mrpe39cEuSC8SPs4ru312684atWrhml/nJMlT+iqF7b8CTk88oaYbmnt38RizutHGqOTH0jaFu6L9jrWcJmdJ1JTQHQFkS1D2NxrH2QVtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9EooSGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9EooSGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D410C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762975193;
	bh=Tc3zeV40bcpli5SxJBdDESnXBAeuhWbxEnxAWIY2JYw=;
	h=To:Subject:From:Date:From;
	b=g9EooSGmMCoXKWoHyL7uXQsqopzkDdM0uDrQMnEB8iNoBopsk0Zir4wtCngQKsjxR
	 iefjoCv9aq37nI3U3xb50C3L2tYPK2SWdt+DXUZzEaBDcWxpO+DBK/18U09WtBA11f
	 1Pp9ishXmW0WpXkxpSSIwfno0BeJgjb4HtpsMk4tLNzw1ULoOyukmUnqzw7kjAa6F3
	 ghJdZ1foNslcUUlIMhQ9bshmlFH7n8VE1USKf9GrYxxn82kYvDLu1aGtI5Ommq+94e
	 i0K7pKkZsw+I/VtH4vn+LKcTqlY8ryD3q7r4i1hXeRZMmNXB8w147ud0fk3bJkrfnr
	 kJrPdswmSt89A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B7CD3438
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297519358.10531.18399411006733420148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5c7fb39ac165e032ffc060457be0d0e424b9373ff4d9ad13e441a5fecfe237
Date: Wed, 12 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762975193
