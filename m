Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA8A3537E5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789056034; cv=none; b=GGd9aX+eC60RFndU/x7CWLoefA2a25MGXX9FzzdtE4uLOGGj3OGsJIeIfwyfWE3EZq0oA4Je0zxpF3AjX9X+mvLLYV3ltihhn5QnFQz+nI1pkCy1XkVoLrrKuVi+2V6RgFFnHSdvLSOckKyV6GMRGqr14s2STzYpRq/NbFhQg40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789056034; c=relaxed/simple;
	bh=iHOJQmkRdPoKeUug2JW5GIa7PbQrplOU9IGMeo+cVVc=;
	h=To:Subject:From:Message-Id:Date; b=IERJyhzIYvAvoDALXefmNHlt8tlYyC0PPqtzhgZInbZC4Wo9oxVA804W3R9NhTE/7LkfTYzhkBlPOaPccZtfe531mI2JeKOe7Y9BcUCT35lfnGWTobVr8eDerqviqkMLnJoCuIr3VMSccyTk/66HYx/KcWK/oYuDdha7mPhaid0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdSBj7iz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdSBj7iz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65A5C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789056033;
	bh=iHOJQmkRdPoKeUug2JW5GIa7PbQrplOU9IGMeo+cVVc=;
	h=To:Subject:From:Date:From;
	b=LdSBj7izh2BRIvBPSr2Hy0Fsi0XffbzpVE1xorqhwNJZtymzR/8KlmHSOf1vpVKRN
	 3feygwil63HMS3EVzUD7vipgQSaj6A5pw9XWu3E/65cOrPk+RhXGcnNE7q7906+P1k
	 kUP8El0oqaRLeb/DArVmFRuFwNAhHDkuE3gJaIUVTj7craOKzT6SPj4Lo4ooSSFR2q
	 PfStj9IlpxmcsBaiHUM/Hc4+cFS15iz8d64hyUsmjNOY0B204wqEtu11gd+78NSG7H
	 1wPrTqiQY7vwM0ZDiYVAEj4tOZCHQWakpfIfUXJsdMu3R9o87iVzGZXqiwzU8IPmUC
	 aTc7DT0j+18UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD43CC79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905603369.8949.4776054915962589890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425b76c9e54b5b74e3abc639ce4020de06bfb0954eeecd2a6bd94b2dadde0291
Date: Thu, 10 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789056033
