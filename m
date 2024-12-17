Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289C31DF73E
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734428754; cv=none; b=Ld6SzUiEtbUJrW9Fk5KXJbA6Mf6Dy0SWLfYxuCGZra35t7136Maq7XFrvpY35BGoy0tOTPZbIPqnPwaM6AR2ZgFQUCpt7asTfuY5W6YmmtX9vYr/6P84HDIMBfqiA1tbRp5QqUOMX/sNIJu+Py3GIxjv8YWDSWiMqBuvBB9HNos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734428754; c=relaxed/simple;
	bh=vC4YCbA3zJKiomSH6OyjxDm3qOJ+flSea4keGCv/McI=;
	h=To:Subject:From:Message-Id:Date; b=bO60ZekE1KjZ4AzJ9D0d2rKFqFSwumX4wPJ7Ky3WtoirxYBex5TbhvXJZAZgGAgF+7noFOQKCcb/6FtZtjid8TcHvYeV7o0At4m8SsTTfd9rsUAVJlIqzkzrlqCdV+85vqpT5wiXV9lkoYUu9NBzxxPLSKoPyMgDaGPsHUDa5Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFA947To; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFA947To"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5713C4CED7
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734428753;
	bh=vC4YCbA3zJKiomSH6OyjxDm3qOJ+flSea4keGCv/McI=;
	h=To:Subject:From:Date:From;
	b=kFA947ToN1VX/lgKZ3WCD9Nm6Q07dDvGIZm0vVsNjovBufyH+t+N6JlEmmI/x2HVl
	 TZekazw7M94hME1wsCQUh/lgwp/3MTtgOo3oItP248EDrjRJ5QnA3spr4HNNQalBr4
	 gsSdjh+Ylx7BpZvJl1tvilSp5nUiZIttfrT8rlWKtrBlF7fUCT2lfee0gmD6x9RemE
	 4fY9CmL+7wARIurGjydS1ZcrGjGXDTVw3Vsoc8xRRWzijakGEmf6lLmWcQtqQiwwpz
	 c+TKQoBzTIssdu8b3KIaNsry1XZuK9TuqnhpB5HsJy0XIzQtn/z3Lb9EA0dqHurHfC
	 P6pS4Vs0LeL1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95999E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173442875360.9895.16836870092557573911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a208d756191f88dc8ad9a31ae9c16d6a66bb5376d56d190fc5c0c8ed6d8f421
Date: Tue, 17 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734428753
