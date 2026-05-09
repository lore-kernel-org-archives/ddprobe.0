Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB871A9FA4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778288254; cv=none; b=E0UDCo0gpHfTPP6sgzEvAaHyykXuZ9RYkz5+rga2gdNtfR8BMNjlQnM9BfEIM7Ef24N5g0t/li7oiY7I0amlLpjc2TsYTUw8fVQKHGvH9PSQj7XPXgmZjmbT9XhMjE6r9+Xg9cNNsFTzzSZxjyX3cKm0oaJJxWo9U8A8fFJ0z7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778288254; c=relaxed/simple;
	bh=AwSRP1iogRd7ACBPVSb+AtcC+X3Qb8JDA0pWpXJD9Eo=;
	h=To:Subject:From:Message-Id:Date; b=NLKuAOrS81v7murCj1qr+YxtJ60Yk0wxs+BeLGvwToCkHIvOdQGq6hllKLny5L7tSYez0DBlq2QqC419kGH5X1FVrtddEEkxP94MFMjTEhS1uaZuYlyLaEn6liL+O5PM/s23FxU+HqBDud6XO+u/NHYC4dBKVDNFoDlu5gujtdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eX3ICtaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eX3ICtaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDF9C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778288253;
	bh=AwSRP1iogRd7ACBPVSb+AtcC+X3Qb8JDA0pWpXJD9Eo=;
	h=To:Subject:From:Date:From;
	b=eX3ICtaSzbd7hjzpBr3QITLBbvh5soKcqAhKuhdFKV50TGWDwaTvcofVvRwQ4Lt0k
	 +teMl0HuabMsIvqCApV/H5Qc0Fq0aCdEqj3tY43FDIcjYUPzGa9/ieM9dUEJxb6NmN
	 sAVGNcc8mrAsajmHJaxpQXFrNtUQopZTLj2Dktio7JD74oFIZUKQmRqwc+2nh3Wfb1
	 ZnTlVI6duo88rB5UJG0JkWY5muBHv0EoU+le34sKaqz3WLbzQe00Kli1FLm/HxpTtX
	 o8LVY6MuwFv5uIVuHrKu+rKVEETEr05QvNEI4DZP1W3BNi6XxIiZuolHJsJFrCJhoE
	 lvZCkTFkn3yqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF54CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828825369.17853.3603598039377697264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cae7d47d15478dde9683887e6922f3ff20c7938a870757220e76793f68d69c
Date: Sat, 09 May 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778288253
