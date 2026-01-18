Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244D821323C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768712034; cv=none; b=Og9R+Eba9i6cn+wJseHIB/djlDK3vDxwyxo+kkHfO4ELEiyUdocJmyORRW04bVJLfzsajkY8rh6pA6bPtW4rFs/jmvMfqVg+saY4g48l5MzJQN58nC8tsQgOKCRToT27q8vEwjI3LF6oCOrJHnSnr9Y0UmG4rZci2a96tnbuQz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768712034; c=relaxed/simple;
	bh=G20IfWNbHOmc2DDmrJg7hYtmOk4RCmtcQgYvv9h631E=;
	h=To:Subject:From:Message-Id:Date; b=YnulDY7pyDj/vubE8s6IZ/okvn/lB4Eumn9fVjIDlCqAtkiBCr0HylLqgbrJUORaLjdXzmCTC/9BMzLfzzRNPfIUa+KLEfNBYolp8UrtaQHS+uK7LIt3Nd2vn400FuZjKInzMrmcGke6B64hBFQNdA2hFb7tPSzqT+58WO4Qesw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bkw3z5gX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bkw3z5gX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A545DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768712033;
	bh=G20IfWNbHOmc2DDmrJg7hYtmOk4RCmtcQgYvv9h631E=;
	h=To:Subject:From:Date:From;
	b=Bkw3z5gX1GgZcjU9qUhRVqYVxVmsHEX4yct/aMvjm0DsS3O2MYsUM2KkRVxLa/861
	 7Rs9AirWGjlZhDHdA2bhZ+kBLRpVYklWLXoFNn7K8cYqVx+vPj57cmYwBMeeO1QuWg
	 7aFHoUQND1IMTGqOtsqR/nNa81bfbSb3hYJyPSEcyh74pEEcos50rh9oFfWC9G51wU
	 aHgU0jC4owuELQs0KLEOsqVX5JIhiFJksx9FulSaBGFSGxFi3DjVOUcSQnM2q4AcRw
	 cl80anG/s98pBCxkanADuA+K31TJvUl5BSYiLDuRhsbmbXs155W6Hc54KM0YKkNTe8
	 x3kREbhifuhfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED7D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871203357.20215.10378993962025261197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa5bbfdae4cad4c6dcac471d221fdeedd6431c4b4098b5e5aca230589c821e5
Date: Sun, 18 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768712033
