Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F62128313D
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779723154; cv=none; b=UWF145FSEULHLYoRY6ks4MCMR383VLjge5ou/w6TyMju3Dw1h3PgF3cOgzjC7X7XLKjRVcFVwwEhA/eym2TGBTKkLdH7pbiEDBgcKFllXSjTqr+kINEc9bMV7SEBBNwnlYPDaFEojkC7XbwYe2Xe5uIkz1x2WxnzbP7FSpvxV44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779723154; c=relaxed/simple;
	bh=L6irzdxeF4CmG5RHZB/c1mIxb9rk/A9e3vNu+63Nwcs=;
	h=To:Subject:From:Message-Id:Date; b=ntt+HxU3ruPnpqfA9B7kzlTGjFIN3hKWRrSCszrPZuQb747+nt+bu+QVP61EZpl5XXge04mCwMNbJxKQn4N1o+O9aX2UyXOJaXpb8zSYNXxc8M0Y2z1N8AFgANw6X9jczxpdMdi2G77/07DY470dAvvBuySeImq7CqwpMM8Vt28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFsUe+TB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFsUe+TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD93AC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779723153;
	bh=L6irzdxeF4CmG5RHZB/c1mIxb9rk/A9e3vNu+63Nwcs=;
	h=To:Subject:From:Date:From;
	b=nFsUe+TBq0EYYM/fvr65vEnm+bn7XQe5vuyOKObgjnMLsZNb0BTx1WyvBkutXN4IW
	 j0fEylUJ7yi0CCnvQSWzT97d78d5eT0DsPgl5QF+mKkwfgRhphq+NZhXottCPrJ5fs
	 yqiFlCq5CUjo7H4OqRoQgE63e/TSdtLo2Mp1oqZPbJ3/zDrKCPTbo48Qw/vcIMcLzh
	 6Eakk5W3NCeQZXDeopHnLOnHb1JrRPs/kOWI8uM3lU7kfhiElfW08BaEOR/+6M1YTV
	 WA1qtFwHHF71ApctTYpcPXKW30dsKz4hBJF7vrWTR/9ZeR2z26ZMEmbML/8ROIPCBt
	 yrFYE2PtrGXeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5068CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972315373.12739.5044977191468443729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f430584a0bfc712d86d186f37f9c704dbf837fbb3204eb6dacf416953203f5e
Date: Mon, 25 May 2026 15:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779723153
