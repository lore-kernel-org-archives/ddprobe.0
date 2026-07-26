Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529651A9F85
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785047434; cv=none; b=qmEwRol1P9FjwTR+Sydv+JxxnjK1ePcq2ShTpH7oF3ZJWbZ4arX5dCHe+s0HVYivVY0XRCB31dTCv/OpMSi4ikOJJeHXhSQaKMi0mfKyBekAIba3yjVnS+yo5OXwG4tnnUzJTZuQNxxOrdlHvR12W/Y7NJa/QqV2k/ivvqSCYJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785047434; c=relaxed/simple;
	bh=viUTCoqxzrftBuHjlSHQ7vbPVCd4D4qKsJUqWru/44g=;
	h=To:Subject:From:Message-Id:Date; b=fHNNosjkgQpiPdFeVqKxIJOhPbhovhAjieBuEE3hzsmo26y4+aEVwfiaavK5KPVqrfRu3ebiA1F78j4mGP1H7lk+H/LTzFsImuXRKrYuhz3nKQvMR3ISzRV/bV+aFZmhQkS05P7PW+w+b6m3UCN4/t0KjY5pVlNDvHnD4JNuGqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIlIiEBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIlIiEBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0005C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785047433;
	bh=viUTCoqxzrftBuHjlSHQ7vbPVCd4D4qKsJUqWru/44g=;
	h=To:Subject:From:Date:From;
	b=sIlIiEBQpv0lYyq0MmeD/MfJ54xq8DWMxdtlqG/8qy0TOaMAUO9M3a9KVSFzEfqj6
	 Ll/E1F6MrVZhyTs1sXtXDbMbbod9r3TkGyUt+dPGh5nd1TcyXk3vxAS9YF+UCvqpx9
	 qSKo548xdiOYxP7qZ+oks+zP5TA/XXKjF3eDdK38w/OVCRI4pwys2qscpNk0Gqfh06
	 F6/5qp6G4X/XNAm4pUgo31kmID24bWsYR/BJr+pjfW2srRu4aDURuoZVH0dYdRPy8h
	 dX9xFScXgMfDH9a6iNrfGDwfjzBekL54mx4n/B5YTv41vk46QZOEQu+PPV+zaWRNra
	 yiBluQN9Mg26w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC02C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504743368.21657.7063550750374219061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf8a20adf58e4e7dab9a88565777328bf9245dff0902e19c2415fcdb0815358
Date: Sun, 26 Jul 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785047433
