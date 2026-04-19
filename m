Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A5B15B0EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776610654; cv=none; b=EWrrzD8ECYPfHxr+hl5jgb36fHRgeyFYThKHpeTfk65TO4FKJnNLf+TxMiS6BjgKL2YtvM8yVBkGCfTo3Akd9ONlKGgMv5kr8pILSSzAPYZ/KupFP6VtshQ619a0tX+PwnzkcgEOwUs0pWlKNvfDOQEcQlVJZZBWH5AHWPYH2jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776610654; c=relaxed/simple;
	bh=3mMms+jyjHik5pyla1yd+mN8FY7/ayOJJwHhrv22ezg=;
	h=To:Subject:From:Message-Id:Date; b=HE/wFZtJ7Qsu9VVFHXxL2QNAQirhzO/h188ceJ6Cmd+e9Vzai9GDkoziR1PRxvkS8eSoZLBhUFoM6wCPx/7GNmjFbz7v7ETRtxdD6pUx48c4kdrkg1pLWlJgFIurTwr2rtzyGV2owWu7cwe3zn3YoitI6HXHTEZYe/VmW+EWRYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlxIeJzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlxIeJzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEAFC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776610653;
	bh=3mMms+jyjHik5pyla1yd+mN8FY7/ayOJJwHhrv22ezg=;
	h=To:Subject:From:Date:From;
	b=XlxIeJzp3B+W8K3O0Ghg1tVqzdUXiIimef6ukzqgHDoXi1CUeiTCNeh+13HE+MZeF
	 HJ1M2nHJOnksfoCTKmYS9SvY5R5KxtU0jg6r/bk0LqTYPveOjMG2BiG8wM2ALtBD6O
	 NTwhQbalRLs04+8HVcPfvTntmb5LkjVgzvKTjXfuaIy0nzGU7LsExJ80RRGadhalPR
	 WDc1hrsfpht2x2SsfXZyncSatL6NDXDU90hWEElrDQZ/kl0HejZAO9O4hBkpwgyvPt
	 kNl2cafvafKfV38VTQEL1W1TaKHnDqYMPX4n6ipO6BrLSwY9MFK18C9FfhVUGcltzs
	 2nRXf8C9BAV4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA01EA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661065368.5927.8847318870344363160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c3ee9b8b0c13f5f4b57a4e68e613661e76639487355d40adb3ecb4f59c985a
Date: Sun, 19 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776610653
