Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743BA2D4801
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763409114; cv=none; b=UpW4yzlcp6ZQS8Lqu4Aq+9rabQJ0GhzA0qK/eOwlDvxgP1ZSVq9J5eHP2HqoJ1GlKm7Kwg+Fjc+OIHOQ0o8Bh7xEjbl6pN2BkkJuAvTiAIwtZEtUKoHf1aWGxy4ApH2f4LAqF3LGzsfVmMgsYH63kKsWNNBc+rEIVX22qmKzWWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763409114; c=relaxed/simple;
	bh=nV+pzDTYF0rUNxkJaOgxVvCE5wDcQ9jRfwOZ+gY55Pk=;
	h=To:Subject:From:Message-Id:Date; b=VuaV8l28h49DoLvKklU3trBC8IcEUEAYVL49ZryFcrVbNbHtqH9Kbf3WkfUE9QsEk3K3GM6Is6WNiyHb9EBAlC1O6gsD5+3R9OM4NNPYeAJv/nG17CeB6Lt19iZNdNU26BY5Rmqq+OWqX7Z4aukuYWOZvDIYuJBbvsAQSnUMkLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqA53xGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqA53xGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CAFC113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763409113;
	bh=nV+pzDTYF0rUNxkJaOgxVvCE5wDcQ9jRfwOZ+gY55Pk=;
	h=To:Subject:From:Date:From;
	b=tqA53xGIZHlkaC/qQaOj+noa2PedQ2JWEAS4WAUZwlfVwK+bTUJ9dyXLyxuaHqbBU
	 4YjANeKqN+I/fH0jmyARD96lp6knnN/xMFdZGwNpLY4oFYxGS6M1OzWe1V7Zm7MNUo
	 0MbQ0Ji1n0xjVwkJHN8sPlQ/sQfOJR29NrwcB2WSZ2hGvhcLd2KHn7Zbihp+LSxvtX
	 iL/7WyAWIlFCawqSPzCa7BVjSt+dX4IiZgMvVSBjBxcqJszxoRYxkDZRmmdIuoNO6Q
	 Y0VArWSqZ3Zq1yE9o197/59AEa/quHxdGfWP+/8xBsjxHpgULQU9JUeenR4DKCaUIP
	 U33kSHQpY4+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9812ACEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340911361.6210.12209789250120112939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5f4643424260ab4e2d50b3343190008554447eda0edc0a543056770f090e6b
Date: Mon, 17 Nov 2025 19:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763409113
