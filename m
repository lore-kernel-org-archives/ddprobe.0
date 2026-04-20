Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F3126461F
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776722854; cv=none; b=qSYtT0hPgtHTSeyq11rwuUqMedx3RIiHOREGubJihaw9Kv91qE/MV/zTfjBBxHbIpwUd19zAdb1KXSmAzPxSq0GehMXLJfqyLtRWMlZPTMIznm14iiXaS8GWreF59xQWWvQxwwoPPjMlt6BIOopVg8SSDLeuSaK8aqyjsMRjpVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776722854; c=relaxed/simple;
	bh=GGslq5HX0GFaJyZNEBRBVKnTiDPbAlekLjs7tgBUvY4=;
	h=To:Subject:From:Message-Id:Date; b=OdRFTSblmCtant2K9mCusbmNMEpiCtqwZg0oLn4z7Pc7ogwbOy1PYfzpGKdZaxIe++Xpzws2pqs+RStOl5vzcXFrrSUFt2FzCor6WAkresUW0KvTJbwQdxsN89LCr3jDlGm1tO+yaSAxwm/5WdNmD5kxtEQlRipPQi8uC+3TUKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHATcmk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHATcmk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD20C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776722853;
	bh=GGslq5HX0GFaJyZNEBRBVKnTiDPbAlekLjs7tgBUvY4=;
	h=To:Subject:From:Date:From;
	b=UHATcmk+JzrGnnlQxTGYD63/CqfwJsopqvk3ELaIvW22h29PQQQs6JEk+NoiUdHKo
	 dYyRa08JweOcYtDUTbes/1siVduhWSlO+btmstxKnwnBoWXpTaJgcVytHKJY9krXdw
	 I8081ieeZOdF/Z5u0S1dPjmrdno0vWgtqwH+Cow3U1TVSNXb9z1tG92kWoyxjzj064
	 A6wGdvPbL19QTbEPxHOa3/0E6kIo/6J+bekUE6Kzi3NH5z46MOUMP2+Y07iSxxm5/u
	 ezrZ8c7pRkw3UpweMaHTJJpkBQfuPh82QCbo532qHK8qqCYfLCDgpFd0zfscYhbuNj
	 auGDFvCEaLZbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CF6F5A8BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672285368.26826.13974505410597777305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02dda377a0b029a2da8259f37a735f9a24698ff461da099f166dc886a52875b
Date: Mon, 20 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776722853
