Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EADF946C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773732294; cv=none; b=reiEsYks7IiTTMg/YBz9B9xlDYkC3mcxPcy6wjFJHb1sHaVZzz/qCxvit6VyDYbHnec22qq7zm3qY+M+t1nuKErzzpXhK3KJ0+JQzNYvNpnXZYF8JSK97J6/OPEKejvccaIBW/NcXxJnYmyIxMSBAOehfKWvjDUomHrh1O6pXxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773732294; c=relaxed/simple;
	bh=MYZgxj4KKuiGfYeZisi6QLP58xts1rkIRXCaAStz6E4=;
	h=To:Subject:From:Message-Id:Date; b=GiIajcbAlF8wadTgR5/nbLF8ZZ9o7AS2sRGjMCVOtGZ/6akRDLSxO3sifUy5XUOwhDKnpzBm9MnUNcYkTsTnLJ301o2i8qXICPhn4rZMXv5jTyl09dPPxs0rsJuwSkXy4196vtQAE2df2vVfr+JIIfs/DiBj30k/VekBcchgXpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCqoWukU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCqoWukU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B74C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773732293;
	bh=MYZgxj4KKuiGfYeZisi6QLP58xts1rkIRXCaAStz6E4=;
	h=To:Subject:From:Date:From;
	b=iCqoWukUY/E471+aRMZE+L2R6fxPrcZvtNb8FpLDt4G+TAF0FR8LHnrOk6JHourOE
	 e60qE6xZtFIBcwYVljKlIQ6mbz078pkyW42yyhLyhsIJ7cJUQTMkAbP8QDecdNsVv0
	 5PswikZzaBzo+jDbgRisDLF+qomHrIHV0GcGU/Z2wYKnIcPpdKZAr0r/saHDRLQjGr
	 oLUnK31pg0uPgik1kdQKG1UIDx33gvEBUPwDedqGKPoZIKmUv91sXPzGej0LYuhswI
	 lKS3kre4evyqn2zO39gh0Rstx8jzWed8wra/JEf7hQbDEzpg8rydZJ+uRqg8Wl5f1+
	 49Ig+bkiNdYjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF7EF33809
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373229357.518.1712077857561394231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b467160eb9879ae41e56ccdf2fc56111f07a0d29107164b28bf4b270db329a
Date: Tue, 17 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773732293
