Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397AA243371
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759741194; cv=none; b=JqbcJXFh2rLklIei/xEK0dpUUFcxZDN8dgl8JBMu+d2Gd6GfUVx9hGXo6NMRcgrbFRenzstpT8038Gsm1ttnKkcsHu1BDC8hS2G6BZGHRTv4SGSCk5QP4SGPdO+avBpCwoxz0bdp2l9RQjw/qtCmRK+0vn5Zx7tYlM8Ok0tdMWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759741194; c=relaxed/simple;
	bh=VlvEcST4i+CIkiWl6CgyPJAhTxnfauPf7YXo1vc4sy8=;
	h=To:Subject:From:Message-Id:Date; b=LUW/u4N8cXKekTPunU7Gja9rZ6zXjasPDMg+oc4c3B/2IGkRd9jmWB4bpS5LoMa2fm+D7ddSTJBfTYWnIY0YiogqjzIYV4Irm/lh6jqZLN/znywnixzmL+UBFMDOegu+IvrfV31yW7xEpTi+bBEdYSpFWWBGT/tiCjdoHqTrjVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iN7zsz4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iN7zsz4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FADAC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759741193;
	bh=VlvEcST4i+CIkiWl6CgyPJAhTxnfauPf7YXo1vc4sy8=;
	h=To:Subject:From:Date:From;
	b=iN7zsz4EOxfLz9kodBbdn3cZSst3lMoFz1+zxjtuRck7+sclZphfOc1V2ZL0Dz5IX
	 OjaFhmv67KkHqN3qFlU3q6En+jUcKRC+GXq0zVaN7qWanD48cYVHeyWaVE3MfSJEhC
	 JVTn8Wgrd5RvCEbBSCdxtqnPyEbsNSRKfZIir3tv9fFzAUiHParIQNtMByYPLeYCyQ
	 awhIjweh1TquStfrSEWPhawc0xFfSrsZyhsqA/HcgqpRmRs2GSLCIfal2CeGwPmfcA
	 6JMH3mZ/6TYezRrjgUl4Jym13Zhc1JKY/zaWybDaxbSjHsWZbidcnLyUWXyc0hmhQ0
	 qZLqDbNxnmstA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10DCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974119357.2093.2169040044082307483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24085969306cf39f233698a644675be7b9714c452f083600bc6729abd928fae
Date: Mon, 06 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759741193
