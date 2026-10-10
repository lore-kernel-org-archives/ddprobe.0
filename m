Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D34030DD22
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791652834; cv=none; b=AuUcedOCZ7pjdKxF6l40EB/sK7/lHEl4KWHHyfRmq0syVIgp6eAv+LjC6uuLy0OVwjuOh0oYzdVqNNWzBHfu0XarDbiTSrwI6vVlhHes192SmGyEi9YWHeS71m+UHhlnOg1qDTHH/A48MuPO/CHX1x2AAxCfBEigj0d38aXxLxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791652834; c=relaxed/simple;
	bh=62MVtfwIQFPxYr6O1aCZnBu1Wm0DgUJ11mZpqh/Gqho=;
	h=To:Subject:From:Message-Id:Date; b=YtzVaME1iPshQ5v6nBMJKQX9VYjNGG96FVw9CPICpuuJIg+kE/MlJHJsDBiNvvQnsicijFCtyNYfSOj5MDqb7hLoMKrmWB9PMQgzh1T+paSoaFlfqsha2InitBRwGkYLxy3L5mxu9iBxgkkN09Joo1GOYq32Cc0oLrIBl1tBR+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d92i6xEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d92i6xEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB59BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791652833;
	bh=62MVtfwIQFPxYr6O1aCZnBu1Wm0DgUJ11mZpqh/Gqho=;
	h=To:Subject:From:Date:From;
	b=d92i6xEUpD0hjtzMyJ1Ur4vBjFCswIhKG/EhUzbM4GzJSttty+Xh9uIAq0A/CnYnC
	 o1czIH+6cHr7YlHtWErvNdhV/owk0SX1tJHtHUR2G1ekzHiYuQ2OVMPlDgvuGoeLHx
	 j/LPY+1eEhMKem/n1xUnr+GAyQ3XvI+c45KHAyyiXLacYj69gmRUj6RLs22YuB1gSe
	 ow7JE5L087cHVp59jtov8bC8Y26bgpL8xsKoAc5fsx6A1mYxfKwteEu03IG3gMB5z9
	 VUrgbpRv1JLNbP1/xJbbsCprY7d5jrf+Z+WzSm31+ub0Gu97Hnrf2HZrobKzJHIHRu
	 seHvflXyb9oQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9032CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165283368.19835.1330770252655681189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc50e15df906393ad0a9b6410f0add0a5df40be2d0d88121c4e6757ca963b5d6
Date: Sat, 10 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791652833
