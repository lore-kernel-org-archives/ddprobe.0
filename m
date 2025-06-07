Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D95A218851
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749326995; cv=none; b=q8O1YUL0u73VDaANc9tpCgi3HdPd3jNlQvmJG1agu67MYcHNLV3wg66JM/u6ujb62l6L5Fz6gD+d8iKYmyDTGGDdnROpa/TElDS7Yp1fnOk7BTDLj+sHsuPXCiyAr4ydnxJqPnN9WpjCEkdT2PmYDVqjIngKhUIbLjxMkBYX/LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749326995; c=relaxed/simple;
	bh=ac7Z5afiRLmHrSYnlyLkPB/kzxnV2DbG9cELgUifUoA=;
	h=To:Subject:From:Message-Id:Date; b=QeJC+lL4sXnRuJ4IPF+oGwR46hI9plT1ZcJ9TVD+atpKYYOjVfXG3/JYdWS+ualTpg2A5TLmDdC5gS3H7NyLu/hAlO9+5eBXbJAenLfhNNLtELkl9je23p3Qn8oOFpqEcGrcpHGyTmmsFnHw/4BNlaPit742reGf9y+oZhCf6ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sz+K9Vhf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sz+K9Vhf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB8C4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749326993;
	bh=ac7Z5afiRLmHrSYnlyLkPB/kzxnV2DbG9cELgUifUoA=;
	h=To:Subject:From:Date:From;
	b=sz+K9VhfGXF5RavatWoCZP/gKBxNaNmTeNE7p76T5LL9Rlk0J1RJVdP2uXGO6O/Lr
	 n0i6rRITvYDNvTwBKzjsOTuGyt07X4rj2EhQxnLdIQ/C6WUd13Z445b3yA+F/hHVma
	 FZAY9JHiCUo6zyUyACuf6xCTu9ZNn5GJbi4nv/eVgfQx/KpdTj8UFBhi5e4KByXvzJ
	 nx6W6JrLFzREkgxyYptXwH2P4drcb0i+Dob5KvDN1x9HHOY3sBLChNGLf1v9IGjp33
	 G1hjgbqH3JkFVh2TYiCapyYptLckZljGjI1wC1UtVe7AyBm8fpCV9P5rYgNRy4kIiM
	 TnuGO/5P5H1Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFCC61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932699357.23923.3858498019716983186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d380533abe4fb7f5bc5bd3ba2eefd9f329a751775e70708d59f5bbe7bf3890e7
Date: Sat, 07 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749326993
