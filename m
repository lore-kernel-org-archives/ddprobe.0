Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B77B4A35
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749700194; cv=none; b=eJ3TRZ4KEoKPYLSHTz8uzvYfGutzd5dH9OSO2vT6spCG2ECiMxabl1qf4P4lXITvwKix9dovCYqh15a2ba8q7P2e2BF5v0dmSDiuWvOWphzBTaZG00KKxr5sp3NABIskr70qQpOwVA3xm0a+TCjP1UCHegj/qKeDSVn/JnZhRcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749700194; c=relaxed/simple;
	bh=L5ENtG2L3ldgqvL16Y8lRbscN0LW8DNx4XlM7ebwd34=;
	h=To:Subject:From:Message-Id:Date; b=DMNydoQcF+ya/w6001mYj+AcrHJtKd0xgcbYcC+HcnVpCLt1tvFhYD+izaJ3Ik4MdVzuOsCu3Sw3QlJUKueWJ4Iaqhvv8udVxGxF/ORkbaIC/GbjjqtGFh6lhbxtqwQbKtPQesbyvHJ1L6k9N8T/s9Imu1yY2cK6lnIEK4K1XNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTLraOwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTLraOwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC0AC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749700193;
	bh=L5ENtG2L3ldgqvL16Y8lRbscN0LW8DNx4XlM7ebwd34=;
	h=To:Subject:From:Date:From;
	b=MTLraOwvs6jLvIyDbuRaK+5RR/wmzLGUjyaZhHVKwFPo/WCIZaMTKmJc0XbjnSJmO
	 dFBDWoVzm0xnZdwxwJY/MqSw1s14Pil+48C+RRMOJAqbHBi+IOx0W5YTx0e0j64rR/
	 vqVHeWmYGxO3Zl1JNmF3OhDtWDjTZ+BZ/EI9vKMfzEnA0tFPeUv1DDfWSii/P17PPz
	 X4CsO4TL2WtKfhTCi9nHqs3Pw5Nj7Xt3oQgkZmut3NqfXwU9ZvUmnk6LjsWq1z/YLF
	 ll/yyId5tzTi1v+pUmu6udUWHRvLvyJJOLoIitJ+zUSGWdVIcaeae25qaFQJNuGfcM
	 NLLGUNe5IsGCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9487FC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970019359.31911.11646299199046809269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44b38c3c36d0e9e630b7460ff6e53c49c044d47ddf8581cacb4238b45a06cc1
Date: Thu, 12 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749700193
