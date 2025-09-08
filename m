Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9208315D4E
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757311193; cv=none; b=oX3J0bsH1j8cTTttDjK7S9Ol1qei9VsvKoKajEo5ZWK0eJcALLX3O5LFKyr0c+WMaWO9kFoqzEBf2fbW8SW+2Z4wkjpR7YAlX2+xhrg1qwivH+oyuqMNVRiaNv1neJV89kNnKtfQ2RxznK9TQ4qIzLnpLOv5ZDBuuZguvmvkMCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757311193; c=relaxed/simple;
	bh=QIURmCojPNJ15tKhTtw/PgDtGzTtGM27wDaIzOB751w=;
	h=To:Subject:From:Message-Id:Date; b=l2JpPVhtjC+75/Zd8/dfSQkZLqX/atBWGkdBf5yoJXjPABEfX7lLmm4n8FKxYsrSrj+Jl0JEE0ERmiDMkFkACTf2qwp2TxncDjzFcAo1jjcVgS0Jlck847tNhN1tKgLdx7DdS6CPoyl5UbpxeH5T0JflCW3/E3mARAaqNEwxatw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa2ZiKq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa2ZiKq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3AEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757311193;
	bh=QIURmCojPNJ15tKhTtw/PgDtGzTtGM27wDaIzOB751w=;
	h=To:Subject:From:Date:From;
	b=sa2ZiKq+nuJXZKulgD7Wfuml1pVotvwZLQWONARnaNEHOUXEDwRQZCUaMaC7bvj2Z
	 WUVCkicwsSKtB4KzVBXAq6InQGUZxuP7GLRcy3s5j0g1aqyGv+ilcShK1SrAGYVuhA
	 LxIhmxN7mEAkzKsSOjAgL89ClGZlKLUgFQbagMQgwmyOaz8I6gAI7ULi5KyHjJko+1
	 Ttst9jvfkoMnDSmMWDxDx/nI/m12zjdocQ+0FeOC0CSO+kLhNvC5zj53NIgHSX/yDl
	 A/IpOd9lYDf8n4g814DYyvKfCZynWNexmbIS0VsoVVdAiIZY0DLUuLQYe5/VCxJ5kw
	 cojt1MEF8UyXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5DCCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731119357.20323.7368824038185110039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c291aa4a2621df063a2224da19c615360a70ed519441612bbc1b52cdde05a203
Date: Mon, 08 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757311193
