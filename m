Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1399122579E
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762780794; cv=none; b=ZpDw5zimYMmod0qZgJxRkY/2ytjsgFIVXVfx9L4ulvw9oLYToznESV8K8vk5zxjAOdIHshW7zEBvzYk8W6y8Wv4GllQYyCglyjA6nMKSNjdG9MLy+9x1+3sGnA2kznBoKYsWChNkqzWB4iUmQxQg69pEaiyCXD6vfBGjy8+hFd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762780794; c=relaxed/simple;
	bh=4P+IOPDPKBtTZIBXcQGGjFeDnOSTyx9pZ+bUisyxto0=;
	h=To:Subject:From:Message-Id:Date; b=h1B91pipj9o2NAr/VBC2BmcIVl/5J5oW3jBkxVIfFJYDUQ6BYWaTEYgdwVnH9U3um55MhPKl8ZS+q9kaG80Mep9MiKlWOdO+pA12cp+HbYdcdhhsA9pHfaXZCptWlM+JjP0RbWbIF4fwbErrnCj7e9LlQt7I0fOiuiRJBDf9US4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHJZMqxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHJZMqxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A3EFC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762780793;
	bh=4P+IOPDPKBtTZIBXcQGGjFeDnOSTyx9pZ+bUisyxto0=;
	h=To:Subject:From:Date:From;
	b=mHJZMqxe5yLebLCQX77H2OoU0tRALVTLaYnTu7/DtW5mm3ClLBVyf+EjdKqiDDFUK
	 rt/jlacDB+z2CrVatHLzVZxgOUWyPbJJav02nv6gqjPkDhndr37DAlJn8TdhfPxnTG
	 dTBuonoR8ogiehortiAMCD3Ao90HmZyajR8neunIAj1N4pL6ifE+yX5Ejl/1DMtKKW
	 +Z07RpBuHOOC7ST53+fwCj40BsXhUPsYh6IliUeyabWNYLiKAj0x1TGrjIi46lh3E2
	 HSfQcfVQpbxE6scKwnbjRlaXdA9kdM/6essl6GWfX0ud9MdHEYgHZ4+dpgr4sgjN/r
	 ootgzmFzMseQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2EACCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278079357.28725.16208840176747640996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee613c9956050a84e3060d9fcf01ffea47ad1fd5e27421ec7f821a4c0cdca25
Date: Mon, 10 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762780793
