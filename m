Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B41F4FA
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732341354; cv=none; b=UDLaPyW8uNEhtdeaGSkHi/wG+9OoJrgNDs0/fkqfoehEADld0qH85skQj7I+oa3WarqIAjFfqbBUFTqUYNBKAq9933or7stq9NZma+lSZ8PtH2e6BANFKGjXDqWexp7tCkIYjtM0bXB9tBP95WRRWQhGNt5ZiXAKInizzmO/wSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732341354; c=relaxed/simple;
	bh=BudGyABxXyQJOz2Xb2rkQ4OBiFqtlvrNOAGTlZo+wSY=;
	h=To:Subject:From:Message-Id:Date; b=KBXYLqQY40R+qx8Lhyq1FbjU2JaTJBtyRasTT1BgulhcEblWIMofYLct02pB30A3Td78epcFOln/T0HZjnVkx6qivM1jqRN+2F9VK8WEgf87os9EGpOmhO/71J9v3Z99LSwob2OjNcFVeTjOusUnSApK7CsJqiMDzkkNVrRr1sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnD51Gak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnD51Gak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4042C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732341353;
	bh=BudGyABxXyQJOz2Xb2rkQ4OBiFqtlvrNOAGTlZo+wSY=;
	h=To:Subject:From:Date:From;
	b=TnD51GakdJAVx+mdzK84vFIMWEHXyJ1TK7N5c+FkLD6wMT6s3ZVeB1iTdFkN6Yagm
	 m4+L/RhCQIn6b9omfQCJfFvWjoHPsrraipPpK0mkcyS8XtE695iSx5ay/J9SkzpEBN
	 f4f87DNm+sV/FiBfLl/OoypD9Ua4/epLUVpxCTNn9FzsnuYcbv6bMsVuo7K/jn7GTh
	 msKDNivkId4Zwt3cICtUHWsmiJAO9dvL7BI/WtqgiwSlSdR8XuJluAzoJyrUk6zO6k
	 WA/QUQI81WyFaAcoUqWu0jZVrWobpdKU0lGNYkHwmnjq9tMoIsY6D+6A2s3aGxx8Hh
	 hdy+gAk+GjBbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DAFE6ADE2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173234135358.13274.3284151441319090690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c102c102e47d9133cfce67dbc409abc7dc031a8b1ee77168707e9aeac2b61888
Date: Sat, 23 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732341353
