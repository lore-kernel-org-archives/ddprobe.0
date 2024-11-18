Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC6417597
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731957354; cv=none; b=AVB+axIldh+gVXzAQiiuHslfGXmmjmHuKo6ZQYMv34hWmUxx5D7z7/9sQzq4p21aQY0oJzZ5cBQuikwvQZdXlQaqJqCyapxwWhNVHk5j/1vBpKY77xcyCzCyDy9b4ya7b+D07ErrUx4kWXBUmPJ0jqvrkthHKLBqZEe1ZED8/S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731957354; c=relaxed/simple;
	bh=CL5RlY/NLxkoVXb8JJSorLA5Kybnjy7JzYngJ0pJ72Q=;
	h=To:Subject:From:Message-Id:Date; b=CQNSZ1IXl/xCcYM/g7R6o/2q5dTg6dWDNOGTrA5JWtONlbYjPvQzF1j9R1JdnWWI0lssfLqR8LEBnce5L8XTQWn0nHvRCa+PZvXny37onoLx9thDWHmQbcuj5wKqVBlyg/agnXRjKuMQfuAHTU56r/Fi2S0G2QewbqRRV4AOjqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xnpril5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xnpril5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ABEC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731957353;
	bh=CL5RlY/NLxkoVXb8JJSorLA5Kybnjy7JzYngJ0pJ72Q=;
	h=To:Subject:From:Date:From;
	b=Xnpril5jBUAffxW/DdbdiVDrqtyyR6eQNOPGIlLhfZdhKZFmn/rC16f5b0GF8OdiT
	 fN3fZEpeOTkUy85ptOounPfkahYJXzOrs4b/fSuqrqRX8gZGRPrFlqst3xSae3HVfu
	 zxBARC4EM58K4FXTkr8K5xjMG1S3c6KCRliHu8oawyEVW88pIB+KcQ2awt3kaIwHma
	 VGV6YPSFzTV4hlKGmp+DGMctDLEKHzllyu51+aHsztfhx6GFBv8FUxsEQsLuE/dvH8
	 RXnRy8v0hXY4vmjSvmfO66tNdMxrKPo54c5xWVcJRKI4gEJFW1769nF8PlsDJPZ8pe
	 L/zMLIhh0DwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97812D591AD
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173195735361.18720.17759013805039421001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5996cd48c68753ed773960d873d182c171ecbfe7fb8369662a01febf33bd50c
Date: Mon, 18 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731957353
