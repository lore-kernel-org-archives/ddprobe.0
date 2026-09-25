Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D544AA1C9
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790347234; cv=none; b=Geh4trkBnhySIiDPTLSGfxqonBU1Ij3/IPWzlwS+G61F8nQAfYqa9H+/Cff80hwLZstZr0ArLJJ5Ui1JKOqDJ0D/1GFUkmIdPsaHWfXkG9QZMb93TO98QEXOzJBTA2SSsxXl3+PUl5u+wMw+10dfQo6DDa4D8jwn9F9vn9DGA+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790347234; c=relaxed/simple;
	bh=/5lcrP/GasqFixE6nazC5xNuU0/putg0qffvWlXaIWU=;
	h=To:Subject:From:Message-Id:Date; b=B5tSSgQEdwvGGof/0YHLKE45A7RO4tBGoGPBTJhgjYJ4/fEoBoicoT/XZWt5j2ytmkuhY1Y/oPFnfSZsEse/xMKDHAYgJnWzSMSefLMMU8mPgCEVp7Hdgjfz1h/AZGsp8a2amomSd8T/DNZT83kzlRF9DEOenL5fS4WXh5CH4n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5Jg3ZmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5Jg3ZmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54DEC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790347233;
	bh=/5lcrP/GasqFixE6nazC5xNuU0/putg0qffvWlXaIWU=;
	h=To:Subject:From:Date:From;
	b=k5Jg3ZmVdwLpQgzmOOQU502BZJ5p6otpkyH8niHqL0aQZbO0IGkT2EyGwKiqdt7nM
	 SA3cxN6D0frnjPQ2MBdsQO3bgwNUChZbQfHF5JXtdD0Yqw1Iw+hMJNVQtRi/oEQl3F
	 ujReOJsFxX0GHGFOGZoS9eMpQGkFGxb2axweBxMKulB64KirqSYyqK+rx0Y3Rd4GrJ
	 KjRT+cumuzZQWGrI+JgA5xaBBOw+fkJMEgHyXWR715tIaQpvc1xF3fxF09g8bErLO2
	 iDceWTWRQ7v4L4iv5Eun30BwBWG/flRMyFD3DpM0X81XgJK/bjG6Z66HVgdF6BWhvA
	 cxMW1lEqV3i7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B092BC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034723369.16143.3893060477157885939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c65ac1446bc21150ec47c338c4b4dac539ee67036cfdc22e7b3c9ffc02f6b7
Date: Fri, 25 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790347233
