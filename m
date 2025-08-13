Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C924F2EA173
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755079193; cv=none; b=Usd25YuOpKUkOzW+TzasvJaOqceSrHrXFjduS+fppM8gZ5CwbfxLuqj6ALlYxsdOA6KRTWYBANuxv4mk/CxS1WkRR9PyKDlUThfkSwDUWtHKA5XCwUHpZo2pnXo7B/Td1yN4Xus+80kGvU+pTXpk78XWXo2q92ReNB0CBXbqdWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755079193; c=relaxed/simple;
	bh=LxdP1JbBab0hKCscxfTQqD7eK2Yq9pgxMDZXr/bO9A0=;
	h=To:Subject:From:Message-Id:Date; b=LjOnyJalinJz27/sYcX9zgLvXfo7CT8ZhtLAof5rXsWyqjk4pXQX7hrujEZ6Drzw5z2zo/wUz7raATESZAX0DolnSBFzeYMXQK80aAaWIlA7vv/BcrQVqaIlGaMVAOsChXrHkA3Z2lWc+bTZmLqSg+Gu5rHr6R7VZ6keSqZe7z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlCrE8/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlCrE8/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B69C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755079193;
	bh=LxdP1JbBab0hKCscxfTQqD7eK2Yq9pgxMDZXr/bO9A0=;
	h=To:Subject:From:Date:From;
	b=hlCrE8/ALko9d0Z8PKEZHXn8NqFawPnsIjkp1wNktbxn7HHoTCrks2bWnY+7dIu+F
	 5z1qipg7mJjqVopSH1KxYJ3lMgEwFb/QHvfxfsxZa/9w5LomZTleoQ0tgBOmRJUvt8
	 V9lhnjcqNwgQGC+luSFYRzMgWVfJJf0rKWp5Hp8RGKF+wWrMiCQngU6Sf/uX7D7A6c
	 /MyQKZveAX1lgSG3bBjIzgtYWR+FyonR+EMEV/LSVrcZw4tnDZVdL+Dx8rO5ZhKaa4
	 SM7F+ZP2ZS5/yg0gNX6YLOzbHj7iadt/0e5xN01UPBMj97M00G6AHr60nIhU1E100a
	 7QuXppzd9fesg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D85C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507919357.15266.1544334860981573605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c953102e1f4ea6e73e5362d1997ddde5a2f2a79e1fd824f718bda5505309c8
Date: Wed, 13 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755079193
