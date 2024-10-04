Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B27F132132
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728026754; cv=none; b=Z+1CmEN4cJrZev1+qxmRFzQhggsW2x2qD7Xc0h65pwIsz4HbdUW2KuwWcl25slIxLwVXZq1Ryc8Hd4zcEtQjyWnGhfRf4Is0NgneKHb9cGgjF/nQewPeGGZu/GEFrgPjl55kGm6Tu5vNbPP/h7/fZeW0avKhkLcbKbQT+hrxiP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728026754; c=relaxed/simple;
	bh=p3uY+CFIO2enWmPrT8NyqUlNDU1e5FtOAwx1TspQHHg=;
	h=To:Subject:From:Message-Id:Date; b=Yf6zP+j7ydlqnXNbJKvDZxSBCVyMfBfr5v8MmUHto+ukO3J78uS6DFcGQ1aXJsFVxpuuRPkUHMOIxdktADJ2lyNIAYEev2+nSEFuOGp/g1oE6yrWubvDYHqJlcYoiUhRskkJI0X2+7Kr8rTn/VdQbO9UI8GNqbGBg3mMkNjivWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sgz4zSd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sgz4zSd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF459C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728026753;
	bh=p3uY+CFIO2enWmPrT8NyqUlNDU1e5FtOAwx1TspQHHg=;
	h=To:Subject:From:Date:From;
	b=Sgz4zSd2Gi2bIzfYxcf1QVC4hsVe+es34sdseVZZIHQB0cRtpylnH0q4Q4HLkAu5c
	 LUpyXHIL8LvY+lMg5uyx8iEDnK+xzEG12MgDXblHihQj780Rs6CTjPal9PASh8PXZL
	 uvNmWF2OtACb2BDSvudxXDLvF9jc49tpjEGEZ+6Mc/x4BY+7Yy+35zlRqX4VvTf6Md
	 4eNebpDgvWQyu+1oAxs6Kgme0B4Qaw3Ln8qOG/ggUmjEjf2xhdQRtolKDiLVYXEjAO
	 7rYvMBlN6cV3ct0kWogTsoKa6Qn4AjjXSbhBfvSFdbt7ZanIs2oqZWke7euNyyiDw5
	 wxxLHHI6/+UZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E65ACFA74C
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802675363.24332.11847747017711177339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62515e7ea6f61bafe7cf4579dd04b8254b4e168725119f5368eaf18579535ec
Date: Fri, 04 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728026753
