Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F331194AD5
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739474334; cv=none; b=ATQ6j7XgpH3amY1h5UGA6ffVovTsbwvRVCFs90WttHYq0fIx8GXqrUAmQ2TlqNc/a3Py1HOtkpJ2cnhYAug/vHRQOoYHWe5evR8SdFx7E4slpopZYXpYOsFkP0LTGWbCIVgRDtbmPVrTcKczs6Sn0CHMXMccJwq3yVKD2PAxl58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739474334; c=relaxed/simple;
	bh=2AlXoUiTYFpCOcJm/X7cLtDRgik4zZxt9QGLIAddKrQ=;
	h=To:Subject:From:Message-Id:Date; b=HdSY0sqHtoDv4wyFjPMZCH2L1/5laSqd1b6TqoBaAY8+VDGqL/rzxKt7LUUYGq94bmq6TZ9tFv0AKnymS5qsGVdlLx5B24RNCREBj4AeCHoWRhvsYW9DyRe22j49FlZUZEw15mDCF52jQiinidDfugAgQDIxDKG9edIR6ROSh7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+IPDXoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+IPDXoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB19C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739474333;
	bh=2AlXoUiTYFpCOcJm/X7cLtDRgik4zZxt9QGLIAddKrQ=;
	h=To:Subject:From:Date:From;
	b=E+IPDXoKVBaM5da3hg3AgemSntgJgImHX1zpiXTrj0z9ogBlAWK5gB/pcyzOvVM3v
	 4419pLwYX0ctjlvaSBbwIgUcKkjvRuXLhIor4fYcJXKOHekDqKhUQdrGB0+iD75Axd
	 7FgjGQYWabrwcKgpJv4fOre6VtSDHAeV8HS3f+4H4OzMcRbDYudHBW1HX/fdM0qzLc
	 PJ0oKsSV1XAxIKLNgDimg6KcJTRDOlg8MdEmgg6QFVP/oM6NgP9DoZa9XCSEjOOsHJ
	 uz4FQCSeSSi+iPVDCpZpOo49/1WmuDWNYEo/FPYECDwqW5KNtEYLjZDiYNjPISXhPr
	 pJL5+9g4mVHtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9827DC021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173947433361.25823.14436327903015880057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31db2fdcb9a4351743c96b27e19275df1b3804bef1ee27cb9977a5222ffe8963
Date: Thu, 13 Feb 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739474333
