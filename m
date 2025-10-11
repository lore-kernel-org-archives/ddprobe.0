Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6572594BD
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760200194; cv=none; b=hIn12DAfVI/1B94qyRggfbE7e7yYtH0f5vf12WKVWOAAKRpEJiP4R3scV1ZGVshZHgl5vZjWfyUBqN9oYMby0Brs8wXqlgZ7e8ZAui0Jw3ytDqFbR84E75/HXEXLQV1rnC0AvsN+x3h3NxLZqn3Qy42wSLmnc+AQyZwBP5ac8Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760200194; c=relaxed/simple;
	bh=8XWX79myrWdSp7Ub3D9Y3nDdRWtO6ic9fDnedyfr0S0=;
	h=To:Subject:From:Message-Id:Date; b=e+68zrafvrIAuepTnvZ+rhM+fl9NnXXnmhqi5sgKfMsSfHKKKit8IgSmEKVW8ZpHOcgvKt1rxrxWUtasnoEvFF/W93OIF/ABo9xuhWBnqPPF8pIurHAN7cj7bPFNMMTRixEop2J3qQJEA75rWyKQOcAAMEiwcZosV18JdovNzX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqtojJKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqtojJKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E1DC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760200193;
	bh=8XWX79myrWdSp7Ub3D9Y3nDdRWtO6ic9fDnedyfr0S0=;
	h=To:Subject:From:Date:From;
	b=gqtojJKhsmSULna2dnA9BVfO6lkOgeVMeUx21iOmc0mxTceuYftzbRKy5uvRb4U2u
	 KLyu56InTiOearrsS6TmQqbhDwO5Dl3Yclpm7cvsBb8rKAbRvESTyXXJfwXos16bwe
	 LMEDCE/XeHtKddaE+IoylYvc7PwxL5G7oTgpMqqlEFRXAStjCvmlvC7Qt91uR6tkyX
	 dyyDbQIwTzjhk5l85uyilIcz7+yLj0DmsAyfbj5QxoTWZi9IEMboDIYcL4N816ttp3
	 5QkAC7B76iaD5QAOoNPkaqpfuXgstmbI5x0HfT6GYJ1g48XaBd77nR6+U7j0AoDXZ2
	 6dP79cT+82Ehw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECCCCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020019357.23703.12452381965559603077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ed5f167218253e7e41be903b10367e97fa22d67a6871b6b1d0e3e158b8a091
Date: Sat, 11 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760200193
