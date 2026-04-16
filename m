Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9B53A2572
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776356854; cv=none; b=Sxpr/5jgPDIqYkg4kJaqjTVdgOYGFulQy6GwiChiUIPovesQS7hekOdIRgeTQJmrvYA3KC9fhpyyZ8xPnf2TE41KTOZfJTkWv+JlqFTApjt8WNryRXAowJBsBcdnwZ6W18XpQYZgmIzWyG831QAi6mGSFhxLHLWchPDe3b1+x2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776356854; c=relaxed/simple;
	bh=dFH76L2jOCM0RykGgXyXqXSJ4mDRG7FKOPNIsf0bhnE=;
	h=To:Subject:From:Message-Id:Date; b=n9vqh2OM9jAs2EAD0CyYdIp1tcT+irOiFVp+fJ1Jfi10yloZxPLINdnObb+BJ2ey/tHePe2kqhsLd96Dx7SNcc32mfbblvM3wSW3URxY2yyeh79XYcpe8nl0oYaoQRBsUmAInqExy96SZUneAUqsWARwfvvpVrbmIUED3vAFmjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNYolbKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNYolbKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B868DC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776356853;
	bh=dFH76L2jOCM0RykGgXyXqXSJ4mDRG7FKOPNIsf0bhnE=;
	h=To:Subject:From:Date:From;
	b=tNYolbKqaSg4GgazdhWQihZ8RuidRuD3b6UW0Sawo5Obzkry6zFDTxcPbUkSIYick
	 0yFsETFbsA7ydL695GL5XGmLiE607OZHinWeLZe3qmqG7K605DSGGuvN/CdM170LMV
	 VmP2feKalEp9AsENirbzwMMpE7yngEujFRs/7UCJIC9YcA5H7QAhJt3Sw2u+GnMQrO
	 OzVc+kll3E4dwBM6aCdm/lZF7zwHMtl5HDfhDnIV6f5vkwD2H5PC4OOw5fkqPBsldQ
	 AnOFhHD7L39NgAXA7sRGa1O6vtaTwEe3a/7h4ZVhatz9VC8EpjEr+kZXFylSMyEx8I
	 fpHNqPu8hkldA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6EF8D762
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635685369.30335.17434476750969796450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b1e81d715961504de10c14a323df9e2f6b39c70a687f2b4a16d14fc6ce1323
Date: Thu, 16 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776356853
