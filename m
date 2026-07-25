Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A4930DEAC
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784947834; cv=none; b=Fq04Z/W2xa1qZsWvAOb5YYcKiQKrr//naBOl/v9Mb3GeJMLtAe4wge/YkuD1sVti0cjgzXEuKQy38982zKyv0AKJTsSlMhWoQIkNvUGKXW+Mo5mN8B6t2VFMu+5msfR8SzeiZqGr2psmDnEK8t8qnHqfpbNDfTcFMF5Yq5u2CwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784947834; c=relaxed/simple;
	bh=VkI0LFksL9oIKC2adAJi0MuULp+RG4asYP2QO71KwmM=;
	h=To:Subject:From:Message-Id:Date; b=uJ8WlF/D/PkDbZx+mdt3IdloM0xMOoC+iijA17gCPA6Andq8kIfVTQWKxwzocy7e0NpHO3laEMaFCae875o4KOA6srMRFVblVByTqjolM8J4DiwvHV2k+nYOx85zBnBFajGmJKLXvMPl5ewa2E33/E10YCPJmpKXd4m9r1EYguI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qP5gk/uo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qP5gk/uo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD303C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784947833;
	bh=VkI0LFksL9oIKC2adAJi0MuULp+RG4asYP2QO71KwmM=;
	h=To:Subject:From:Date:From;
	b=qP5gk/uoHj4GIg174anMzCVDGZ+jVx5MsGTzKf1yiOeRjYELRf+6clE6a4KGswEhv
	 e08BWlFUlD2cdp7co0q9Cxk0V/xHUEDeplPz47p4JDGP8/1qe2dPsSme4/GaSS4QO2
	 huxTIiqO1sC3fAijXFjTpEmNROnF2P4Ziw8QT6Jq00YqCOwk2z+TB5ubYBJF9YmhlC
	 loqnVRJFWRD/T0lR7AJk/bozF5QjfAT9uj96vXGaY49UvsPBD8sAEG6Ux0mkkfnp8S
	 LfvB2Q6g8jWB8A3+6KX3OefuTZB6LBlGnvZ/IntedcJIwZou0vS1rXRsa2iC2s3QmB
	 AUcIRKHQGQrtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A983FC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494783368.24095.3639456187298876608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8170a3b3baa14b11de01179dae92c37312e5c0b8b38755b6c58a3ab51d1d1bd
Date: Sat, 25 Jul 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784947833
