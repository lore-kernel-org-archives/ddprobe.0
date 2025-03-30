Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E63213A3ED
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743341394; cv=none; b=sGTle3JR27ayhT7Zs3V2qqcgV/NNDrvUa1LWwkrIKuCOBPQZC0vK1js4h7PW4if0jsNK9O5/4ZqYzEsTRs/u2sIbr0MY6cpuZgb2ABbElIV+AkPi4K2nTi890XvYxi109cE66tOWssQe5dzYFupaaKxmRSc4dChNtUReOClQiaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743341394; c=relaxed/simple;
	bh=Phfio45070/4NoTN+6vePxdX1gp5X6/jSULRPQvl6Qk=;
	h=To:Subject:From:Message-Id:Date; b=DAwlrk2YL+wX9X3YSEgRAk8wqP5dUwYmZNMiwo4QoXzssiGPR73v9RLffAxrzUUeTEugqXJ0ryY7f7eW9G7vqN6/QqFTaEM8AF0MlHA9XWg+T0OZaKcC/bZo6+zsyaxS0KlH6WdziAvg0nwcvpkfZfBAhWvGblRN/GvCA6lr7IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcOer0j0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcOer0j0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDED0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743341393;
	bh=Phfio45070/4NoTN+6vePxdX1gp5X6/jSULRPQvl6Qk=;
	h=To:Subject:From:Date:From;
	b=WcOer0j0zIjjYifXCnUT6yfwsBULiXX6EvIWvromApOjX9kYecijHr0ijAZw4z64/
	 c8aWV0Y/D6e+3HCA481DL+n745j17aG4cJTUh0pS19n8oXn7AOa8vh7B+e17hEaxCj
	 EOxwX6APmwHBlAy7Lcrg4kSNKeRCxjpb1uXsBNfs7qdqnD0THxH9swNotDAPbfIpl8
	 e2AO5yn733W+l4g7mGiFycU/PXuXG+LXjCEm+eF/TwhmDIDJayWgjdXkXS1zUqMcFM
	 RLbw2B2MiCeTsZTx1hyFrKkkEqDMHLP9LGm4qLKFH9L19buCPEmc0wnYgbgW64BAw6
	 QbOCrnaKcKgJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9965C36011
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334139368.4513.3382911610202339939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c476aabd369916ab7406da7798bef62fa4509cfa444c22dfc5913a726da00b44
Date: Sun, 30 Mar 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743341393
