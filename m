Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAD8A47
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728432954; cv=none; b=pAxiEBK3HKWbThDJnaSUgk5mBIh3070HL4XSg+XnEu0q/M7dm4JkN0m+R76cMnVxy/OcvSLiCSLJrfTESfQ+CI41avoOO0/EkZ/0dG4tnVJQxIyR2dGUYUZh1NI8vLTzgi78uonTC0TcbJqYC+8gJi6AGQcGRmeoscEfaOOSshY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728432954; c=relaxed/simple;
	bh=s7PYsDu4lrWvcK3zzNCWwOtZXfPIpCYOd+P4vwsMs7U=;
	h=To:Subject:From:Message-Id:Date; b=fZAaJuwslfhpAxYX8xGNI4tXMeGtiScFCfG0X2yo0+QJyuzZDm+9OH6fEWQvhrQrmpznfUNZLsz5K13ykiWNgfKlovQXT7RmQQG02hAdfuJxFtvgAw4eXnoWNkKdtXKJmwuh55bz1SeX/vbKDMeHzPVUTUej5ZBnz/+wBaqfT9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUQjySUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUQjySUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2656C4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728432953;
	bh=s7PYsDu4lrWvcK3zzNCWwOtZXfPIpCYOd+P4vwsMs7U=;
	h=To:Subject:From:Date:From;
	b=PUQjySUjLPzu4Kfb6vlU+3xCbY5gMIppt4WpG5Nit+3BkX5xcbD+f5dVY6DpRiRVi
	 p9Z+0m+5ws4qQO0QsYfm8fXN4Yg6mpM6JJ3CsXhOf4gi9jnIQuV7zEVGh1stnyV+jo
	 XSsI515JyvNMPkKQM7h7z6puS15pCu78ZlEOmtGzFf9j/iCD+nSL9GA9zuRnKrLzkz
	 VGRkKOy0+0xRQEnlYkxmMgHJ8ftz1OkXZ7yyzeJLS3lxy65lb4t3NKXsuBqdrhL7i3
	 lCbHJRBX3dgd82kBjhgetBEKHQKQt1kGGK4ap7Gri9Ql09T7wOyjWrreGIauZzl8m8
	 PeVYpHiviOiVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64BECF042E
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843295366.32709.15117946227478865340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839dd93163c7c70126dead4699be552871338a006fa1ea38dffdedc262f46739
Date: Wed, 09 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728432953
