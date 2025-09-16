Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085772F5A31
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758042594; cv=none; b=o2Poa/iR9e4GClzrEb2HSagyaoUTXzPBaiFswoojrbI1XGIf1WLq5+cRGo/H6Tl6uQpi7Z7U/0LHNktccEztRiUvDML3jL4bA4ZOBjlLn3z/FxPgTocQdJS398FdX4vyyCRmSI+WQgb8Qx+8zUCwN/2ACLJfyoLsRbsHEYEzMkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758042594; c=relaxed/simple;
	bh=GjRbS/cOz/MRXw8UYwF7DeIH7wJZcQTkderxYfyag8k=;
	h=To:Subject:From:Message-Id:Date; b=tU2/P7B2Xlmx3RCtvrEiMBxvgx6TgzHGpTmznuoq5RjMLkkcvcxasj50q1R+zE8tJnkp3xJEyUjZ5ujqS6MYYOecY5hJyBd7EjerxdBR9i9ryhIFecSjG98srCfgo1JrxKppMa5cawGQMkrYvyZdBNQoDDk17O5eWXqp/tH8DNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLkctzXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLkctzXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E981C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758042593;
	bh=GjRbS/cOz/MRXw8UYwF7DeIH7wJZcQTkderxYfyag8k=;
	h=To:Subject:From:Date:From;
	b=qLkctzXVj/urDgeO2Wt/flZOkf7cUlB/mHZMd/9h0fmwswfR2IVJwTi4ssBeW/elj
	 AhrDWZcodJVAIpeOFI9y6COlcKI4hUiKL0kKK+ur4nJjf62dzVKBIwmodZEP1JwW/t
	 AXx7jX9FJ7atbZRN6rGtm8DmK90yK0RfV1sb8r6M5MbKMRiufh8JWW/AfyLifQxydW
	 BlE7DIaY8i+6KOyjyk9om0FkezLQZKcn1EYTTu/iTOpxt2WGzhKX1WuDkoA3kTaJQq
	 BzbxqgxLdFffMWzRY1hjGkUglZLuCdq/wQp6zRgb3r4ywK5A7ztiO0P+VW013fI2/P
	 6KuV6BIt+ueIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119ECAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804259358.13178.4591395229285510069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9350475810e77af2aaf006b590ec5bffba2c16cf2e0303fbf778aaf8eace4c6e
Date: Tue, 16 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758042593
