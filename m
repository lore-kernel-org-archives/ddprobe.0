Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9E72D97AB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768560834; cv=none; b=oVEjOwlLw6yPijH6+RN2SwGuAZaJUXTMpkkhRu4wsJ8aX6XwtDiU16QIlnQb/OJYL1LT0DjjYBzGoQQlA8ODE9U/DanZrgSFPcjeG1K28ruwwx6ViXd0tDJz0XcjfucOZWc91uD31d1wDWfSJntLC21xb+oscp7aCSAcZb1Qjp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768560834; c=relaxed/simple;
	bh=f0auAW6uJYaBfyXq4zTJTz5e1HpDZdy/SKrpKEKQ3gU=;
	h=To:Subject:From:Message-Id:Date; b=mK0+Q5SKHNVo1A1DAkQfHIkUdX0OijXlbSJFshBMra8cB7bqU416D29jhvz7A1Zh2rRUyDwTc2vBZ/v/IU5ffle+cbR/sUG6OwRDu44QrmTrtsZix2bi2HvJtrnuOZvYnYfJHyV3PMN6xjBGaYq+v+gX/OLlGMGEDrf+DDxeU5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pf/+UkSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pf/+UkSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE7C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768560833;
	bh=f0auAW6uJYaBfyXq4zTJTz5e1HpDZdy/SKrpKEKQ3gU=;
	h=To:Subject:From:Date:From;
	b=pf/+UkSMAPw74AFM+dUWcxpL4lac8mi/zo+KgczJrSyH0b60rLv6fyikORjy+q/EK
	 Ad1ctcDL9B42l0AFWS0NhEC/dg4N+h5UJc6z8oPc0EKs1K+ifSvE0CNTp3+j/N3Iz5
	 lcUf0KPhzRnWxoafgmOnbAETjYwpZIEBjIlGULiiGH8SjIjFiP9mY4X4jDL13LPh7U
	 9FwelrlPc2sJvztyzxOM6lZLZceitcYFSmWOWnFTLvJGVMwDZPnHMUBqB58E3TN1n+
	 q3fxiySfjhJhA/argLZKXQQrTPzNP+ycqfz9TJsPfU+CxsDJF0h1wekK1woGNaxS+k
	 pvySh7KkxXK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941ECD47CDA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856083359.22687.18287883537056760681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fa10a54a06480420781997fe77b2b768af3682dc6bcd0fad23d2b7619670ef
Date: Fri, 16 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768560833
