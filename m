Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A2434EF01
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773662094; cv=none; b=eiPvcNWIh7bu55JxLmmcpqQX5grawimq6OyvwY0fHTDcp9GMtO76O2CvQN7RpHhc6wdJG6apnOvuPl5LVLRgrb+d2iqEq9Zg2eD1EvP5WfIIpAUqjSOIqIOwcAZN9FfHelCm6FuLlPxJebJ/LaFipGdQ21U9Jv4YnFISpNXHaqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773662094; c=relaxed/simple;
	bh=nmMek7DzEfeV+S6AmI6s6KHzWvo5czGhS8crrkAcoJc=;
	h=To:Subject:From:Message-Id:Date; b=cucPBFilxCzgn2+IQrc7SilYluN4edkbhOvrSCdcY89wnzaFjAT432M9tpQvYqD6sAXuUy3EJnYbP86Ga6BHs2cY5uhL+H/Fgs4Tk9yKbJnVlXUETSbe1dZEymrzSNxDSQchg+ylz/7+VCoMHF1hvjGjGYOl0iJ3jtlXSMhW8PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8lNmI/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8lNmI/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF15C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773662093;
	bh=nmMek7DzEfeV+S6AmI6s6KHzWvo5czGhS8crrkAcoJc=;
	h=To:Subject:From:Date:From;
	b=i8lNmI/AdpQE5TUWhG6s2fpmpi7F1gLRcXfF4yc5MlTxVWJIaOA8nhdaokyKqslvX
	 B5wD8VChLsR0dNaRIQDD1bMY6FyrwFTprTtkXmGtKtvvsd76p62dA1snf3d4KDEdLa
	 xpcVBCL3nmidQepUPI9mX6zCX5JEK2rPegJ8E7ZI/zxQhOuDuFeOT1Cbq7YznIk42p
	 6ApB3AEBeZk5AePpjumckWFtbpB3H/RNjrv7uy03BxNh0Hbuxo0t+RgJLgxnb4wrBJ
	 H6WnrVlosj2LbG0WcfZPGvSajfMhdWqnUVMamSSu7aBd8n4hs7r74EY4VsFEFlJrKG
	 iJj8ZGU3kTbvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F307F46455
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366209357.26791.6091993391038758554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c5428acfa8c75efef270732259d97eb91fe459d8cdab6fd1fb81e28bef3cfc
Date: Mon, 16 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773662093
