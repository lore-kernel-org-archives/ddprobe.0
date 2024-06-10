Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50349335A7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718011043; cv=none; b=BI5VBc1qdf/hDXreJeE5BObI7NCbF/B/A3fvn873KswS6YA3KysxIONz4Q26DJdkxTrzIQ1tUbdn/tWFqJQoHYTP3enwtWbSZcvINsXm6Q/Se+dSstoNUA0O2OLow/A/vWhxcutSbnwqq7W2nebALPKRHRRaX4R2Fj/SsufdFno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718011043; c=relaxed/simple;
	bh=Ss0ATVzMZR1jYbS8jRPsCZnn6thYeKCA1bzqcoZO6SE=;
	h=To:Subject:From:Message-Id:Date; b=HoDDZv5uoI0xapAzvEJ3FwPWZ/QCXDJe1HGeeL9vEE7b4ddVJlZkWMSNphryugMhUJ1UiowaFzFk6cnhKJYj+L/Dq5ZvXgLSRBch0FAt/qBrOBZFeFiQKZlY+GFNI9I1QxbqWHEHqeu3UQoPksgp+8psKUQHN2dzUfF56/jfZMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soaeGxLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soaeGxLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2BAC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718011042;
	bh=Ss0ATVzMZR1jYbS8jRPsCZnn6thYeKCA1bzqcoZO6SE=;
	h=To:Subject:From:Date:From;
	b=soaeGxLHVTmHunnSbWbXAFqPyOj6CjKYfxxUu8QIq5go9Sekl/NsLXaSXnvHp7uF5
	 AOr2pnstdzBXsxKhuQlICvuGI17ACFH2qDROghLNQQYbLSQbvnTJgOHAObWcFS7qJT
	 JwPQTbj2n3X1y0OS3Ryg0SZcJ5NPDgxCJAKo5LHY9geiS7urKf6w75dAYpKlyMu3xP
	 PpzUKzDBN8rnI18W52gufJ5LuMz8ESpVhSTZV4Zb75bB+kpYkmNA0yAZ7MyrC7Gg7J
	 RIaFdm4+IkPy5/p45lpQsP1fUjDW5T6RjFgv7RJrHjGt/FluIJBfCxfsR43jwj8rs9
	 m6w8/HQXH1qlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF66C27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801104276.28897.12828769264982896304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8632ddc4529e2b3d6503a39fcd31d13765768f94c92d4d73c2ff7f71e6091ee2
Date: Mon, 10 Jun 2024 09:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718011042
