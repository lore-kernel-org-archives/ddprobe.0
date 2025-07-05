Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF5910E0
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751725194; cv=none; b=tgWxn1VcxkSUJDkSJ6mGNXYlZT5bxeOvuIydZfIfc68kiYHeNn4I4n+fTKQsFqXXDiWs1Kx40Vj0VyxqutEmgDQ5z2kwKs6cA6cCh35w/9XAZex5hehSinPD6MU7B88BXAk9N5MLBgiA+Bma+j2SpuzhcAwWK02f68KXHdmmqHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751725194; c=relaxed/simple;
	bh=yRxB7oODEQ8rMajqi131MAWZCkbuOz7bauu4q16XCPo=;
	h=To:Subject:From:Message-Id:Date; b=JtMMJ/NK9KsoDZIzqjLEgverBzB3WsS7MLH7PAShqUc87lNVw3/IEj75F0O4CKkG6YJBT7GiKrXnwIQPR16PWolPdJIouMVLbHektUG98TNitJn6kUyFv9TJmqUKFU3B7Ant10zK9bPiu6WsSksoHgTz+8hbE5f/8XJ7PdXSPa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOj2fQTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOj2fQTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65C6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751725193;
	bh=yRxB7oODEQ8rMajqi131MAWZCkbuOz7bauu4q16XCPo=;
	h=To:Subject:From:Date:From;
	b=dOj2fQTtWC+oEXHCuxzYcoStKfZNnkJozytFa89e6c9DLUyx7qwTy4ZrA8nhkxHl5
	 lscgvuhEhEB/3ma5tbevXKm6ow42Ys450OvO/37g7PLx8x+27Y33meGilkrx6RvOB/
	 XrapNRTwxF0mIT/hkmU0Dx/9y53V0jK1zwWitTf1PbkBZj6xrf58iU0IP+HC63vrc+
	 iK45vXVlM22WB0TV49vAZrzYTdSupG94PKMjkCocZ74B8CfwlFZTUSHXWOFb5ItpfR
	 xQSaHST2Zq7G0ypxXlqYNiYvzROe90fzbrMCjpdhCWbHY8wdVL6EAaMdG9WUmErQz2
	 eIlvkln52vlCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94561C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172519357.304.6134896690767008844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c8814695f382178b4311573e64a89e782c4a817e774acd5f8218e7b8de23dc
Date: Sat, 05 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751725193
