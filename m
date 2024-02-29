Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E386747F51
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709227697; cv=none; b=F2WwjNj9Q95RQUyql7k5YnnBT3gsOSBlTq6c9mIsATNTixK7rWtcrzAmt0TWbFUOKmdyVrmmy/GvkLzZ+PMNs/pGwCgJSDJehb9bwgmjARu+REc4lKceEo+R4CTzkLBnU13RzdytEzBey8oEc82LVNXlMeN2XRL75eyfx/K2d1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709227697; c=relaxed/simple;
	bh=4KjHToLHPobXW1nRpPaEn6DFGCS/cbBvthFVyKT2CEw=;
	h=To:Subject:From:Message-Id:Date; b=sfYM7+jJekZIfhNdA7FzMCmmUo9HhtcpvP5SHLkdBoPEibmTgbIq+VMaaGZVd1l0oGeBD5KxqudsoC+9q06csN5piriw/vjDgY+SYNQchJrdx5iqjgrGyfeofUArx5fuwD9FKq8TNdsrmle6YqIriw6F8CUKYxALa4lGkehkB4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o30hsqdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o30hsqdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAEFC433F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709227696;
	bh=4KjHToLHPobXW1nRpPaEn6DFGCS/cbBvthFVyKT2CEw=;
	h=To:Subject:From:Date:From;
	b=o30hsqdHvhxIxTm2Fsb5ExA16QccA/Qi+ZDeJ6WbZio+VFfn5vu41ChqfAbyMBm3T
	 198KExbOdS2DUvagZTfiZqu4KnBX8VLfk0jXucjR0tAXqsVWvlrMhkaaEcPWriXFFw
	 tKGKERQMxn/WPhieO3DoHuYFPndckJHjFg8ltFpmvPljLszdVe6Jdco8V9Nj9FkCI5
	 n1Oe9mPVWkSh1a4m0NfBXiLKNzg9j07ijUi29SVudTFfFuoidQ7/bkwlBF/g8ed0i/
	 ApfUyjeJwhLfeVzfCHKzR76NJAJzZLYoolt5VWX40/rCN6vLqgYATli0QNXSn0OfwT
	 AV++kfeodXxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63095C48BF6
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170922769639.13675.8026577450152580230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47abe6f6adbd6620a42767c442b9422acd116ae61dc0a53887ee72cfeb7d910
Date: Thu, 29 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709227696
