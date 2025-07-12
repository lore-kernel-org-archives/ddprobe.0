Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8F71B87F2
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752315594; cv=none; b=Vbq/0sqrlfcX+5oDCK5FUpdKhzHOBLLm/hYKn4he9s4TaKcKr4TsVa0i1xNDsEUCYig8Po+rURCEGvcSx2s2C1rMbQH9rGFon6UQ3ypOou2+Wp9PTqx8olFMCj7/zpbmMCpIXJJof7Hzzu7+FNOGjFFwjEzS90RY89qzf5FwE5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752315594; c=relaxed/simple;
	bh=JY+FAfw12qLYnoF9W2k/l8Vl545fzSSR4pOmfR7O+aE=;
	h=To:Subject:From:Message-Id:Date; b=AnqFL/yEMWP9YrYtY3ZC9ULzzMU4hgMjyXGyOo9w0GtvL1cLRs2iSXUeqC1+kzgRjKqy0c6HQxFvCe/EhWXdRYZjm9WN5IQIWiav0VCg8FyqYgIchbQOrNOfdKi+enjAbkhDsViwRMBipy2rOWSfofkh7/6GE2cmbf7oCOGZics=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pomSD1tH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pomSD1tH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C86C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752315593;
	bh=JY+FAfw12qLYnoF9W2k/l8Vl545fzSSR4pOmfR7O+aE=;
	h=To:Subject:From:Date:From;
	b=pomSD1tH9hXWGVQ3WTs2M4GXI2MAVCQitsDuc5OsLH8BVc0Cf9fIAr3bS6zyt5QsP
	 vIQWw7NX2aQoB9XBl10G/W4mIcNgcl6r7BMYr5VWJLCxuh8T7dW1qtO6ZJ1Axp6Y9q
	 /IXa1QrFAzuyILbwJkAKRpMgv8ng+DIM32uogVUNA1uYC6f4UFGXugkjeEL4A+o68+
	 h+Ks0sePucWRRU54zZ+usTjgG9AxvPFGYWdB/U7+PGDhASgnm4XbRuFS92riC70SWi
	 GcYJLzqIyLs3PK+xNr5QGrvAC25hchyCvp/f4BY4BuoOsYCzAHUf7DzpgRDgnRUV3H
	 ppg2PFXy1XYqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A3C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231559358.26209.13574080251855008920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed54f3f7ecff266b5ed45374f46d594c58ff0140b735794e34e5bfb69536638
Date: Sat, 12 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752315593
