Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724F613FEE
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716866063; cv=none; b=nt9ANl/FQhL6bpoYZjSGPT3OW91QMt2l3XeBXQlQhpB8Cd5CYpoix0AozFQb3bv4rUjBnryDzNyGQ9I5LLtP7U+dDV4Nb+XiKAaXGA2lTYtog3C66U3/flO5y/f6qyejRnW8Lg6sVd5vp7Evjd6DDbvM+cfTJM1h0SrnV0EyPnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716866063; c=relaxed/simple;
	bh=9ue+0Z5jtYuoJhgFNqMSlTRUA8VPWUj6fLpUI5AiZD0=;
	h=To:Subject:From:Message-Id:Date; b=PCsiRQ2ErCFl/3yJDi4Jnq8wsyETC1SazcsRXBVUoe2uYMjRLNdiCjFcNDvZqO8gDfLh9m63Otctt7hB3J/VeRanRPQEed05BtNRmKvFi0dWEsD92TAved1NKx+9SVmBJwf3VGXy/HNJvvmvBsnMQGr5jQMBRO97/WFNX8nzk48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e68b6VL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e68b6VL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87D8C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716866062;
	bh=9ue+0Z5jtYuoJhgFNqMSlTRUA8VPWUj6fLpUI5AiZD0=;
	h=To:Subject:From:Date:From;
	b=e68b6VL1ovuDF3/l6rRReFtzH5VhwVOzrg+XzTc1vysE50YzZgohpR/OcCOUJGEwX
	 ZB6zzTsgslW4ZhB02ijjzylnsK6dniozwAIILeUkMN8Zb6C/BojJzJX4kQpMNqIGM2
	 X1mue67lnYzP9+icowqNRMUqc3v36yD8ziWV+ixzKiDU30QiLVl+7Q0nUpHEbnrB8L
	 5Od6umWllPo9aL3MDsnaJLSoWuVG1xl/KFfB8OOuEK8crifM8CFnRlebCliCY3IBuM
	 2gBhZR5DT/tBXeLgJrKP2ozoB4o6Rrd+QyfCdJtxFcE8NwfWDs26EOJH4MqPmQaHFF
	 YAEM0dinL7kdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCECC25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686606277.3094.7981883546065269641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd82167bbafd542d9c22418f55aec176c8f25e87d99e19cf21a519be6461a724
Date: Tue, 28 May 2024 03:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716866062
