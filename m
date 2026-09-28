Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226C63DCDAC
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790600434; cv=none; b=FXZarA4fWV1uowZkxb1phscaBoVQX8JCVi2MkneP6qswozNGoOh1roFdmLXu9wrId6DDP0FI8U3IaXjc2sT6SUjA5LTheKzzkWxFM+B566xl4BDFMxI7R5qkb5/3PV/TU/ytjWcohrKny7HrON4GITZdu9Fv9mZFLRwrac31Pu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790600434; c=relaxed/simple;
	bh=Yg8oPTuLt9p/7/THz4oBNgZD1tyvIg0XuBxuQAaP62I=;
	h=To:Subject:From:Message-Id:Date; b=KL2X5UXiHOuVBWU5k8F+49TIDqJ99U5lNnCICbn/X106pZVxj2/E64v7MmKtmX1RJv1e0L3f8u1hVpQJ7pLcLWhhtgi5Dps9dskmwtx1B27QaK8WBtDjGyaG96L/5no+uCG1+QMc5NgRJ6Hh6lDA11kB/0vsc8+98mGr/EyLL8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAr39iD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAr39iD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC316C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790600433;
	bh=Yg8oPTuLt9p/7/THz4oBNgZD1tyvIg0XuBxuQAaP62I=;
	h=To:Subject:From:Date:From;
	b=CAr39iD/PEnNyo93dYDqSZb8xTvDVei5t1KQ618Y1KkO/+BSt7vWh5jrhpe6Fc0Xg
	 ZoTUybFN9mqZkf3XLV4eoGwYSDLp6MbTbmSoM6YTEZMTv/OMD0QJ7PnUC2+uhflj0t
	 LRV2EBrSvQWbK8rvdwTFoHPgsfLWp81bo2mHWHHCNZAkjiQWsRcIz8yhs0xgqLd3yH
	 LLndC2l68glXgCEsZU62QoL/7WgG981obstbVrnTwzcR3e+tpCNNfYctJ7yKkDJGN5
	 qwzc9woLreS6OjgLjlbeAOSbT6xDtFE2ff9gjD/f303VMBHx7pICGV+g2dPY1GGJi9
	 +q93D9wvfEH9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9073CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060043368.4161.17079717132949971774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1de1d291d79c275d30cb46d542d5774747d707b5f756e4e17921aac864e811
Date: Mon, 28 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790600433
