Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E4717F7
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743166194; cv=none; b=GEytwme6IkDWeUD1Ws+eE93fyn9QpO+5LA1387OPmZavBDzTOo67an4y36N74x0yElVH68I0BWkg9wiqU1z3q48unVhpeknwrRNUm5u5AA/G+z/PbI7cFEawjfsfA0X8JxpSCNK4NtupdI2azlYfUU6CHT6Wv8Kyw93nAVcvHtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743166194; c=relaxed/simple;
	bh=F+/1DZ9JWXk+hsBLLD97FcR3NuvPmSmbgVS9KUndHOg=;
	h=To:Subject:From:Message-Id:Date; b=rFNi1TtVaDKN701zoTpRO+fZuEnZYxem1MLOZa4NM1zREk07Vc37mjNYl7gyitnkDQ2B4KTyG7FhS6D4W1SD3cT9KBJD3+/vYBD8Ws6foXsQj5Jp+HhLC6mo0fBI96oex08iWaRIbZZk2Rp6hRGdDzuj8+KBT2r/E56EHoOB/oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0s08mQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0s08mQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC81C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743166193;
	bh=F+/1DZ9JWXk+hsBLLD97FcR3NuvPmSmbgVS9KUndHOg=;
	h=To:Subject:From:Date:From;
	b=G0s08mQFfUmEBoCJ4JLJfeiIaZC2Ou2HQvLZDjkw2VWCNUREJf7CZW9iPrFEE88Ht
	 LpdfGfdn1imEM1or39CAmJBavIx89Yj3gCJb7BxuMu7Asthc5/OOcAqL/3nPe9MKRH
	 dOd9VFGB/Cb2uQRf8xOAjWpGRKLXWXdhVwvB+nidc+RhR+5nJdfAVKZ5psCHJqJCN6
	 j/q7iSjw06LBYtIwZzY2Qwbx61+wc7FuhkqyUja80BzpwZO51rqmbJp3giYz/fzk0f
	 1XuY733WpFPn3sKMnzt/Vk6p50Pt0waH6175A8H3wmcievCKnaGbzdUFUqAQai3k5w
	 0E3ue7sJ1aUkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACAAC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316619366.8583.11147305217535897967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8deb6cf4d9a852e1229308ac459f835b74cabaf2b505fd13ffbc5b3d1c22e304
Date: Fri, 28 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743166193
