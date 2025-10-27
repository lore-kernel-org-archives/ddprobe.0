Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194842566DD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761577794; cv=none; b=j74dshzgHdgHt2xwbhc0+Kl/kzx9GtgyEK7M+hq9RbDZ4pplwLXOTcABxE5hpta13rUMvtREOKgEK1B5kEMoHFnY0pZa5H8fcAsCVYVoU2wAA9vRsp1IWoC10Jp7y9fxBsLt7B0blLhTP5FC3yAooYhYT/JVscnNEwv3NBzR3lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761577794; c=relaxed/simple;
	bh=TnKn9NSjG/fKt53AafxlU9LsfYvnwZZCIS8HqP0am+8=;
	h=To:Subject:From:Message-Id:Date; b=iXe+WUPo51v6fFxOqTMi0QEG6leascEg/xTsFaHZB9FCbGycjYbDiSamyamTB2k00cb0LYMOHdGvaQ2YFip8yxBJxO4C/ebeLvq2W7Vr1kw41tQw+k892bdoN2WYNdFg6Kue284TGMKjQ264htpx025eniU3lroyLJDsPElb1EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaLBIaZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaLBIaZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761577793;
	bh=TnKn9NSjG/fKt53AafxlU9LsfYvnwZZCIS8HqP0am+8=;
	h=To:Subject:From:Date:From;
	b=PaLBIaZBwvAq8PIdJn9fn4eKw6ZtV0qY4T48RcnbQ1BZkHktXtWkzyzej65UG2TnD
	 lxcdSWiYcOTzCKIBJOIXY+n7j2sS1keb9BBnEenjvuHNF9udZgNqfN8PXtK5I372Tx
	 mD2f9VDHgnCWJmNESr0g+zookvGjCIkOeRLDxl9c5VvYTUOP72lSovulZZrGhYgJ1g
	 Lazk3vxUpiOgV/T66o6vDlKTUMmBP155jfDh6akVBWfXYctCNqHNLLsAFVcSiJZLzI
	 fzhjBctrDir5oLAlcXLH/u3ZRANkiVF8vCGOwK7VErOd24izjSJvTvLuQIO1ZVvHug
	 8rC9vCZn/lzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94243CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157779359.31699.429133279459363547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aeabb4b68caab09c2cc30789f515465cdd9d6f82dae0c236a4710661542fa29
Date: Mon, 27 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761577793
