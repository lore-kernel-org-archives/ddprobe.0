Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5E1F4199
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746080996; cv=none; b=H7llg2DD5tUsoSVbGGoBHJxDy8uX4uuX0so5tcKbD5vs+z+G/Ty+BQr4sDNWotwZa8T7aiorQkoxFHPXoKtwba4ZRwy3hHE+T10DCy1ZjaxKCURNeISe+BmRATcPrfkEeriMpcSRQ4y5vM70roUBwYq+3irIjLn8OaDTHtPjEuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746080996; c=relaxed/simple;
	bh=t+t0Gus9p3rXft9Y1b5o/7H9DIxbXSW4d1EBlgd1Wcw=;
	h=To:Subject:From:Message-Id:Date; b=a6/O5Vcj2iJAhV9tE23nhK87Mx9oZWG9ep2tJBgVPxCjjhu5gzT1FKcUikqHo2oNsZVn200uvnV3EyoR1Qbg4ujoDeRPYuMetIKIM0pNjO30ReI2JrEhGcB7u0BMBsHiPRADiZl8AYiL+k2ppNoETkN/N4rdNdnoiMupeFFFpuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nly1z8Kw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nly1z8Kw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A221CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746080993;
	bh=t+t0Gus9p3rXft9Y1b5o/7H9DIxbXSW4d1EBlgd1Wcw=;
	h=To:Subject:From:Date:From;
	b=Nly1z8KwbU/9bB0cBBflUlCmuXtM5X7wNttjb4740cShsiUmhy1SsZg3jTnJXUzYW
	 pgpJk0Vfm7MnazaIhpSwEnDdIqDY1rj8QUy3DAyfl6oR5pnmjaXhktZar9HZhDyBZb
	 9tL9ZzxjedJdcYxvm5wxLWC4exGGl4JeYacFwB7FOknQa4HlMbvtf/6PZTbtzLE9Gn
	 zOj4/+sNybP0gL7bt0PPG/I7S5B0PvIECOBuYep+4ZlRxA+nHjnbaiS6xO6gVaD1fe
	 z/jUOCvR1bQ6V9NDtX3GgtFcr5JQH8Zo8v28BLt1XZkhw8vGwwx6jf3QI+WjKTDTOG
	 CjCoyGSuFXbtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71FC3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608099357.16583.2487135002653981008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c133869f6dfc08e64081cbee7843d66df64d79ad11a1e073aba72b38b0455536
Date: Thu, 01 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746080993
