Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382DE30E839
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755873594; cv=none; b=NV4YCQFDFOjZXEs1AbUEaQjve2PXhlm4njQZsndnHVy5FXKv2xLtTtytuxDHA+rIcq8agBfkhS+twwz5mdlIaesu4Iz00gCb6EToTvBXRwkohRPxW0nBBhuy553wlFDvL7VpU+J50KgJDR9ONKJ+Mm0vv/HioMje6b+Xf+o7KX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755873594; c=relaxed/simple;
	bh=npacvCMQmEuZYy5pBUGJhbOBnVqAhfvKQu8k+rvNNoQ=;
	h=To:Subject:From:Message-Id:Date; b=ug97pf3xR8juvv+fFiTn1SmrKU5+Rt7239xdgN6ZLreTURzwPU5XW4QjMwjyEupyWy6nuoGfT9z+dfc/6tAxB6oN0Hhsh3o/wRAhckqPZSOGUHm3FxB9jIyRhI2HDMpLot6Gd9DZFJZxrrOAUfzHJa+6ZjTGuT0TfGq45ONKB+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUAhYUtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUAhYUtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE0CC113CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755873593;
	bh=npacvCMQmEuZYy5pBUGJhbOBnVqAhfvKQu8k+rvNNoQ=;
	h=To:Subject:From:Date:From;
	b=RUAhYUtZo7NSmCE0SN/aF4UYn3v4PRk3ES/UGDT+bzx1jIcGuOuLfjwj/HynI6mwA
	 DTLdv0P7oJFroeLvs3PHGrWM51dktZf6FbBHRx8B1Ee2kiEXgnS3qkM2CBEU8yH/5V
	 4SBd1pvKI1Fmam//XOvnVRz1Zvuku9w7HosmBlltSiVam8Nj/caSimBsl0odEhzTnR
	 CKUTFzQIgho8SDztvAoJgmNpjXRrkOJEVzRO0AETb1EMirPLBR30HPcbZaSeQecutD
	 nSt8qjfPJpIzLG87zwc7u/oc43DYa9HLGr0OxKkXiRZ823wl+rnLU3qnErH5qQHb0b
	 uvuxLsubcwvWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EBCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587359357.25694.10727743118129397666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b0afddaca2213aee7468aa426528b32a8219e1c94fb4ffd512f1072bdfe7a7
Date: Fri, 22 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755873593
