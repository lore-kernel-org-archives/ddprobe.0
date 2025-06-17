Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B652EF288
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750176594; cv=none; b=MBmPyTk+o4L84jsG+1zDXJrisBzA6WTWNM5xAH9Mkm70LBkTEbA0ZE4ZcTSZFnsheMOr3HXlaVOwwdfLdhKOk5YtbDz82Ja3xmaOgPAyFJETbiyxaQtSw3w/YxhAlkgW4d8C066EwZVzBftPMaA+Xd7lAfV4ad0RC7PnS8c7hr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750176594; c=relaxed/simple;
	bh=frPY4ivNvgGgfgi4OnHverGZyiIplLCkcqOEEt8Aedk=;
	h=To:Subject:From:Message-Id:Date; b=alygyRj02ZgPn+nD3T6qY/+JIt32tYbWF+sa8XRw+YlmXtUFysqXiL+KOLeUrWpm5Kc9sFvlCI+bZptABiBqy/0k7ITFeK0MTazzzMNrMkhBpkGpHrhRaeCdyRLdKpLdv2X3A68JQEr+gZ0E86DeuiECmB8JHwnM9oPC0ueTFnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbzJyDGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbzJyDGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6557C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750176593;
	bh=frPY4ivNvgGgfgi4OnHverGZyiIplLCkcqOEEt8Aedk=;
	h=To:Subject:From:Date:From;
	b=EbzJyDGeGwjDIywfvT7Z9s55SGj7mEvORQx6DuoTCd8CatZNIClEMZX30HVt41h13
	 6HgLs2POUasMiwIImlTVeiUDwWXWhQ7n3cj8xIk5Ky5NR1ZP7Nxk5BQjAnL/HjXb7T
	 0JsdZ2qOgL071KYJQLpMZj402/ok0c/e6ajKxnW8ir8pftjHSAYjQlb8Ks56c9mWB8
	 BtCdnMBZsH6fBFgCw+4M28y+7+kXXLZEF+fjkMQlyNhkS4C2xDyetsbI1778v47kRP
	 sA4/xB+OHMcjrD7H+I/uuc1d3Uq8dWd/T7X6z0dNUUHJBnQV2YITRrEtZuOVGeNaX+
	 Hs80PbyhHmcww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D21C7115B
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017659358.3183.16379619350800592987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba4f9a7cc727a529839ea0b60efe2dc7a9f49694d4546304ace3b891d5304d0
Date: Tue, 17 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750176593
