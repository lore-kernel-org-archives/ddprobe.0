Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2385F14B970
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726836954; cv=none; b=SOjuDnDj/8DxvNgqbTiWFSmp4FN87byK+w8KNldWLMgG0lYY7eOW+iPEYbOf2nxlyPbZWkXlc8ClX7tarWyN0JtTehWOUiBE4qhtCrnQZkqWZU82w1eR0A4nPvaKsH7FlwMCofNXHG0+gFTRA9kd0LdU3kl7Eds/89L0gu+1CWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726836954; c=relaxed/simple;
	bh=qa1ifjlSHJ8NR7tPNv0+660a7C17JibNjG5evpgnKCs=;
	h=To:Subject:From:Message-Id:Date; b=IqfFM9enlc/ss7qN+NSvoog4Wj9EOURjjRjD8KFiIm1Kep7CaAN27vmAzN3yOTpZOu+IcA9cp6ictBch57K1q3UQbFSAR4BEN07Ce6Q2p5Q7I6l2g8zDYxGChfW4du7WKR3CL4T4XPBUGKwl9XgsIIUCeY67+JvcJdsTHVBpr44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+LKBF0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+LKBF0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC90C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726836953;
	bh=qa1ifjlSHJ8NR7tPNv0+660a7C17JibNjG5evpgnKCs=;
	h=To:Subject:From:Date:From;
	b=s+LKBF0gnbLcdQ8Kz3xARp1g6OfgKr6B1caSItCubwXZg9P6YhszsAsive80uXx4Q
	 EB6P/3rROKI6gCZK9Z186nNHGtku/YhAmDTWyVENjgeD6UxTbyIgYJKD114ZxR2Cem
	 F4cUSuSZTR6tecxqbbhL35r23uwj5GUf9IA+e9Y6H9t9yrGo7PRx7az6Z9NKPjWI7I
	 25DPmx2iwxIv69+yqbbo2dAfvtkXNBqxr6e/oHuGEhtGqcOu60LG0himXgVf6rRi7Y
	 +87ywBffwPxgMEOGvMsBPnHjmZwVkfVcxdxvXerTdb7a7RPMpgkVsJ4sWinKvQXY3Z
	 bdZ9ELCpAWB6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94479C78838
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683695360.24663.1503503003573004049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798fac059783a6c292cec0eccf6cd9d9d4d870fb0572209f38803bd1fc58812c
Date: Fri, 20 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726836953
