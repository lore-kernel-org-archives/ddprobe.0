Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160C22EBDF2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765320174; cv=none; b=E1a/zRcAMV2J/Aepy0sb49DSi+3kPyEUVCa56+yrw5EYMYBTPrVOQ68xKIqO8d1jbId0CLmu/ba5HnCNhwKQOVVXQ+MIkbkH2nNQh6kNVxokfUOHC8K+CbJ/fft6CmVXJQo3n2nBzavcybVEmcUphxz5edVhofTLZQCEq/kmwA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765320174; c=relaxed/simple;
	bh=C1vtVR/gHnO9XC2Tvh5gwXGNCHd837KDuaDodvOPW+o=;
	h=To:Subject:From:Message-Id:Date; b=XKhUoxjPmL7OXx2CL/tWyZ9JgYkHjLC2irxHL8ar0s4DvUjRByouA1MgYARsYXMN99ChYq+I+AQIx7MjrHgvsp++RMeIHpaE64danLe3GHPdVaokHalOTL/YKmMaPBj6ltnihvjpl9dHaqYnT/DoKXkbmp0Zzr9ho4Ol2skY7jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DT+263vr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DT+263vr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 993E3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765320173;
	bh=C1vtVR/gHnO9XC2Tvh5gwXGNCHd837KDuaDodvOPW+o=;
	h=To:Subject:From:Date:From;
	b=DT+263vrIsvETYbYaxd2tsKEsqnkhy9e398JT3hKFjwVhx3goYoBk5niEmT6QPcHH
	 JyTFA4ll9/rnWxisvDouc9btXcDeuulxbwjEYQMUkS8za8wfDWqRxM0vzrc6uCJ2yo
	 Sg3PEiIeNjJpbQnrgfgHlZvGTEHJqVJvE3snRNgoiVIQQHCiDZhrk/W2xgbHnfnXfD
	 aS9vd/cTsKwBnl5KRDQdHrYAb15ZU1YDQsZR2iAgzdtBPuZBpEBvab7hVjPteCLknu
	 KsYi3szIhIutIc2a/W7dLgEpSZzdoSt6Ej0hEcPUXrj5iEWKpv1EeGzdwl00mlV9my
	 /ZMziqNs5C+tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9099DD3B99E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532017358.15180.12757260283024490037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60670b131058f57a4879b64a9a262ad53d3c4adb98959cb600c1e16abab32331
Date: Tue, 09 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765320173
