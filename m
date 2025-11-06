Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C3E21ABC1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762392594; cv=none; b=Yu/tE9PJ1LNdvs5VRRfKgOKbT7NZBm4vlpPb/z3FqQ4FIfWC3j0H2kcPqKksVDj3A0HqhbYBdkERwd7sIKYLUFMY0TdQO+Z9VUjQjZgtN/WfV/qIObd/nWJqh6gAdRcxmfM+gxthQ2fmAXlSaFceKkqU1mqo/SOKvIucDQvxyhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762392594; c=relaxed/simple;
	bh=bB0/WLKxafHhFXWh45pMSekGMj0LprwJCrjEItaVkok=;
	h=To:Subject:From:Message-Id:Date; b=AzEYcej5qygk4IocpBtf1HTlY0YGokCANgXuPgZcPqgfK2GznGuX+O9AM7MkXIc7ap7xt/IrPxqSB///01SmrWyDQ/kw62Ctow0NAUMMRXgMqpCLzQRMFxpKbWkiz748Jj06qFZ3z2GdmSUgCtx3q6gOjGPIwcQWgihsjx3iokA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5lF1Unu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5lF1Unu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC0EC4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762392593;
	bh=bB0/WLKxafHhFXWh45pMSekGMj0LprwJCrjEItaVkok=;
	h=To:Subject:From:Date:From;
	b=M5lF1UnuSptdxAvHUrUsjRxHg+nbovWKw7eDyyzIQPPXBJQQo5adzAxI/a75kp/Mi
	 YyNcEzgiVuJvfAf/El7P/3Te/Gq+WRoZCvL+pt+/gHwoJzeVbRRN16TSykMr1gemAz
	 IYeLVJbaK3Adk0W2+Tz1zNI73tfhYerav2Q4O4ybvvk0zwIa3CVR4D6WeRgy8Gb1aB
	 eaBSZOITOpcmgFxqwzmf8jnqn8k/W0+NefKQjO7W/STY8ksVFNIS43dRLyp9dDY6D2
	 l6JJ4PalzXLX7kIavD+XadfnysCbjX4pqJTQmeqnuHgUxeMAr1gUuDgsjhzxAdk6yE
	 8GEJ8i8ejiRxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8AACCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239259359.1167.9202414165930742789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33545545b776d4a823a9e4be391e53e6371e5a0859742909b6917f599e119ff8
Date: Thu, 06 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762392593
