Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5392E06E6
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765701774; cv=none; b=r0j+gSX+81KPbOWB6nIIJMOU3jx9aq1K2b1D6Qh1oWlttNQfCdxagUDiFT0uD6JPuZ03G3E9DYNDzK1N4jisK13Es4kfNQc5MWGbSsd0dLJuLAiM+aDMyC3XRE8G6pBpZYlog4mdoQBjREhslfYUBYYtUVNwDL/SskQOB1guTZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765701774; c=relaxed/simple;
	bh=idRTd3+B6SSDECkY9cqafXuX023N/FtSXzclsQAkjvk=;
	h=To:Subject:From:Message-Id:Date; b=Ou4LdkT7Oao28jqDyHxhb05RQE78vR8LVw5BJT9M0EaHHMoEmqf1v/NxVnYHn5fudsO6W8rcJ5qxspl3FTF+JajQD+hcjkK3V5xXvTNOKE0rXhZ+b2oRHipl1gYSF0X6hGOk2XfN+ChxNTCrk8VRCBPNbFZ04BmKY9ZgbSwm86Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiP+n15b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiP+n15b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC26BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765701773;
	bh=idRTd3+B6SSDECkY9cqafXuX023N/FtSXzclsQAkjvk=;
	h=To:Subject:From:Date:From;
	b=aiP+n15bWnFLdhQf0H+l9Pld3If1DjAjkwphCWJCq3p06ahAZ6iwak/8G+CKfHuty
	 NAH1dODpiBl2R2Ye9LqQF6lQll9Ci9Pj10wvWuO7fxE30Hsmym6EI+vJ0B43T05JsB
	 3KV0uDoafOBk+2AAZA7AcD95SG4UJTnWffow0KcdTZo5Xu0Kg17Iq3H5C4atSNhQmZ
	 OIOVIZN8JybqJSfQATKvZgKOUNOWFi2jYM59jLeV89TlhbEdXIhdtJ7mjkuLJhjzwQ
	 jxwA9P4StLp6N2xOGKe1C6ASf5eAI86KFZqKzcY7HRemOj+zLBWq3PnIBWyCY1rS+W
	 DqidqX0ck0HCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC4D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570177358.22510.17659909837945170344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddaf7225e9af1b99f5b80ecc27bd01dd8d803518b3a4ccc3291c7226b6d113d9
Date: Sun, 14 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765701773
