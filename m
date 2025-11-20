Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F3621B9C9
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763618514; cv=none; b=Prr72N4/QlsLkvXoDoK8gWqU7xtAPy8kwu2/+X3gyU1tHzE+3NcWF6t6jZJNKX9x984H1CfrtavFBKfK2BhcJfKeaecKUcUOo1eJPPd0eJUdO3KfZFYAdL1p//qTO+vwZnIFm8h7IvobPQ0x8m7XfXivKASfa9i4FLSb4gZoVGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763618514; c=relaxed/simple;
	bh=JspMVlgr8guIwacpcLCDoDDNDR/VaGgmy4ViQeE9cOY=;
	h=To:Subject:From:Message-Id:Date; b=lYdRRp27+lF6NIVxJG9nRvmNw66ynATqjhPAeFsL2Dl4SksSRL4G8xawBPC1X4zFptVXmg0hmtY5M85IiNUrwS3p9rSwACe/uZzGROtM4M80Y3r+MpmOCOncHLROtGSeISauN4ykdl/fGYh03GE5QXoWRwnaFQyy9W+p3B+k0xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rO5hDYrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rO5hDYrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EB0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763618513;
	bh=JspMVlgr8guIwacpcLCDoDDNDR/VaGgmy4ViQeE9cOY=;
	h=To:Subject:From:Date:From;
	b=rO5hDYrlKxg1lIlLbu/JAgm6EndQXeYPCv7LmAVWfApSFV5htaSZVfQpforUt2yua
	 0XcyyPJXsAbT3ptYrYSiJazKLW0e55APjqAfKdrAJKAhBlxp8RvEbTtCN8xxmpySwS
	 EWuiLIKtuheday0RwDPHh2IeMoT4mMAbwex6nM6y8meLTAOr2DccDDKmzVy7TdPT0V
	 /csXQHll+hNm6fZbWl0uVycqOlNoURBNf6vlR7aOt3eZgFUhzm7a0fAbJnBYHabhIh
	 m3smqSn9lAl4oAYXTzqaNWG6RenPpQGdVMDl0g+AUIZGT4dP60yt686cblDA8OBbl2
	 mCG++g5Xkz4aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9499CCF64BC
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361851358.12846.9795086898795180154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f31e7f4141221c7344be333acf7d7e2d9ccacc00bf3bb7dcdb194ba0cd34fc
Date: Thu, 20 Nov 2025 06:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763618513
