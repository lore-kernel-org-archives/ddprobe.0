Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160FD3BB4A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765658574; cv=none; b=o8zH4DsQbzY0Zl18UZr9D8ZMDh+1vu03seyAPATcmERRZptMypFI00nEFcpZ7dANvDEpbXrOizMhosrsJIO6mHGt+J3/VR5iAdAxLEU3YDgZckGytY7Qqk63nc4mD3CkmZ8Z9c5XQsGJyytFw6ZKrwXzFiL1SVMVAPXgywyHXUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765658574; c=relaxed/simple;
	bh=2lxfWwICzgsPjXhzbNSksUqWFjPLvxxyG2j9YjwfuDk=;
	h=To:Subject:From:Message-Id:Date; b=UxGziSkdfxIl8k9rWVaZceQl1tAfVSCtZ+vpAU+vUQkxHvu9dWZ4f0+4QYQoPwjhMWYv1bI7xbXqNilbRuM+v/fc/oUqbvIYkQWMIklF/0Cc7JdYzStXdc9hpNN7txiIFelm7GuPhZxsHxiYX21BTG+I1chWIeymh2fAyEQT9BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=re2E/Ygl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="re2E/Ygl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D5FC113D0
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765658573;
	bh=2lxfWwICzgsPjXhzbNSksUqWFjPLvxxyG2j9YjwfuDk=;
	h=To:Subject:From:Date:From;
	b=re2E/YglVq6H/DKGfk4KeqYkkbqqDbxtFERdcd/2ZCQfbGeNiOIVXS+dSuW7N0N0z
	 h2AuDqbaBYfACLo621Nljdkw4GvNxJBfWxgMICy33CKk8P/d+g4VO6R9JWZuCHzxpB
	 YfemEwYP8CWFDPy0X0g6ejpZAHOdM3diympBvAomiimjiB5QU5L1B1tglEm8x2vume
	 LFzHbc7hkNPw681KwexBWLNTwx2mqP6tqIUlWLnWymRoU47S63ad7JInz09UXHwkio
	 bKDWUogU4ArC+WLHUAtj2UnJhbeZMWfA9w4OruVMvFzNpebghP4YrFg1AGskG6/725
	 Uh6mUayHdc0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97755D5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565857358.31889.6224672922383992166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6021a218fcba51ccfbd0999d9015951c5af2c2124c0c1d727186813d8eef433
Date: Sat, 13 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765658573
