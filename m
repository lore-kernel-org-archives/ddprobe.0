Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C0518FDD2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725016554; cv=none; b=rxZ6fZMpSWe5SHLhHIN43gr/owKmQsY7PPWBa4fdH7ds5CWbPnawxjQKyW5t087gaJYJ/xCUA+yJzEix51+lxIYtnwgNDzRticfX410ETX8bbaiPXhlxQSuhKrR4dzKVQ6QjJge71SDg+YprdhSY1ToS07ARhckp7xZjxkyrEcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725016554; c=relaxed/simple;
	bh=d80ZA6TFxXrkXyZByuWoBwJcBVSXMPELta2um796hNc=;
	h=To:Subject:From:Message-Id:Date; b=MtSjjnII2b53Yb+U92vRukDSSru77/B3OuPuQ47ATX98YXEN5T1zH869dOa/DC7tk5lthUMK/TAKBdb6NKDcY8HLcbGp2XXpMhhwJC686+x/XPy+10kZyL01I7GNN1WHcgE+26boC6xtIV5wN3eFIIqWVdK1i8B7ysWjDl3gA7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldbG9iez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldbG9iez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE7DC4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725016553;
	bh=d80ZA6TFxXrkXyZByuWoBwJcBVSXMPELta2um796hNc=;
	h=To:Subject:From:Date:From;
	b=ldbG9iezz6MfHm2l4OjRbcWG8f9ZlCyhQUGAPrZilxhSccBh/vj5OFYjD/qtzWB7K
	 A+nVxJ8nsf74ckIkaBJN/IV6FyxDWNS7Xr4f95rgg46AptELtHAERGbgYnx9rQkK6X
	 HYIfwvRdemMUBBUFxDPUj1l59qyeEB8/x1fQ305zyJufwXjAucojGbEBdxwQFGv+EI
	 iJ/pLjcnower3yuWC+0a2oX7Sfx9NCR7rNhPFHPGiqS2A5uutwyNO1xHIIiz0BQ6i4
	 3Z4Ts5U0XDCaICwuBeZLBAxLA3DMr3ZTqUbuNMnmp01wecLbt7Naa1p3H4waCbthbA
	 sYviL90psLseQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D534CA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172501655363.30741.18289346753136438256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74607e14392645a565ba2853ef3f6af452c0e099c21ee70b682d6d42477bd524
Date: Fri, 30 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725016553
