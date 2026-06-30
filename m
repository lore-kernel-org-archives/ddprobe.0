Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66378335BA
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782788914; cv=none; b=bibDKVqmiy2MLvNw4SQjgvcb4BucLijF87U5x97iG6Fiz9yMbaW9TYVEXWa6T50awdP6sTdyrsJLJD6FcQqr3HQcweI5K/53jcg46Budu5IqdETYXbNUrrwArJTLvg3Fn4iYYRXcMVpIt2Gn24XQOlme80hMsiWP5DqQiAabUSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782788914; c=relaxed/simple;
	bh=4d0HLIULz4jDQj11roSKZcjyRCL7CfDsyAaJOrohAP8=;
	h=To:Subject:From:Message-Id:Date; b=RHGA8FMNzDQmi5wa6imamOVYJrZhOl0jzdshkgKDS5KMFggS1eDXEVOD4PjS1PNlTHIPLWnTprAan57m5syTio1mDNHBBumhISJkq1NiagrploRwovG54PqoK2UVrMKj+KPuP1GU4TTtOlycr4Kbs6udKgPFeHzSELJbUkm4D4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBm3y20H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBm3y20H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3062C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782788913;
	bh=4d0HLIULz4jDQj11roSKZcjyRCL7CfDsyAaJOrohAP8=;
	h=To:Subject:From:Date:From;
	b=bBm3y20HkQFOD9nKLwpic2bo9iWx9hz5OZQD63i4SXS/4ZndAEMVRnNoQibRO+NHX
	 B4WJ8i0zDmUlWQMQb+odRMrvrfiBsuUltQlAxGIDwjHHksPC+OtaRKDUvOTAXdBjsg
	 8na4GJBR9swbvZPkjQa8QFy8O5VW797yxo0DYjA18Nz1iZwrNyLXrHqqPp0401EaNu
	 YVpuQS2pQMXIOHROfsy1MrW6OLibo+18PggXoHTcerrFB1pR53jYr5EILtQm9r8YSO
	 Mr8gjUbr+ue70wYFhfwP+iZhfV1+6TeJHZ0D3+uiJhl9VrJ7Ux0y7rRTaHOOcFj/XG
	 5zvfLH/e0GnrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD41FC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278891368.26555.13265226402915188707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d6fc28d1013caac696f6e9f67d89501fc24875435c0956d25b1d5b4d38399a
Date: Tue, 30 Jun 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782788913
