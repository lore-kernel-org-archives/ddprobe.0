Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509A8493631
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787376034; cv=none; b=kxKLusQULSapYDwrGDo/dwstcyrHga3xdfpMRw7qPRiw54EE6W/3JFq6/azsMWeV3euINPIrnnji5kcglzwEE0F4xZySjxX75Rd19rhGTdbTmybR4lHlwnVzDcWEJcCfgy5FrCjw81RBwsAM9bgR2B+/lG/RYe4kY/nakAIHk9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787376034; c=relaxed/simple;
	bh=YQJHcAEyt/OHK6tXVD9/6xvk6+CJIHVCwVyW3uNf3/0=;
	h=To:Subject:From:Message-Id:Date; b=eirWWlyXLuaxUHiXsB3CSfcOuUM7tQdqGKwDzOe72Zq2ACohTzkGUAdKOvPhiufcgxVKO6aOeU8JzU3Gl1eF7e+2xjzohnewUHEg7EA/fzMydsOU+Iwqb7UtYXu3kYLbWQWuxEKPDhg3BkxnrC8c4izwL3h2oWQXpMGOU6CJ6vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpKmigU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpKmigU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7D2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787376033;
	bh=YQJHcAEyt/OHK6tXVD9/6xvk6+CJIHVCwVyW3uNf3/0=;
	h=To:Subject:From:Date:From;
	b=WpKmigU6R9xs5EW8mTTzzAzfG2+KTe4tIxghcd6KUEflJldvp/uYVNuo5g/Qfi6Oy
	 I5WQwa6TVQ06t5U0d2P7syvVrcPMLaDocx9BNRxwNQY9MGN/oCDtq+JUpzCgX89Z2Y
	 zvIfes4WbUWoHCoPhGcWLeX5K0Wxdso/uQbsGiLynjlsVh5+MYxK7SDAI8BJw1GY2E
	 JsRWfcOzE/sovhAlmjJGIQgqIfd4ikh38Frz6znRMWrnnm7VESowA1i7wS8Uk7JRtu
	 X0+spZR1EKHcd9oD5oWOG4b3PbSxT/ygTNMLEUpfajPGSfeG6E0zsj+T4zjaCHdOOm
	 YxwUI2ha3LjzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CF1C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737603369.24032.7065204201989870466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202bca59c7ae02a5258b958c3f08b7daf4d130ed76b2057d7c4822f129665a55
Date: Sat, 22 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787376033
