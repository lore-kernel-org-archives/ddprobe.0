Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1AF3A2549
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773841494; cv=none; b=k1BydvR4lK7sUvtJDTLuAiRYtLT/Iy2ej3/yFZ5ksEYq7V5vufqH3TgYPP8SNA30ft/nG23fdbabCv0O8RtgTJtD6PPTWrsgNXBpIM1NnV6DeB1qZWsyY4iQWuU+PmOxn0Sd66iz9C8K56JgGSKlpNerJuZmXuhSlULJYuzx04c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773841494; c=relaxed/simple;
	bh=im9un5OUgeJq/2VQeXZKheF+hlLvCEhLOIKiWGUQ3jc=;
	h=To:Subject:From:Message-Id:Date; b=N4LE2vtRxQR7FIjnyR6+L4WOMf/uIjhnD+CpJovYudW8SXn5DZuI130IbJPDpG1/1zAL0P9b3hTKix56V69MX6D/UwEQ/voaeDz8gCV9RLsiyDXVNhalwydiaJ4wjLNfBFacuqEu7XokVSoVO6vGr8h0X1ZJ38ZMx07AjceXVRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDut/6i2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDut/6i2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01D3C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773841493;
	bh=im9un5OUgeJq/2VQeXZKheF+hlLvCEhLOIKiWGUQ3jc=;
	h=To:Subject:From:Date:From;
	b=VDut/6i2D73ACkZMNVfLEyHOfwlNIxFMwqPbdtCkQTJ8V6jJQ3Nqe2KnvxHOhfROq
	 IcdrCdxnLCi0Z0V6Dt+3K/DfQc1p2YpzePY7hLx6W40AqOpa6w2sYc5ULjtMdzNwQE
	 R6HyajpZXgt31VFFEtnbFWm9MMLpKl8QGb/slmHaonKv011KoFdfISBdWWhRUHseJr
	 AjF6FrU/YGd6+e9J6y8+YVVeUkTZ152HzZI5wMqas6pPZRpt6NkWNXaMPnImceLDux
	 NiDFGSUuk2Q6aWeh0ovybvWx7zhC1UCKiyLLA5M/gnXvS7SidFZRiVeM043M1y48l9
	 HIbmb7GW6aXzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5D103E179
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384149358.25670.9485500283535647480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3ad621fd83ae0183cbe64ba1ef71924fd5558ed3f01af97853602b0ee390da
Date: Wed, 18 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773841493
