Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88553FFD
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765687374; cv=none; b=Z6ser1aB2EwrlD5Bw602vuYyfqePKLszyVpIZgUT/C+wZ8uCUfF7qwmgRa90bUaKFK3NVoR6Z0KIRHin2pyerhY7+iZo6+qNQRTdKMPxsIrMW6qt4Ts2rWlFeFr3TfOo6irNUIOqhBnRzjbpR4+xMgVgVEvkGXt/FEi5P1KVqFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765687374; c=relaxed/simple;
	bh=PddKR8IALKlivZxn/p7VKj+p9eu5PZZ70AGM5cZROvk=;
	h=To:Subject:From:Message-Id:Date; b=URW+zL+eWTHD4Zk1D0lxyBVQkc9cGS2iJdkZ8ef2LY47Z37U2jOYYeDwXp8otKr0FGSRa7YKux6qUHWmXULa+2EZALG7088L00haSwD/lMsXQ+yc2AisEKaH7t8AlpQ+LZQkVpUgH90wsehBi0go1MsejYvXfn6l69A2wB2/+/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ma2rQolI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ma2rQolI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7353C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765687373;
	bh=PddKR8IALKlivZxn/p7VKj+p9eu5PZZ70AGM5cZROvk=;
	h=To:Subject:From:Date:From;
	b=ma2rQolIPWvboy+lnKgyZ132TZ3qxRcBsYnwNfESt2NvjBOs5oD1SlEtNkrkB6bpE
	 1W7AwWPmZKb04AyzcixOaOe9/cq+3LFtzxKSzPc5+ZJtwzzHxquhYkg9UaHjNy5AOO
	 8XNLBuAgduVhjBQ+KZgViNZibt4du/vnNq3vyWu3OhuFNEwuYxybRC0c3JXowtu69L
	 uqkYob/S5DMxRhEyUPjTiTVEuiItI8QsR5+SjCaTv3USrwMBnUzVB/6LVD4NNLjMYq
	 4loZKLW5uKjrHvluVgPEH8lRtHbg3K7WliGvWcMAMSCOEL4JwbnLwUwXzhYNvqjYTs
	 gjKSE16HvOEqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A303ED3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568737365.5654.10008262598017938758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b63fff400a2836d4938935aa38229464b6d4ed80656c4cd92a3293e41f8387b
Date: Sun, 14 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765687373
