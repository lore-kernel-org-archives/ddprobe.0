Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C612E62B5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776974254; cv=none; b=LvD/AH84uPPqI/J3hzf1otkcvS207Z4GA2KRvuPW3TV4ze3ShpES70/v/0TH+op7BV3cSb4uDz6hJvvIhmSjrE5u0qYFPb7lW+FEpuiQekMAb3k3XEjAbicADSYaEDmHJ7wCgewLjOajsZkmqk9qFAKpPA31Hu3E5HvSO9y578U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776974254; c=relaxed/simple;
	bh=5ouR314s4+rtv2hREDetgr2/k1gNdt0TZzOLKp/r67U=;
	h=To:Subject:From:Message-Id:Date; b=P7y/TnE1ASs6lrc5qiXIKsfslQnvneV4R+9LJAXzfWV6AZjyxDYFkaG+PamiDnwgypSIN1XRBzI3gIVpEYcmAP3dbtdVkkyvcOnjicq1eZzK0NUKioXfkIbNj+OhcOEVZDBDmjSZPW/xrQA+OLwjjcsgieUVlYYW8utOz2ZQiTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6NZ0CPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6NZ0CPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C182FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776974253;
	bh=5ouR314s4+rtv2hREDetgr2/k1gNdt0TZzOLKp/r67U=;
	h=To:Subject:From:Date:From;
	b=D6NZ0CPPR2vYzsva/M6Bis48RRYfWeGdyoIQZuCv/cASEQb75X3fijfBN7irAKjN5
	 Cosz+NqHJVvb+xiOap9mmx6TDqHZSy3vczojkeBmklWSyNfLH0efk4Tix3Rqufv/Tb
	 QRu+T2/TD2eae6OkNh7PRnnUv4lB3Nn3GgwOh0wJ/mTm2OmtUX4uFXuUrJJRRpNZzb
	 Oj9qDrDOoJgbjqsxy0CYoY3trrbUGUMn6FhBDl+n6+mW3wMBqFv6YgxUgzvXUP0Dvh
	 7A6dX488nvsBXY9qoH0vDorLbaiz36XxLY9b4CuD+a8TdR7CM6GvGKjs0zprOW96hm
	 cFrwJCVNx4EMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF26FDEE45
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697425368.11908.4975128157731861154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5ac5c329f087225dbc1120153602a08dba939f11362a241d28a8c4acfc4da4
Date: Thu, 23 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776974253
