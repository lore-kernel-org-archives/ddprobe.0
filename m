Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382953B42D0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783724314; cv=none; b=Bcvzo+G1CRIAL7fwSwgVIcwDq9/oe9jAstM7MXeQY5yGjP3y/DzliWHJCf62zmzFiNJIQTsKdSwd/UTwIe4MSIl+BisRdbaQ9Gw2kap0y66U270lZiJ/8sxg6UHU3FPhryFCC5mD4GVMmEoq6xgcuHPONTiLXaRxTIN37OJ/tl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783724314; c=relaxed/simple;
	bh=Kkaa/yQ/C3dH6JPmiZg7Ce76TysUlLz7PlXeWEfpFZY=;
	h=To:Subject:From:Message-Id:Date; b=kxWLoZKtdLfcGP4FeBpviROZ6aH7c/tlRa8nAKJeG6q61ox92jYuUm4z69ihNUnW/18XohBSrRQwaB4crM623t53lQBqoY9MrhvqLhLDInzrnSKFSwT1C2u7M10FnznQTq7IcqBytOK+bachZrCyiP+VxyEzqeDJB8NZrqdXS1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMwiyeZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMwiyeZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2CBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783724313;
	bh=Kkaa/yQ/C3dH6JPmiZg7Ce76TysUlLz7PlXeWEfpFZY=;
	h=To:Subject:From:Date:From;
	b=QMwiyeZyd5z0o2JRHjhZt7mO0++T7nD8QIONlTbGmp2QDWJwIPM+IxmOWg+hhGicX
	 UUcbeaxd67cmXR5AZ8XQyDOTxbhFiYmJncdZX3+MOJhCwXGTghMcY2d7LwWWlXc1U/
	 hxt0tJCqJhLINiqFLTZTnAVZXXEN5UbNdMNNAWw8e6Umi/3ap2xs2p6eVzoHCJqnBA
	 7k38+k67jE9UExC1Egh75m6rHIkx7MAzcMAAi4ccHZXyoeXVAfSfNFVITEw1cACpnA
	 pYA9PwhFxf4OOJ59jKxF6epVyBU5CAfpXnBSJgreHhZWyZit61XB/wm75VTQW0v4dn
	 Ekb7ft3Rgm8Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F09C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372431368.10419.11929038067423967946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78c4797dbdddca0407505370a18ee59c9805858e8462e369f4a5a7ea4fa2180
Date: Fri, 10 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783724313
