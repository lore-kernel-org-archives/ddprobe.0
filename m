Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B233A50
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751934594; cv=none; b=Yjw8VydvI7D33cyqUl/mOgwBq2VIKOrMT8la4CiMShCgpOxQpUOiWJcbAbsTzk4fZ4/tOXQNHuiOx4KjWZf4pD1sSOgU/hakMbJ6/vr9RVzKw7F288+GOmL2gNckYNfBfYldy9jowAv82tEjVpi8C9hxzVDBGZfTlwNYsCN1ewM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751934594; c=relaxed/simple;
	bh=z1aONFcTu8S9h22cqllwuLCUroR4gwCKHFOY0zu2ZAM=;
	h=To:Subject:From:Message-Id:Date; b=iPzYfz/m2SfK5q0XyV8LNVlEA1vQFL8HCmjSGf2s4SurxlRWwfJgCbtuJX1JA9QQoajTCxH35Js1C29RizBxkQwOEr341rqA+nPVgDI6fNYWy/NEgFn9R1iE9o8t9i1Mmdxp1VuNPOzw1zJRA9ZqYkGcLaYA2jnOiq3wTmz1trs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC/jStv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC/jStv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB60C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751934593;
	bh=z1aONFcTu8S9h22cqllwuLCUroR4gwCKHFOY0zu2ZAM=;
	h=To:Subject:From:Date:From;
	b=tC/jStv+EbYopVvB1iNCExqzBla5ExLBSDqAmCQEgS6NI5Igy3hLgOfjYykefToRG
	 nnsvkJz6RmdQ6DZPWxoQ7xsdGL/aPt3/zdiJozKlyvYJrvHYgxxr4yXwud5Uk4/5rD
	 eyY7ZNDWHwGUSb6vkc/tTSxmkMKNKc3glRpLQORzRdldsE+0+GEiHHnEx52WWyAxkp
	 l2+KHO3Rqh6swWhtV/ncJB33LAWIONlYqaXPCX1UezcaAwQvbF1aQ9E+hnOC97cUSQ
	 Oi6Pde4ynSO7G6E/Dg2ux4Z0dN/6SMXU+k48RNWdK+kD60DwpxqdSceGhnSjZ/3vOt
	 BoVilxr9BgYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E82FC83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193459357.2793.3710789466449404056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1020f7585a8caf2d0218c778ce4c53d92198d1af6c5430cfd516177ca1c4769c
Date: Tue, 08 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751934593
