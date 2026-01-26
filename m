Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12828214A8B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769417034; cv=none; b=TjddyfOsfPQAL1MQPuZb1wO5NuTIeuAJEax8dEZbd/vHU5e+C/6PaBWYBuU1zfv3cVIcHiBLWC/z1SJovoEIMY3j7GLH0HcVJWAYOftqjSozTrc/2O6UqhfJnRcWY5X8nUduxbazXkaigEvJFAl+ANop2ULp8etUZLl3T6BgxBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769417034; c=relaxed/simple;
	bh=OEkCZgeHc6E9/tIPJ112FxDlf3mZFs9ChKAPMwYtPNM=;
	h=To:Subject:From:Message-Id:Date; b=uZO3pKZpg0bd9eQHrEjsBZUE9p7KZZ/v3ENY8jViN5TG0lM/rhXfZVgDU12B6tyRWn6K2K94XEtC69tEm6Fx2Wtck3WJ9AnnRuUYBJOU2StFnFmWzVvnRNkSOz4SbtjFnGH/23EnnLbd0OWJ6BqYkeP+W75oeweY8L6xWyNCpgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slpSzW+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slpSzW+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A076EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769417033;
	bh=OEkCZgeHc6E9/tIPJ112FxDlf3mZFs9ChKAPMwYtPNM=;
	h=To:Subject:From:Date:From;
	b=slpSzW+v6UdlbVBPDKIfuqOJ2CrKaGtMDzwgmBMPwc2TsvH+USuNtR4afz89PnFjB
	 6dRWx5atBQ8+Iz8/eUCPKwIbkIv9mpMABO+Bg6DKf0iWTDK/iV7MithFq8ML8r9ecn
	 bJGrFIbhJvcroj76lgeUelIMVN1NQrbE/C7fURjAXcADRIWWr5Nq/FalkW2tkSFGax
	 fEFQX+SlY2KQEgJmOFhHfFkLJMtR/0auvk1YneVfmoOS1yQvyZBDgp+25392SIZ0Gw
	 U1bXP8//u2T5hmWDhr4UD2hvhTkrHUKVsSEEQuvFKfmfrbx7NrkbcKkT9BPWwT9q62
	 FKP5I6H2y1kYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F4C88E78
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941703357.23384.12279425318124713477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918b4cff109d55509fd3a2b69a3a71d2b46e251a2e09d6744daa462336688b1f
Date: Mon, 26 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769417033
