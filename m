Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201EE2D0C79
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782392854; cv=none; b=jcoHJi0gRP8L6psyTx32cBYv01zic+Ppi2LDOL+nnqR7yRTD+vCutE+OJNb0a4B05F4R/YXU8K1iQrB9T0ucIK7NmvZXt8vyYq9mQa5CcxyAdHA8bfksTLHzZHKNuHrhWCJdbW+H31lGBpBHxeVyXpfOC0nuSDnKTO66hif0MkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782392854; c=relaxed/simple;
	bh=BobxDbpirB8AlkVrFkV1TZ3I3148OBQwTe+zn2+7EDY=;
	h=To:Subject:From:Message-Id:Date; b=XH62oAP5lOTV5DCKB/BOM8UTCJB47j+dZfIJDg8JtTV8H987IEjiGDzT8ys4+9QolidgyixWPujH8xTbwbTjjZq96WUrypZgGy6aCRZAdf1ih+DoKykzlHCI+78YuJlNa72BsL6zRyiz/423TIj0qIjS9j4B5PXxySSH1XWyZ58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjaN5lK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjaN5lK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB758C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782392853;
	bh=BobxDbpirB8AlkVrFkV1TZ3I3148OBQwTe+zn2+7EDY=;
	h=To:Subject:From:Date:From;
	b=rjaN5lK1SO3u5VZlWGwra3dFDMOuZmYX0Zg6s9TIa2Ga6Ko6j4oj6nQaGxbTOz6CJ
	 iMJqmKKlV7zFQ9oeK/zSJaCk9Lgtir9OU9Koao8gzTRs3PWAfLcSycPOliTc6vpX2g
	 g30CLVsPiPtE5QIksOBpjIh9MRO0oXeJaWwacFKOZI1BH1ne4l9qKU/mR82iq8exoo
	 g7HPWDB/nPj77E7iCELv4QFmp/FUlxnk+LM7pFa5Lq9BTm/4QzH5/s7oKwjFSBKOG7
	 dcCgB2Xr+HBQsXAtrq3TuSDGIg4ezEWKffsoy3fVik9PsBgKbtAPo7XitX+YHC/VB+
	 PpDj86BjD7haQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A0CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239285369.17187.12352472128585258422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e266efe3161eab0bb5228aad1a1bdcc6d11692185828c7a135a1852498e3652
Date: Thu, 25 Jun 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782392853
