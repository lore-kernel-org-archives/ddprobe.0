Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEF72DCC0C
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748077794; cv=none; b=mZKjEDhpGWgD0auuy9wWjjIkH9IOpecrTPMa7QUkxK9V/TosQMMda+ps6UdRISPlBmRW/0/9zn+kekIqYm0GbzlPMvsUUvA8BBlaxXf/ogCda96HHVWOnod9+melAvwthRk1LbVbn69c010lemkOojpocAmjXhV1StRlhrQotXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748077794; c=relaxed/simple;
	bh=k8k6vZWg33tFJBiVoilC6wjfNw4+lvY4r6g7KIjfQAA=;
	h=To:Subject:From:Message-Id:Date; b=QuVarabpfqFQ1kA7VElDpv1eZQ3Y0pdIr4V6oBgXqwVZ+BB6bkMqXRuGwMRNoM6zbGNf1hrJb2UPdq5xPCmIsuas2FvxAomo13Jx3HWCRHpnin1XKPTbeZpdu2nwGy6nVCpgvETInd5RZc5mz/wmee4ggN+T1FR8VA2yNGik4pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdMVVw9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdMVVw9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2378C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748077793;
	bh=k8k6vZWg33tFJBiVoilC6wjfNw4+lvY4r6g7KIjfQAA=;
	h=To:Subject:From:Date:From;
	b=tdMVVw9qzBajtWriQShIXKDe+APZsBW8K6XsEjI6pYph8AHse8pahLot0ZEWfVLix
	 5SW1t/I89BhYpOUQT1Do32i4G6u/NWnIfTWH4Jlwsk8jw0RkUy4hXH5ysU0O8EyVZ+
	 iwQNdR3iyEXAx0hiChG/riFFSftjXpNeLnTRkyb2tWLKqqI5NKIHZaXuh3041icuSs
	 6gbmOu6DwQMcWdBd6cJ6N9cGFMEg8En/FuXqgHNQtes6LQpuRR8kfhTweAjQNrVoDg
	 U8MvLLkhPBfZ3wmzIrXCYnP9JbkDqsJBzlBZ37sRARbGp8aUZGAbYTKhOwzeT6HYJ1
	 O4RFu0EppWDyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F191C54F2E
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807779357.22242.9992009040915161714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3b5494271ee2c1a97bdecaff2680d286fa3aa0e8ec00d2dff5594221e938cb
Date: Sat, 24 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748077793
