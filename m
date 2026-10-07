Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA3B35C6B8
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791340234; cv=none; b=qDDXlcK1rqxJ118/foJgY8JWbTRQPaeiDKNCer17UcLVfdvv3ZIMXwW0TxaEcEmO2ZACkeaRcAxRDEY5pCZH/G3mNL4UrZieLfAD2hmW1tiNToKWsHDjt/XYCDAcsVti1j5cs923zg+KlhSRsUxoQJXYxO/L9+hKuMHuA7n/HbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791340234; c=relaxed/simple;
	bh=LUCyMD7JIy/FFdtlXYSEsac/8jQq/OtNzn84/6fS5y4=;
	h=To:Subject:From:Message-Id:Date; b=TqgySZNgpaYqQo0TJL2FbXP5PK9xN3s+/7T7YVic2c3kdlMCrCtWaMz4j4rJ/w02cXYhMfV7OhdFDvsiVdcswYLJR4Yu0JMYqstgjORcJzcBZJH1i/s6WrSjhlqBNS0NN1kgyrT29HX4eu5pqdHXA8pqDb8YzbMHM60/3tPtyvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhli0olZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhli0olZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D661EC4AF60
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791340233;
	bh=LUCyMD7JIy/FFdtlXYSEsac/8jQq/OtNzn84/6fS5y4=;
	h=To:Subject:From:Date:From;
	b=mhli0olZ1pwqUI60HKoRw2obZ7J1OZcaQnSy4S77weapKL6Plytof6Nc4Oiz8LnEh
	 AuIZG/zhI6fbq83hSfTU2ru6s/0TfHN/XFGLnQiX/PdHCwbLJz08Nav1xK4Jn/h+SK
	 yTJScI8tLXg3yxFscv/lN/lhnO2eqHoDKHd6OijvoySnxAjIgtCWK9gvqksYjitI1I
	 zsU/YjXeT3LV2mDm41K2cv5aVPx2GP2ImUg9fm63lBjdpFCN+d6eP7bgONK3JzUqTV
	 78oJ25OWH9BlNetdTVuRa80gN+k9R8Erq/wRnJmhqsRtm5XZRJBhgLrzy0DgIR6Urh
	 sCKKMFKGZ/rVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6C7CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134023368.21693.8217687941965850184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7236fb3b039c345fa4b7777590ad582e2977502887a3a095df35489cd5778d49
Date: Wed, 07 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791340233
