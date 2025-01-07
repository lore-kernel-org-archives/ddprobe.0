Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C13522A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736226354; cv=none; b=cHCQKB5cBZZ1XDMGc29IXHJrvnaUWkdnqUaHH8moV+oHIrPayqnl4rrLgEvEHZxMhTKRxOR2yK8fC6+yCqyeYjUzr9vjEomzYf0ia2KQL+jMktrG8VW0VPCqGz4jx9ohHWwDCdodII+eglkjaFh3hmBoqWEQiT95Ir2fMawp4uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736226354; c=relaxed/simple;
	bh=3Xd3ZaD+CKtoHTrFmec/wR9toNpe+J2a5FbPwJdxofc=;
	h=To:Subject:From:Message-Id:Date; b=WjDcEBQh81NELP4sxA1nmzxHMUJRMwQ/0AQ0EurP+mKYcSaeq6lUiHQY3wIChi6Qk4R6YEcse/ImmqR7almdaxC+hzCr5fsRoKShV3RFDFDpAPP2UkRXXZWWcXPUA3F8sd7B7ClLZiJxJglZ36cKdiAKYpvDigrSSaYt76bxTus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYJEV6PC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYJEV6PC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90EDC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736226353;
	bh=3Xd3ZaD+CKtoHTrFmec/wR9toNpe+J2a5FbPwJdxofc=;
	h=To:Subject:From:Date:From;
	b=aYJEV6PCNliDWjwitmi8RYBXWsp+71YLeQXi44AvochP6K0rXU7F17w6OrU9+5b+O
	 pNXqVJVJbFIxWCVuOCC61QCdrPcUdmbwV6Nd/o+OLSsqW1kpclFamIsMFQh+fuvW0g
	 N855bFBQ4kK63lXSDJLIuw+V2G4hAVkHISnRXWpwyfMnV/LwCEFX7vInCy24d8EBdp
	 9KHI4CpQFI/REc7lTRe6xUPNLIMQElY9jYPrq67xm/2RqilGzTpqqy2kLEpfDRELEx
	 3GVcqQvKaUlPbgx7iULmp7nna9T/vjzW0KojOzUrN+d1g0SB7RPJFdIf3J46I8cU3h
	 6oJOvyFa7PIBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2FE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622635360.17635.16265131836350161396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67dbd5efafc4e4e5b6aae31edf39da45cf45ea500756388e98350d479f7dbfef
Date: Tue, 07 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736226353
