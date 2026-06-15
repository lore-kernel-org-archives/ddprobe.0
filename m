Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571FA3054E4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781531194; cv=none; b=S+OHRJjHQNBGC0WAF6TaCz9RDeeWHbxU2BznHZ43D0sZVptTCzWlRpp7rTt9fI9bMJKe3hIDLFv5S/AiRyAYHpHh38KiXGxouQsfD8ACb60Mgz0zdCuscYXc4nSoXYDifyJtJs6XJHxX0LEKec26bJrD9sA1BwUOX/X6eSs5js4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781531194; c=relaxed/simple;
	bh=aNkp+7FPy9+pwAadUjz+O1CBjMjXBXpaBh6XuBvVO5w=;
	h=To:Subject:From:Message-Id:Date; b=dRwi0YYoC3TxULxo8KjhB5IacTbU5zRJhb9+cT7NAdgCUkWt2ggFXPXWBp9AvVTJcZRnZ169+TNkX/pvGjMsFoBlQbQHoCkkWI7nO2DUrg/chEGaQYNCqFKaMtlHLKGqMcEtP5rH8LL0efJOMHybb9Gpt3U4MWWhyg4ws+o694s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxwoLiiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxwoLiiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE14BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781531193;
	bh=aNkp+7FPy9+pwAadUjz+O1CBjMjXBXpaBh6XuBvVO5w=;
	h=To:Subject:From:Date:From;
	b=cxwoLiiXwY33CVeuxZWVzSCPNWqUobJyFvrOSSQTq45Frgf5gYRrnrg4hO/l5zbRe
	 hbreLBW4gk9vMYhfKUaFcya04PhIqtuN58bluG2shvxytQ1YP6OoXXXdyA+YQyrzTp
	 yva58u0bE1YFLuRqW9OEw/A53sLNgiixYDKobQAOqrIcxpVj4T9WPdJIemi+LXVAnP
	 tfvzumbG7wd/8ehp0Z9P4hQ0hnjKY865OSwIR1MXdqrgpMiKCzdWAk0ba5+j0cyeHH
	 FcMkE2Y05OJe4yfF/dFMlstvCYUQ0gGwdnwaTsVBvS7lwI4Y/JF8bGDq5UP2UljZij
	 Jsh0kvKacLCHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5F5CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153119369.2235.14876709030473098937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d6bb0ccec4d2809a8e275ee134e73ac95e522bbe3966fd9b88a940d4558509
Date: Mon, 15 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781531193
