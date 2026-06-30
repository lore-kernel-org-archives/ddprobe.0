Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BBF727F18B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782783514; cv=none; b=eSmMyEUgH4eFJFgetYAy03KIzFm4TDp5oP2oG1/nzqiWVpEemdUOLxRjzTr+ADjDgfoTROIUg5cEhhtwjgSNTI8y8R2IZvhwtYAVk3wCYOsZW9epst9aWlIh4uQq2wgvuFMZf4MgcJ2fHfAO6YuPktfonO5SRFxtXWOyPvcIuqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782783514; c=relaxed/simple;
	bh=lr1IwXrtBaulpKAtKViFrKSAP3DZHHmjSiARfD1MHII=;
	h=To:Subject:From:Message-Id:Date; b=kKrOIb0uqulXGzOKSarXeF/y4KW21+JY9Qny4S1U+IKnSpBzcsFZtNh+9XWuWI52PHhS6iDBIzd4qZk5eI7UbDPhx7+JEq5gak6R3NcTbQs/WJXx6MGpzJmfqvyRKLqPS4106Z+gnCI56s0GFnJJCDpl+oHcxhCGFp6AwbkMhw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N40NX7Su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N40NX7Su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1319C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782783513;
	bh=lr1IwXrtBaulpKAtKViFrKSAP3DZHHmjSiARfD1MHII=;
	h=To:Subject:From:Date:From;
	b=N40NX7SuH+mp0ATpPiIEF0nhMNuUPUo03yno7CP1QH1oTGThPz+5YYsz3YHCYBkWR
	 H/Lwc6oX9RMA4ltu09dGDwyQZmvl7V4fP3s04FQ0iseOOwRzX0PmZQFqXdXQel+GPc
	 l1r003hpNa5Fki1RcpCbX+wkrT24wH/0ReLJm756nn77xXSNH4Zs8ZEn995SvRzLef
	 SRRVi86J7Gj1UPNKlOIfbjXdqWQADcMYCltAA4vs7w+j0a0qF6Y1EbylHSm9qL2xBr
	 FbXkYz7vZUqq2ds/7YpY8dZ4zP+lqKP+mQtlDPLbH+mylZ2g7/eSkUJzP2+qTEfvnf
	 5OIs0pa7LczFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95CEC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278351368.31600.2734166795977253436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5004ef39c4914a818f91690d91655ed4cd521d65cef70d156446febe3b4594d
Date: Tue, 30 Jun 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782783513
