Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF151FBC8C
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761360594; cv=none; b=sHxA40ztzdYNbn4kWSHN+Ar2cPOe3eWwVMixmVRsDEqXceTI82+EzuzbDnHnJuPHXX9B+vkuiHbglDftlgW9xDHGSkAag0qX93ikblgUtVSjc7/21B/aUC2Zc1GG5FsKwcZ2BBCQVyINVQ+KAuGgkFT67JGBO5U8obgxMfhjwmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761360594; c=relaxed/simple;
	bh=9sqCXHNmuWFNmR52Nkq5JeWhyPGnAlfKlMoqTQ8dOVc=;
	h=To:Subject:From:Message-Id:Date; b=rdtJuX9x5CFveQ7s8+3LLv+Wk1JHg/xPpFy99U9FUzh56x4q/C9mQuOwTRYvlBdHG1xH/6Rs8o9+gB/AIdvPtZxZtQ54GcUtQCzZ6CFi8X/uxxJQzAVBaW8gcasUNUikY0wuQe0bmOwd4qRJDL1H97WhoK48++CtYc09o0XtuIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCgzh0bS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCgzh0bS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33D6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761360593;
	bh=9sqCXHNmuWFNmR52Nkq5JeWhyPGnAlfKlMoqTQ8dOVc=;
	h=To:Subject:From:Date:From;
	b=sCgzh0bSrAg1UIe7V5YrUgnp4eGvgoiFXGpJ6jrJY7N2iOQ50rsccINu98o4XseSX
	 /AOtd0BBbgGWr25tx7mtbpZoajB4u60g3YDCMsM3PNKmU9vfPCKiSG+E9eeDCUeWZB
	 8V8oS298KO21RdSMIHa9bmtFATVfXqFsJ5/e4lccRSj22izkS5Wdc+EHowkELQ/6RA
	 1RElXVrUugT0F1A75vDnZLrU+jUHKe+YEuENEl9agWn+AXohitI2p4mqO+hgOyqsEu
	 V7hv7JcV2QuLxayKo2WtoyKE9vycC1zFdIMW9BTKlJW+Prkcn6P7EZ4eHlC9tJxYU7
	 6diUCnYGi0p2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23DCCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136059357.31993.4893415676045281081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4ddcef4522397c8e312aaaaf2487915ce4f16b21597621b71421e06f0eff39
Date: Sat, 25 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761360593
