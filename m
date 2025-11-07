Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E90A19D07E
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762501194; cv=none; b=EsnIYHWhcy0mssZSIlXiExM84m75xlRYUmvuyu5XVDoM1K/oxZbrfeKARvP4LPjxLQ7tKGmZvIZjb2wK/eGa4BUULNBSpJ9on3wVZQvL09IsOuCwKv5epz8hrr7q2zIhqLHBrlsXXqWfWViQ68XRyxsCMJtlNLZ6MtpMyfYMbrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762501194; c=relaxed/simple;
	bh=FKd6mJ1oV+CHy7PBN5rBG7w93VnW2/Yxrr2IKSihCA4=;
	h=To:Subject:From:Message-Id:Date; b=G/1ym8vvu5R3S81nncq4rXFLke4sL+5Dtaya9QfE6Y1TYSOvwB8H8ZooV4Nv++GdHday3b4Goir77LzUdtrcHqJwlXiKpZ8UFVcQX94VmhVCYingiYAI2oVfT2mmtyaERTpQbOzh+FisCL7v0wjT5oEveLRmjjkphG9pnhUlN3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hI0hV5cu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hI0hV5cu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA274C116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762501193;
	bh=FKd6mJ1oV+CHy7PBN5rBG7w93VnW2/Yxrr2IKSihCA4=;
	h=To:Subject:From:Date:From;
	b=hI0hV5cuDre+NDebBcUYG+gvxsPa/vNU3e1IZZ/SeZszmBEBgmFrtWjUXwCqGJKTT
	 I78t9USorFjoIj6fCpLKbWrkhtDQXL4G8EgVVVLJtSZ7CyZLQ1n45BqHPyOjXRscyt
	 3iBSQmeERAavPNL1W5YdNfRLXMsDiM4/wBKGt9LvRutI20NTwZvmi+gYyzpm1u023C
	 lh+CkcACSD9ObXKummE8pxsH8FzTJ7/Bp48UAf4ByE6e/3WJAA0E9DiG4nfWmN/fTn
	 oTN2rhlXDzRvLt3wkt4TTAyjBbBBV2jcBRAm92BFk4H+sVhe+iiE06sKtoTfjzXpuC
	 lBYFz+zgCqiPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E4DCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250119361.12894.5157162081240211098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059d777eb7cdc0ed2c3fae002c93488fc82fdd7ee2dc41aa7a93e4704e422987
Date: Fri, 07 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762501193
