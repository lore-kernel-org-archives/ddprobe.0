Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2105826F2BC
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765578774; cv=none; b=nlG2bOm/WcQZbsVARx8wvc8T/oBxFpp8Ct9lJEb9Op6m7VCM4Bexb9dyP+2PSCEUjIkRsGoO+3eBWgU441hCpv701ytaIGmhMkS1eyYa4JTyCv962XtjMREhrPDS5DuVzv1TG6pr7XoeXLjuTA99TKiDvq85BElLWHiGhCBs1SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765578774; c=relaxed/simple;
	bh=4F+lEacHty1JG5SU2fsrWpoExG2wRW+EM/hNT/AqXBQ=;
	h=To:Subject:From:Message-Id:Date; b=avJxIDgtGo2vOFvPnhGVS3yAgequtTWi3FTUClwOQTMOEZdZjMYRGqRZtmNBNtXVpX+XaKnNZyyQx0c9izx2wE5Uutf80gvhUfnPwiE7ZwfEbwHJjtvMYxSYBeOgYlEoOEK+HgyAfSiQJLYmcmzD5LwmdJa8cSiwn81+6/3cans=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMTADySA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMTADySA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3BEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765578773;
	bh=4F+lEacHty1JG5SU2fsrWpoExG2wRW+EM/hNT/AqXBQ=;
	h=To:Subject:From:Date:From;
	b=hMTADySANmnrk1FXWBjioM7OOYVUheTlxPrSqRo0P5y0/qHnu3RZrNMHI524H4M/a
	 jWZSB6C9UlsudXpq/IO3igMB0+9JOdKDxC33gxJR06UcUhVhJuoPPAWUNybEgY+Czr
	 DgoUfTL3eht9z+6IW8jKEBDsqEXiYakAFGI5ODCGc9pzhP4A6X4ikPc6nroc/qeRmT
	 4hPBl4FIPh/pCENmdAUUctnkKAjSI0GjTKl9Oa2MIbG+DzwBddq8UKCWQz6kSjELMK
	 CBc31lwqJxLJFwxWEXeM5Z1LVyX21MSKFy8WK6oPJ2eK8Csm/SudDM6zTg121S9okC
	 ozvVmNCf2rdSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C7D59F50
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557877360.12215.437932020645177861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801a294c21f1965e3c34d2ffb80ef42067a8a33fe56547a8f408fc2b7762a59d
Date: Fri, 12 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765578773
