Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5053EA66
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779518554; cv=none; b=THlZzvqF8bdVeSRV5ielgQOqWSoFREKUbWK+ROye6TqXrbREt1p0qnQOyjubhpi9cHv9hglwAOVjS4NdhD4+n5tsyYcscrKZZXx3nRvHB3v0n2Y/izPrMJoIW7gkbpaUizg/I5ymyB+dQX9SRvg9TCitmVSrefT8Bop5/PMsJdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779518554; c=relaxed/simple;
	bh=ZoJeum2/h5EJ+4kApREPEjxrYSzWwGbA/6OLgrbTAZI=;
	h=To:Subject:From:Message-Id:Date; b=ddIfkyVvq6M5oyA8z9bETRkyAScPp5oR611uN+vp0GzHcznAgknOlZAAY36KgcO91f9DaX2/IS6kgCdivZ9GvQb/Qp0MXg2OqYMicD2jDHFeaG87sjY5nR/O1T3Vvf0DuplMO773GjFbcilfpCZ90uyl8Nrjrt7nlz/+r4ypoeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxSmurPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxSmurPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D944EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779518553;
	bh=ZoJeum2/h5EJ+4kApREPEjxrYSzWwGbA/6OLgrbTAZI=;
	h=To:Subject:From:Date:From;
	b=FxSmurPXyO9wth0XqJgQe48MnxIRVtfTuXJoDDXNb1Sqa26M800wLIowtlslyUdek
	 tTVSzZKTlicjalEYYo+tRf4FjM1NkhpdZYKUGGq4SXEJcPepkYE8A3TD/Qt1IGG6IU
	 uea15nLU0X26SCsPmdNuGEY06TTItixs81RlXE0zUE8uaYL9TQ1ZjDn+F3c93Pyy25
	 bdRhVSAzKGEcI9p0UsXmTNxXYILR7i5lLHoRJfWKfU+Bh6na0dsTF1WqWlTZfcxU+i
	 drFUzhHFEVWNNrzjdZnkqxkBLmXIQlknmeLUJNObr7CrAbUeJZy6yPoEZ2DF4booM0
	 nZge2AeNqJf3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40A2CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951855371.24420.5455041790182888299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95537c8648bac326311fe17a4ea7d2d0aac724aa12618d1d9a144151232a7957
Date: Sat, 23 May 2026 06:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779518553
