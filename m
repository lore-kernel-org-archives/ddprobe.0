Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C67233733
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756025394; cv=none; b=REYmueP9YpgSWsBeCZ+yCio4yUyciJa/YSRsDbSZVUkDrsFlsFuv2+WUETS+WbaAJ4ofhAlgtjp+PovnmYxnWumy2cfPRnnl+IVrMVVRf3NcWG7NjggpyqknAZFHSYMguNKaFg5l/o8bkZIQBHSrxD5H1W8WWWt6yXmx+PLhRHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756025394; c=relaxed/simple;
	bh=QGIe0LeeNUk6iOb9ZE0wTJM2g4ZPcviPjqXoc4Ja1lU=;
	h=To:Subject:From:Message-Id:Date; b=EctzLirbCOWcBnteclChVU9kj5LVCMQoHpjcYbzWWxMojcsjfmhjnM8DxklcAuHLun48gT46kjNVEN2j6qZwwEHC2feEnE71vCSGwPOE7ppGrC39/L+qWJ6JQ4g/OyY1/AHbk24T3EYA3XQGwKg7MfYSo5yOoCnEwrS73iBY5kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2g5hAzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2g5hAzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A218BC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756025393;
	bh=QGIe0LeeNUk6iOb9ZE0wTJM2g4ZPcviPjqXoc4Ja1lU=;
	h=To:Subject:From:Date:From;
	b=u2g5hAzGqBr5snuJA968K4kbiLIeYwSzFkwMqLsr+apxuze/iM99ETDCfotWBApm7
	 j914l6GcRaK5KjSCi+SviMzSlWnbkdCG9iKkMJ8BRzGCpzXwtzSD5z4tjHKZGxm94j
	 quHwR1RNt0D4dtlJiLsBKKM7pjrHN2O7js7PHSEtaLDZpJYvOwkp8bNWDusy8UOnWn
	 6bagAwnmiSXvu/RzzYRiRWX43K4lzgQt4g9ZWO0Co+nTx0PhBf1qv2gX/ITWoLyIDs
	 zq6X4zhhPv68+i3ARiTR9JmUc24piUiAsmc/IiYaOLSpYU1UNX8xwE/iTgqdgDqiaL
	 iOzdCw3/HQSmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9214BCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602539359.32322.11629724964573787564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4403b039317569c1630a372bab8ecf503b184ca92e096165f796c24244baa6a7
Date: Sun, 24 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756025393
