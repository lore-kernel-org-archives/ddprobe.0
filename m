Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6FE4409
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755662394; cv=none; b=mpwx6d+5Nx/O3aZFNIQE8n64d10rYitGDOsfBNeJK45uf+NAOBKSrKKhrHAz/E7agoTRQPFeUTNBmWSlTjKc8zzOdjI1e2J/ERI77WwBY7AXLqkmqh8tP7wfVGE/1X8nrQ3mWJkkM6sAgz7K6KG2nwEqANP5BeIuIVd/xULH7UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755662394; c=relaxed/simple;
	bh=8lriyxCLl2iJdHXdme/IxXypHpPMnPN6hnQmNBgbro4=;
	h=To:Subject:From:Message-Id:Date; b=QXW/txnWQcCMhQBW3uSeHZkbeAzCgt5XXRu28aKvUYdrNVoejqbLOytmguxxsT/tXuRC9kXM4ij2jJlIvJwwaQVwYx7aSEtnB8FzJUvq79tC5/YhAUo96PwbA+pA9zoNTBV5GmIvi59hYagqBNdrzHJYXzMoY1WNdVF40pUT/JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pl6nZbt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pl6nZbt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F52C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755662393;
	bh=8lriyxCLl2iJdHXdme/IxXypHpPMnPN6hnQmNBgbro4=;
	h=To:Subject:From:Date:From;
	b=Pl6nZbt11D7HMfIkb7dC3IJWvwPzXlaf0RxZsekqp6qB47KzTF19aBRoLmlbI4tZG
	 dXJyOm7njJQxzVneBvebPw9lDe6aY/zBRsBxeV3ajQp86iezyG797+Fk+UDUhZhOb7
	 ggp9KTWmmKJNob8yfBWb7lWuXEB2EppsNqBtgsMpZ4na2R/xMabDyFRWgK5AHp34I4
	 38XyBsLJWh6ngRnE0nYI08AtSgTT2+9/uUP5GSrmHrX7qouBBUZRWcrhVEb9VzNtqW
	 y2KzrF/VyabnRALkvQbewBxIHLWbeCK2GBEU6dKBjH57R2YstgM6AseZUOAmCAWsQ8
	 SBA24waRaBWqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4FECA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566239357.27492.13324955992963718224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ae065121c2a95b794016fecdebb028ad0e1c1063c05fcd84fca7c11d8ee947
Date: Wed, 20 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755662393
