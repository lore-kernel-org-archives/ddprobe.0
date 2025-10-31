Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2852426FA52
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761883794; cv=none; b=BpLA+GQ6E55Y4tifbvAb6VOE+XwzyRWsgCMFpjVnkz5+VnN9M1DDLG+/21SMUFG8FkADZNDu6vLvH9DhGqcjxNvsCBQS1pFOi5S1GXqMx9sIM7t1fNqA6bw/Si2XJ0Mw91L494IKwYOoP6D0+xqVk8R5FXM/zSKxAtsQ3tRZ10c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761883794; c=relaxed/simple;
	bh=WMUm6mzDNH1xnBUWz6WktSGbWLSPM8RAttyhhr2bwIs=;
	h=To:Subject:From:Message-Id:Date; b=MRpobpCHN8A6AITN3GHWbO5uUkOSLIOlI1UYQETNO+LkTHfsbeB3OsnK93hkwXKb2VNG1v6k5m5hJbVJIJaRWwTTuhYHHE2MNCHr2qItjUq97BsSPcQZfPkcnBuoVGkGncdYW/2oXD7maVegRKqYxery8Nhwf+ST2rKrcJo36DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AABxvWNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AABxvWNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B1AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761883793;
	bh=WMUm6mzDNH1xnBUWz6WktSGbWLSPM8RAttyhhr2bwIs=;
	h=To:Subject:From:Date:From;
	b=AABxvWNwjwH2j1H+DpZSNZvQzzoYcMK1RM/gktAm/UTLdVdiBMheXhk2+MFseCatX
	 A8Pn7ODBgL3Ocg+IG/yGG+1bLtDoa240UoLicu4stZfjoCKBV2z+KXm1NXXbGdH0kz
	 iPgANEKJzZ5XOP83wxGdxk0Myk5jR+hxd3xtXf7ctcSpuJ0EMC7KsH0nOSTeva6HJz
	 LWHiFhWIK2ztyOoG4NvygLQqeUKphNdI+5UZC4ok5QHh/7Xh7izSj88u0OQz5agLAQ
	 tuHjmxy+alrab7rnDLzpXg4l+oixSPpMu/6nYfzKFmYKA+iKyiaII3WOlF5Z8fgqlZ
	 Onafo3tCLeT6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97070CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188379358.29262.16335611371627746101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a68aa93b9641d88522f23f7b103f5719944f1baef798bfc60d09c96c081cbeb
Date: Fri, 31 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761883793
