Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361751474CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761232794; cv=none; b=P/7mIVqPOFXAooYNbe5+BFBRwtzEIXR2mYjUJjbtnO/wKVt3kw8nLux2Q0w2tPwSnfoMKw7feZRaVX+ghKONB0uhT6obzc2QHfskAzG85TE2Z5asgQzCGkoczIiyFYL+R84Uin8Mei50uLZhhU2VW6xwofErw3xGgokE+//OnTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761232794; c=relaxed/simple;
	bh=uGiLrOaUyRSmw3BckWFHcIGqFzQztsiI2SRBZ/ui/2w=;
	h=To:Subject:From:Message-Id:Date; b=pEfIyql5L5Jt4msokrsHQKohHNCNpv0g79DCLlXwvAYivUgUOdDRbT9jOspokkyWsr2994i0bnSBbaDMvaTgag1NAoWBIgoDft5FyDbuHsh6Bz2/i93MUj74p8+MHYZPniUZ+wl9aBvL3ZPMgLQ7GRcZ9Iyz7QwisPq21D22bVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJSi+Xaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJSi+Xaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10D1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761232793;
	bh=uGiLrOaUyRSmw3BckWFHcIGqFzQztsiI2SRBZ/ui/2w=;
	h=To:Subject:From:Date:From;
	b=iJSi+Xaw8w2ZcCSY/NO2N/biFrXqAKSkrgPcjwCNKyQvgxdJZqlChO8n6+UP0iwmd
	 ADKJnhc1OvDoFkLhCtLtqFFit/kke2MlhzujTbihKHtW7EoV0Td+3PJg8q3C26/S0a
	 sY02x9QKBl85AxhZccJh0l9+ZPEuzyRAe6bXIq8ovTNZLnwaZHnnRT9GMsOQz89Fo4
	 1G1kyxKhcXXHQn1sIZmFMOzvrb5Au8BnLAK0JCERD5Zja4GsgakG6EjxzeOmf6dh7J
	 cK4AUNbCAF+CCQGf/Z9WTQEsXtHHwhO0m9688jNajcnk85G/g5Wv0tBbS0bKj+djFE
	 zSi6J1Vhf8Orw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D176CCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123279363.18320.12704261682262496035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4ac6e32b5ebd03b0562c84f13b0f9426ca8b822d578f419f343afdcaaab1f3
Date: Thu, 23 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761232793
