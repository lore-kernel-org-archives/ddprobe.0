Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17687299943
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768412634; cv=none; b=IJHoJl17icPHjfX1bLRIMn5vS8NajVbYU6DSs6VNKNALUWNLhWC/plpB2hfjpBJ7UM4/O8i245Y24hCV0pWrb8LmLCjFweS/iGIPd66XK1QNU++xoCujR/qokestiq/xPaE4VxFKeYpVmZIvu5Len9E1mvbcl4pAGmeXxydPqow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768412634; c=relaxed/simple;
	bh=dPHe5ME4xpbXYrMdrQseI30pQGfgxnqMffo8gAUor9U=;
	h=To:Subject:From:Message-Id:Date; b=jKp4TdWj6WV6dSH3sUB0lrtcvkKuLzqTeuPdUEJx+0MWmpvi8hxxqiNr6vwMq4pqfminGro5OQf9uugGHasrKmLBe29rXvRKmeymn48d8E8HdDycWyn5Mnxw7u7YLfSoyYTPH69dWURit3DmqviNSZGjzXFkEqKtJMoKnze+S7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UW5AWxw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UW5AWxw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768412633;
	bh=dPHe5ME4xpbXYrMdrQseI30pQGfgxnqMffo8gAUor9U=;
	h=To:Subject:From:Date:From;
	b=UW5AWxw/fNC9fsDIm3GbZW6ZFpq3QNAvnAhKkvgswP4VdXThmzPjSvt4A/ZW6j6fT
	 hUVTgUynfwDDkk0YdVMtmbjAZjDNcWzfgznaG4ZQQNDb89CmZfkhlFzdYEpG1aUqZ2
	 Ax4xy/Ja7DU9X9VC7gasVJZiadDhUgI8oLajA+6Vh13/ROYZf8sTUmFJCZmz500rUF
	 1493E3DZuBEnADktAhafDZ021ybk/XLZ/thrEK27WGM8Q30IRV1M1R9hNAPMq7Tbof
	 LEYvibxiJiwNJqxb+Adl5hWh5zMe8e0JRz7C/edW21VbznF+IJJxgtcn22KuOxqm+7
	 AGQ8OwoyGBVaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC2D39003
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841263358.4732.11844764857465087705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ad1e874413bd634cbbe8cbc8cf8fd3f158e3b738e8cf9b167fcfea369b42da
Date: Wed, 14 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768412633
