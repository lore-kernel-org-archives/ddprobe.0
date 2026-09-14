Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96554199EAD
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789413034; cv=none; b=oNEVBfU73pIc1nq6tAD6TfRqw9S1oG+HN14r+KhBCmAdcAxZtyWnHN4gsgpAXWX9vWwVoGGCW5KFDOHIfD6Sn49lc1H49SINVLHkFN0GuxXaNo8I4DkLwOFYUbn+yOy1HYxYfaBelhYLWTVLtqPp46etMTJFTOEYhfzIs3GZoeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789413034; c=relaxed/simple;
	bh=cQzwwuqiRPpjKeA3zNV8JO6TzRs//TaamWwiO0FKDNc=;
	h=To:Subject:From:Message-Id:Date; b=AX/EG2S+CnYyaU3lKiwCSY/eWOe5a8+jgMr3yHs5xzDUz8P1Zw092Gioy8kDKQ5J7HoMaeiIZa5OeUUU7tD/0Ij4R2PaS3VxAbaz29g7dQ/z8++y3P8suSfInWYHRZyJtFva4poovofU8aEauOxX+/9c+/1YxboDTdgwbZedpNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVNJh9d/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVNJh9d/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86E9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789413033;
	bh=cQzwwuqiRPpjKeA3zNV8JO6TzRs//TaamWwiO0FKDNc=;
	h=To:Subject:From:Date:From;
	b=FVNJh9d/dvegi8uuNJofT62mWrii/wPiNLCCvRhjIrLBRg45Ci+nwYZGzMmPxWOQ5
	 gCLs/8CqxVxrTUhVh2xD1chGko+nqQ0YsPeUMCpWZxIBkzBmGFNevlJoz0LZCPxSpE
	 moEvVLXI9ZIrTR8KW6Sk9kG3iKlwqRlId5zmVbCCPtU0oebpfD6I37RBKjNccpJhu5
	 x3P+b8e7ZGcjyR96GneGOb50D5NrLXdzYfCY9T6ODiNdNOKKEctHSfRbE6vd68jpYi
	 3kPiK34xBg5/KqQK2PWw6PKq2La1lr1QowfBIMJJNSjam1RnGx+O8xhh/pI9im2n5+
	 RIMdGkgSoxVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03EBC88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941303371.10627.7816540941407565135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ca2b748096397a53c61143c117b3c49d8dd5c2b088d7d69a38c6e88ced8ea5
Date: Mon, 14 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789413033
