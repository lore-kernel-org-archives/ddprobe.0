Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E22632E75A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782328054; cv=none; b=ofp/6wxi410m5v/hEplOC7npIxGNde4o18NJEPSe6RI60mRENJGzhxWKJu1xssICdC8FIBSUQ8WFV96ejD/u34m1i5i5j1/hG06uOLFoliMpC/+DtGd+dg26SV6+ptFGbs64iXgGMX6OWLFOviH8pJfv5N6Z56M+zLdntkA9KHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782328054; c=relaxed/simple;
	bh=1uL+dmAhC+nZ0W6HRemCBn3gq3R68FSNl9zHdWIoJdQ=;
	h=To:Subject:From:Message-Id:Date; b=J8llTaVBB2BWgtZRaQ2aX+sKIODuPsw+2OSvzXAw5rFt7juorVY/7IpCo0hFKsCj0J+Cz8mZC0W40KyOl20yBfcWz6U4oKfvxtwwjggO1xgSBK7LOfIjPDnqwnN58G3i7HLNm/87bjy7YH4dZRV/cxaJouLYPgVsmw+3L9IXrlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBZljb6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBZljb6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDEDFC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782328054;
	bh=1uL+dmAhC+nZ0W6HRemCBn3gq3R68FSNl9zHdWIoJdQ=;
	h=To:Subject:From:Date:From;
	b=fBZljb6tkvc/vjXESVALZZP7LAob9r3nbL0bVw8tXd3y2oEIloFHneSsfcp0vlUmC
	 SlTFp0B/I68AFXVvXnbKLJEXcarB4G5SmJLC8LChd3MdWcRdP+KI/naa6Z51H6HBkw
	 Dgp2/we1OOF7+nY08U5b8CwXbkxG7VHbvglaFrYL/G4M09dGRG+PE/RwWv+7pY8z9m
	 ySQgzV+m5x6NiWRikoa+VYOz9lxRkZJIaMuxvqlC91mXXHaRcUtkQHDbHA8NPHcX36
	 ujCmrHcFprinC1/ERnhuAFbo/Ut5xbBFzIphKkqYnaG6OuguXxjpZgmZt/FwAMF6q+
	 sj72HwM7iNLRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33F7CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232805377.14022.11404330213347885487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c626a13e986fe977bab67824470fafc9b58120ed4f9cd31b49bd526ff3a3e364
Date: Wed, 24 Jun 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782328053
