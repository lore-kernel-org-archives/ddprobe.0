Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531FC4C99
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722032154; cv=none; b=Lxdn1qr1w6CK3+mEDsQzFWkjjjIYP0wHgXPYgaWl652Nt/VF23EVMl7DS7TSyZ0gHW3qwStsaRl19APIitmVstUXSyuoOGSlzbrSUbWQmj1YlUDijhR/G6SJlNV2ukL8qWkXsmOiibE2NXlIw049G5oricPf3vx908jU3zdioC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722032154; c=relaxed/simple;
	bh=7zbRhxolQUFOs8eY390UdxTOq0+OMB5jw76/UqOQhJ8=;
	h=To:Subject:From:Message-Id:Date; b=keJe2MyhRAel2yOrsdbAoUPKdq6Z2ksVlxBeqQQFYTdhkvpjpxd6KlCM/52LmgzBajQkoTBMQ/k5uL9IvuLeqz81bGBfeva42mEvTGHixngGlaQQC+X2A4G9t8PY8qppkoJ67tVlHLcxzpbaPJLXcd5ojS1vkkT/tF2ypQZPF3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbO47rRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbO47rRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8264C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722032153;
	bh=7zbRhxolQUFOs8eY390UdxTOq0+OMB5jw76/UqOQhJ8=;
	h=To:Subject:From:Date:From;
	b=HbO47rRPxSs4Vqhn70eV7vpSmcDh/Ers3swtwEA6PQDLDe+Yks9BonKZcF0UDfcDy
	 5d4fZUN8s3AxQsaF7C+VamaRHxFyNl9Z/VYIXAdTHXmlvxyrFD/RULF1gXNSX9XCEd
	 vlBBelwVhji4F9g6P21g5QVirRL/DCuN1v6pqVwvaH9oXtDbQw8MYP18PMUWSvRKUB
	 OUWiksqrifSWaR1UAq4BIkYgCOHtl0+4y12Ydf1i8wpdbUUyIiwVg+UCBmcKdvhFUf
	 7/jK7WTtEkmaW0v3/Cph4PhqKxMXWHvOYQndQejOBDSbx1T1uqy6BTkC5JA0G4Qw61
	 s/k2KcGGeGFxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DE5C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172203215360.24485.1668073810499143402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b727584c775367c0cd115d0b515e30069def1a9be15eef01836f7f1c816cf7
Date: Fri, 26 Jul 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722032153
