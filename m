Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AED83BB134
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791532234; cv=none; b=oYoee1BAmCPd8F6PaW7uJFlLwduD/lyAEOTKvC33i7flB2F2CsNVZS5SdTiOZt3ZDDMbRNQHp0Q8WhyvcaBQcIKTAxn5by9Lala9zlU9TV2AUkzAxBoBv7fw+qf/8lHjmSnCxvBNWt2cazBuKYtK0mLifWVciNS5u7hCxElWOdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791532234; c=relaxed/simple;
	bh=Fj84hljpuzJkQTdXimZzWwolPHIJ92JayfyMCYpp+zM=;
	h=To:Subject:From:Message-Id:Date; b=Ap1tQDSADUzSDxAGM1f9IDJYNaICa4PLFQiH8JbU58TO9ROAV+6Q9PhZaU3MV3Fp4Sm7LsaPpMnEFc2FXWM+xsG0jYfj0fMklfUzDwFe3+L7I6nQRFTAvyI8UD/4VfL1dAb6n1L8rFMxkffz0c9kHI0upvVuL+TeVAXWp5z08oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqkjXoNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqkjXoNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA44EC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791532233;
	bh=Fj84hljpuzJkQTdXimZzWwolPHIJ92JayfyMCYpp+zM=;
	h=To:Subject:From:Date:From;
	b=ZqkjXoNfmBI5FtNKloRUpVngjDS54gsdjztpIw8E/SVMpsaCsug7kmcW5EyIpo3l7
	 9t3blAncsjw+lDMgw+UVmXrM6X9z7Q2UcOFz2O89tV1XXbeTQeXgOX9wsFiHCgOly/
	 3PWVKCxt4pqRY3DCzy5Egx6aVezfeFnBmU40/I9HlBa+2RpyVgl0pOzdTCOlxmWCRY
	 jKkfTcgbFmMqXCjkMAF3h3Us4Q2NOdWXi6dmvc0qqP00kldJSMQdNYN+SxBtCQlB0E
	 uR1QsALshXsI5KltJxfzi76atML1mUFRGj1EkHtRmF5w809zAfiC+5rsmim8pAInpn
	 GgNp0prvhD8NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB9ACA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153223370.22485.13871004903761728605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f07f2537f7983e746af2eae5ef5a98bb9dcfca454e9b22ff08aec2533e4e218
Date: Fri, 09 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791532233
