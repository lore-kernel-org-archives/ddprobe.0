Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571FC1591FF
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 11:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713438563; cv=none; b=QWPQ3ki72z7Nya35x4npdQA4OqoMU5FJaiCvyhsbOKDcxgVfabMP3OsICjD+P6Nj9wAdVBcRGu/0OELddxyffNfWAE7Wnf/9x4DdZz/EizoruJjZLrYYCVh9vpxRXHRganMvJvIMuP8VqtycZ+dsKChSKIA8wPGnHbX45l3UD7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713438563; c=relaxed/simple;
	bh=icr9D2cXOjJi5+Md4rHDlXnnR5L7vLvws82/jxF+PwU=;
	h=To:Subject:From:Message-Id:Date; b=TdsZWmB1nRQfv5ilh1aEjvtCnDI3mREokIiZPuUCyo47ZyytJ0VMkCFxH/QHng8iDzOtwOhNoFwb4WQPFEkpUB+qx8l3F06RzrlC4b+ccFAf0J9bhDHaCFctHn+SGxC8aCnDU/P6WvGZSic828MyYPQcH99A9Vv8EF7PnMMYufo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ84socR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ84socR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B76C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 11:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713438562;
	bh=icr9D2cXOjJi5+Md4rHDlXnnR5L7vLvws82/jxF+PwU=;
	h=To:Subject:From:Date:From;
	b=TQ84socRwTtl/rGF8UtNJTVEkaJzzKxc8/xXvah1WEE8cMFRpxxXp7Ct29kPirskO
	 Rm0iHCIR23LTAzxKhy/x4+nrhKGQkibYSKo57ChW9PEYRmcVkBSDs+s+UOMR5V4MCa
	 OXO4d62aIl0jNq0qrg2rGByDOzvJuL+WfApKY6UlmjQvXMcBYj5PvjrOeFqbCP+Z2i
	 xXBJ8z7KzbV18mR79QzW6WfhWyQlZOlPKlyGZG7yxW43NUT5FNTf1HNeJhnyfSt3ms
	 prQyETbHoHb+DDKKoryWHqRA3OGTyqfuvokWwAxuAqjUnFKeDSoeltSqDux0RFR40a
	 Z6uMKy21xsVOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09BCC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 11:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171343856277.31305.9696408356903505733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e287faa53bd32915e34c82532632463756656ab1c5cb32b38f7d0573bb55fc8
Date: Thu, 18 Apr 2024 11:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713438562
