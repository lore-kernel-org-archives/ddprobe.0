Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ECE23C8AE
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785553234; cv=none; b=POpoToZ8HJsDZ13LNQ4dSQZwljQy9bx4CUi8dNXipxPKnCHI2dV8W6cA1DlwhfOj99gMZ2FSDt7lSsTzslTgsrPa1ggHJnq4JHJQbLX3M8vpTKuwJiT55zjTnShFtId1DDQi6XJ6r6J0r1HBcl6Uap+ENsKaoZWCRuw7YCQ3ME4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785553234; c=relaxed/simple;
	bh=V+Y0qIndOkdXnJPw6H6Mt61/JJC2ItVcddM7N4spqww=;
	h=To:Subject:From:Message-Id:Date; b=KWdPsmm59f/oVXq1YzIIEjX6sEhTphlPhV0ZT391b0T+tNpQrXtLfAmPbH/ADlvmDssVysvOHmKYkzzS6dciex3CcSK/UMlakr3nPHiIbevdQQOpvQOg8VJi9wIe/t/jzQjgmuTMwxRA7CeTZ+I2xoD7Uxyh156zZkee56uIS/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThJOsPGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThJOsPGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FA9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785553233;
	bh=V+Y0qIndOkdXnJPw6H6Mt61/JJC2ItVcddM7N4spqww=;
	h=To:Subject:From:Date:From;
	b=ThJOsPGf3HV/3TrvTV5k/kpGQmp8iNgTMS0G3ejM3S/GfbDfml8Z4H9CusV8L3ppH
	 yQvxESzmdSX1X4BYKzWJckHdp0OymIQiZjR5gRR9+hVzdGMwrWxDr39ORHnzKiI7r9
	 uu8T/z6J+CArdklRb2Puxgj+iajlqswe0pJVGDcZpWvkhROQPglmDRsutvk6anZXw3
	 f0FAKyoxboMQhxyfx3d65E5UFiwaR9hXYjHmVqNHFI61XHFlfbOV9rOh0lgiYDdy+S
	 wp1KH4xhJ7KBo+UtVDpwYJOhy5XtGqGRlC8S0wUcJWQLFuPsaV08PQDy6bgmAbHi2Z
	 54D+J+AUanHHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB41FC5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555323368.24131.2570436303201612011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564a7928d2b2785aed62ca1d56ac474288fa46cce6cc4b08a5350919ccb40adb
Date: Sat, 01 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785553233
