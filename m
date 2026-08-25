Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367C922D785
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787637034; cv=none; b=DuiWjMMfIJ8bJNjdmIzl5ENY1T/CtIB7K9itjRsFLSfMzr3/yjdf2qXyBytE4XKs9Zx87zd+41StVOw7j0s6lZJ7QlMohdiAomAKkFeT5962WPqLnDeuVNG/0BJgdk8Vr9pHyINjQFfu2w0xwvFmKZqTDXTtFyUDZAtRX0uxw0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787637034; c=relaxed/simple;
	bh=5ba6sCm9IWlCTMgJQ9dBdtsoVTwXxxvV3xsUuoqS3gw=;
	h=To:Subject:From:Message-Id:Date; b=QZq5gNQmG8hwT43kUk7rQA/9itG2qT5nqJSjUTZ8y3KrF2DO9UfgrVnCLfdfXbZoh6+ScItv+so1AHpdZk3mBKs60nmb7KA+yaYXZQ7uGfoxdSQQdfkKORV8WOsDIyUX7Gn5HEU8pw/NhDiL8wdOtE1i59gpeWXvQFOvHkXfwJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQsFk4gU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQsFk4gU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79B3C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787637033;
	bh=5ba6sCm9IWlCTMgJQ9dBdtsoVTwXxxvV3xsUuoqS3gw=;
	h=To:Subject:From:Date:From;
	b=IQsFk4gU/5PyBANQarags8ob+9SdAyM05Bh19WfywNJPnBLpI5PkEUfb8VcRegfgU
	 QI0dHFqy++ccPl8839zpMYQg92tJXmZejm6WPCt7y0tXbtU/wdeisEsSwxaxtdGtZm
	 Ko/Aql6OXOGMvvTGfFQbYzIkBx1jTZ7NJCciGfXIb+cADaczKWTXfa8JHM/EDWOHmg
	 530iiwNms1jGDVPiE2hdv1/Zk2ljDUMhQGVoQjqKD2jddKc7UEWPf3xzOh2B8kedv6
	 3T8EFauoSUNduFps0I0FRMfxc+CzvYTJ/OEW9HQGLjhTwW3GI4n57aMa27GaTEm/SO
	 9KrKop7uAnI4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3817C5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763703372.22918.12173460918944866907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf5ebe75808be696fef51b9e22ed42d2cfa880047183c59aed43bb711e97152
Date: Tue, 25 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787637033
