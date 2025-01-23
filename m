Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35817EC5
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737652554; cv=none; b=pKjsOLcjRnZ/nneHbc3y38e6OHDr36yMCCtbNWgVkIFPEnQloySZ+eBe2R1ZLuaDBASVjO6BWPMs6gGXgGVKgh7g0ulDmiKkUoKSi8Caxi79rrqSQjalcZy/SZZysh0pGvl+qqjPP52w1QmlDul5hTQx+2KKg3BE6vId8SjK5O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737652554; c=relaxed/simple;
	bh=LqVzBAI1qjZXaOQXyMx0GomkMXoT61TKsMJCHSD6Ius=;
	h=To:Subject:From:Message-Id:Date; b=skaP5LjY/RCwII6cvcPezcKnUC02HJFQfB9Gs+XyAX0SGwfKY2/uTjnmetr3la97o/F0vbkSXplzAIp0JCVIAQC//OTmSacsheZOZ6MtHzZCeWg+UOzB92Do+clEeUwI1PGk5p/zFF08kq1/+CAHd5/Qtjh4tjyL9EfdbPlPuv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5qDhvTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5qDhvTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1048C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737652553;
	bh=LqVzBAI1qjZXaOQXyMx0GomkMXoT61TKsMJCHSD6Ius=;
	h=To:Subject:From:Date:From;
	b=i5qDhvTqCHhqMAp5RHdPmEvrFvl7u6Vjvd4fsp6Jk5Ax7O7r8NsgsP5SexJAcWawS
	 FV+bu5/fhvUe85SqrMmCPcsRmg0GfbQsNWYtPNHKP2FzDS1aFtzaojzk+mN1BN+6Hy
	 HP8WYbsHvY7INZayphAl6HeS5MCFboYsr50AAWJGlQnVOeWRDusq+rYJfxT7NLuwGL
	 zmMyhHFwzKNW5S1lVA0E1oOrEgLEGrYrLKL92rqFfoeN0n5+Fv27xORs75RBy9BVvB
	 OGjVBiK8i/aCorStKjy5d5pq1/oFwrdGFyN+eB1mC5JjiKYR9geiC2Xv8C5q5fw3dP
	 i69IHamphjcUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90577C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765255358.32726.860473833362576085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64d79abb89bf2214385966ed57d6fe576517150a1f355c48a21c651e078f9cb
Date: Thu, 23 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737652553
