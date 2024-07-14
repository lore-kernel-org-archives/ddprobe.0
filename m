Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5679CFC11
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720933823; cv=none; b=Y8bQbNaH5SHcg1GTLtpUMSxr8MBGdUxhp7QWVQNMHMsNRL77rzVzjqrw20Vlxldx0oqNsVx3a1YNF9WpTQuxRB9GND05k06NEuwJihT4JjUDuBX/ZCk1R90Pec5t+ZyIbyio4OWxQWOf+AXPiIWb/76ol1bqaFlnfKFxhwV8Has=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720933823; c=relaxed/simple;
	bh=4+g1jmMkCOLV2/UBLEeEAAUiQ+K88FGQVxnazXdJxDI=;
	h=To:Subject:From:Message-Id:Date; b=XPHs4SQ5LtJa3aIKF3sww0ALwhoamNYzxHcQp38t6n78iAtfBgIx/7fvA0Cv/gfwA2HRdIhM/mNeO12AiTZNyT/jBVuXBdElwP1cv+zbrAa5m/mla3JoQVdY5eMT0srdJkwZMDGx5eeBvh4/wg980UKqlvwycAk8xNLAO3GxaoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGl0A7o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGl0A7o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9092C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720933822;
	bh=4+g1jmMkCOLV2/UBLEeEAAUiQ+K88FGQVxnazXdJxDI=;
	h=To:Subject:From:Date:From;
	b=iGl0A7o/9OYKdYiID1+3TO8+dkanPid8Jdd7ooml0/J/NmfwKobvTx9h5aRaBBqK2
	 JhgVZ9B3a1uPwqo2AxDUUXg7QjfdwNMvgB3/U/WOKRwqN8uN4Bcb//YtXG2xyomh0J
	 U+lwNWEZmyxXgoQOvTl7IuNOG2y1leyzfOzxppj8aXNO7iZpNSRXQwG/Ktt+QatnyK
	 Cr3QG+0m6dUGmzGPx60oht36uHVz8GE7CqCVEjOY+Oq151DFBXQz6Z7gUqMEIQClGx
	 KG8eeUIf9eLNiJSPm8+EXbk2uJAc1CPF1eI56g1BOq5YOjoMQ3xM1mIVSIX0xUcot5
	 jLImuaQL2lUfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F65C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093382276.13378.5107458327612324426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9a7c2a9d19ba13b87624cccda40109736f9264c3bf38860a3228d5d172280e
Date: Sun, 14 Jul 2024 05:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720933822
