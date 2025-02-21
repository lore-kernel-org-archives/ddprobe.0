Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E69BF9D9
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 04:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740113935; cv=none; b=n8YS4JTpNpo/iL6/OCThHo9P7HmxPm68X7f5NI6WzCBSOB4yepOqqgc1Fa+o+N+1tDQ5dv4lVvfJf+KKCslOl7BO+xzK3iTFcYP/xPoqRY7yyp8Sz1i1ZXMAdEmAswntlefLXHDoFZW2iPVnOzbsk02up7xPY50PHjaaxSuL6HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740113935; c=relaxed/simple;
	bh=hDU8v2xj6wLdVK5JdwjaxMhE5qGUU3ZQYFNfhq7ha1c=;
	h=To:Subject:From:Message-Id:Date; b=ORhEhjaU3sFYrONshpr+dEHCGkh691BgE3vOVG8Cq1d+wgn+c38+p9j+2ZY+RqeEnMisRhK3+eSoofuu7JNwkAFdtK7u9bA/gDToYF2+I6l+qDLu+n1aRlUZz0jD+ivL0FFheanqbOPg7JEQoWHj0TlzOEM3ZWAb+vljFe5LgB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soPwjMMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soPwjMMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8257C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 04:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740113933;
	bh=hDU8v2xj6wLdVK5JdwjaxMhE5qGUU3ZQYFNfhq7ha1c=;
	h=To:Subject:From:Date:From;
	b=soPwjMMuHCy1d1PXQ4c5t8/dXv1DR+g3g8zkvgTc9FwsIyfSGBz/01xNVBw5c5yuP
	 8s5m6iTl53VPjKOlX2ioraFm62Ciluj3PagS4Vjn9a7C4vJyYRUi+PbOjIyeicIJzo
	 B8RrKhbILiyTztijnRWSlgiAZnslqN4NMAgixiPFTwUqJVX2badizJvSHYY+ZKDVVq
	 ykgVz32ussA2PnFJpBco8djxNxPLboQi3drXyQVt3YizeBAwSkbT4LpiwRKDImWzQP
	 Y1gVjwKkZQ760yz78KJ8o1GG2IjZcwszLzMzVVxTyPAtl7HypFsg/JM39oQjxCoXAd
	 8kc2yZ4Z3OKdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95924C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 04:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174011393360.24710.18287309107465151648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0a8efb7dac4b3c35eb2bde6d18317aae68728ca00ac3344ceb17a679e670ff
Date: Fri, 21 Feb 2025 04:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740113933
