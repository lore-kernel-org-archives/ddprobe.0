Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5711C2324
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736873154; cv=none; b=muJJjJy8bApynH9QJIdxxqj7+KgXDqYlOh9OfVEyCiCP0qhA/qnpPXHGRUHx02l6tbEUeYb+53fIUn+lVMu2SpuPfZ/6cLbs2gt4MVENVN4VDDCDpZOBkEBuLUWKjBPbT8eWuksauOSKEgT2ljYkYbnBsxZJCWTRnqFV3Yz6byQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736873154; c=relaxed/simple;
	bh=U57Z+KqPQqzm4/WPbnRO3mLYILko4TeWXHVtCP/kDZ8=;
	h=To:Subject:From:Message-Id:Date; b=ZBKNMutjQq2sSyI6sf2QK+EO/7IA9DlpHE4GDhzo+VBr0a+BComzdQvlC25LRP6fNbes6Kiw/yb/s8pEK6+xvRQIQ//LO3xvtSA6xAF6nzn0N93Hp+95dHkWK3VC18aSRMDMt3sieimIXaoKktYQZ6dWfXGOam0bcuTbtUwRlWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CN+Fo9u7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CN+Fo9u7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DD3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736873153;
	bh=U57Z+KqPQqzm4/WPbnRO3mLYILko4TeWXHVtCP/kDZ8=;
	h=To:Subject:From:Date:From;
	b=CN+Fo9u7wlsdSDUH5U4xi4mp5vrJsWvOqDweJyRKGNqn3NQhszd3fXGjRyjwUBHtk
	 xZJe59cO1AxnRcIE2kln0QtrQziTp8F/2tBdqJlbZxa5jfpt6b5YGkESYQqWAA9WVs
	 fUks49Z07xftZf5fqgD+fr6JoudeO8+55Qf4J6ajEwGIOUK1mQKWifr3+uI0D2mYJc
	 NoVgqSGa2uSRrFexeDLt4U3YL0O7vOpI/7H9lfM/etjdLTA866MR2toHDXmeFMGbGS
	 hfyzekik5giUquOtn6X7UMwS2L0GF+QsM+qjyXZJ3ZoBwQPCHWCUTRRGwTS0S+FGcM
	 TJrn2+vGZ0Ftg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AEFE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687315366.7434.3342513125525282709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6814923ada585b11fcc71bb04bd8da54ebd46cf312e488a39f06a27ffc25acd5
Date: Tue, 14 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736873153
