Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFBE4C85
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738544154; cv=none; b=TahB4tKQQP40Dryt3uUwDeWi0JX4nGjBthC9ZPeS2tA6Hy9tYcVCN03D9ydqvz4Jnoo1YkbZUwzZpOB02D0RMSgSKQLnPuLG2Ai81slT2cb34mCz+8N9Ke/BnwIzINsAQP/iJTPQFNAdHWvFI55vh7ReRqMQgb4wQVxmSPAdZHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738544154; c=relaxed/simple;
	bh=x7qA8PqdYer9pqKMBydDR+TGCrcxlXrVDBnPeqDumF0=;
	h=To:Subject:From:Message-Id:Date; b=r+0vpkcRdoLPhSk3MlbW35PN0p39L7U6WZqwx2b2G73/DYqAJCNsAtZ9pGgcvjJgzqGCqPLV/3d+QVsaD5kbj/tdF4RUV+UzqqutGaXkPMWS7DXh9/fDCQYo39H6CDQ98NpQ6e7OUaywz8J1iom8P5q4qIezIUKZbb+qD9hHFC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNyg6xOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNyg6xOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7317C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738544153;
	bh=x7qA8PqdYer9pqKMBydDR+TGCrcxlXrVDBnPeqDumF0=;
	h=To:Subject:From:Date:From;
	b=nNyg6xOko1xKe1bbE6MVxMPQC38zxRUWpWDdCbTzZPad8lrengjACUOjzL4rFVD1A
	 D8lsglO3qo8rWqBU0OY6KWWQ8yzIOKVIY3hYQmgOaFts833ij10A4BlPj0sbIYfyNc
	 HAa/Tsy33vuhl40XjtoyKLY2Patwyrx+nw8XAmLg7IyLqPMm9+8Uk781ooEB3OIIjS
	 Oo2u2NWWkVWozFfkraK8upBXqP0RNzPzYWP0kfvAzQJElTpUJjtjo75gGoW+WSC8ii
	 9BtPzCopDwws8c3hSa9kv39VQme/Dxf6gFVshy6uXWdIqxqKI9+ZV0XaLcgWY0t3e8
	 jsKFY03JDns1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1788C0218F
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173854415365.24361.15599697128474044510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20aded605c9db5cdcd4c2bbb43f4d48ada7bda43022f38ce8cd3485fbbcfedf2
Date: Mon, 03 Feb 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738544153
