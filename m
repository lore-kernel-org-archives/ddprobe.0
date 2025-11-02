Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D3B79EA
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762068594; cv=none; b=Vvrmx7dFLF9X6JwVwJRPT9VSIbXkGOcsuqq7+KpfM+risMIfwURGCP1XWgXOgNE5Vy5hm0VeISt/uKjfv0bysiUkDqOC3AAxvHUYez7Z8OQ5HtfCGU3qaRjD68pBf5sONzC91eJRea4239hJ0B5UrzjLqJRiEkM/BlMWpqbSoSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762068594; c=relaxed/simple;
	bh=3VsMvuOK21BLXoyc3opSkEA3xkn2j8bWRcfraG5AitY=;
	h=To:Subject:From:Message-Id:Date; b=f9IvGu5z+IpR6ruH8tojolwFKFpdv6Yx4YSFmf8u6EOMt2gcjPhwpsCmDvsQ4AwqC/48rVMBCsTIwuoW7mPwhJN9KgzsVOKWFDl2Bo2njMqwOcNJ9GJ94WF9AWEuK4oXO7XBHDI8TmERHck6cVQUBiXqiTf1bY8mU+8YCEw0LeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3UczsfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3UczsfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC42FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762068593;
	bh=3VsMvuOK21BLXoyc3opSkEA3xkn2j8bWRcfraG5AitY=;
	h=To:Subject:From:Date:From;
	b=f3UczsfQt7Z7BGA5utM2D84AXGNU2KFENTQbkJtt5vQ6oI0Z2GcbjWbgvNLBadOqz
	 63O6vdfFjFWUVhA7aG3BpjZYxzKlZ1i5aEjQzaS2wky/k5ATXUIvmlhgDQwiR3YzGc
	 V6IUAsDL+qQ4BUc5y7q+ICL08/F3/FY7II16mTJ4b/tQwTqz9ZQdRRZbNkpuj8EOOD
	 4TUowa5RP1v8KpE9DmkTJrt7DXBn6Yk5TF+HqikqIA5I09YFGqoCSwNR+/O5ORsOL3
	 k5k85KUo4O9tcaJCiAuw6S/8wY1j7d7OC1KQb1lzS3pTAckkkwM8GAheQkVZz1EJ3b
	 CR/9gCbQglvaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94678CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206859358.4220.15851512894167041713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c571675c5f694a341fe3504ac539b48cabce6974f92ca91b5de28a5e38cc0ad6
Date: Sun, 02 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762068593
