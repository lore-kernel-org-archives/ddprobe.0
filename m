Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AC0848E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720654643; cv=none; b=l6Ks+lpEHGLF56ND7oop8NWXbAvYozdLBjw6o2BrXIEeeOfslgOBrUDKZKACi5iLQK9CyYzITIAKjMomy6yhfN8wehcYmuU+02Mbsfd8mFqPu7S21Emw7duD6hurYCcg235LU1HrFeBYiyQLNAty6lMNx/aTWcHicRdKhSqJW6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720654643; c=relaxed/simple;
	bh=rXxOIlHo1vIfmiev+nbABhYJ8eozPXPAwMktybPou5I=;
	h=To:Subject:From:Message-Id:Date; b=c3wMt1pfQoyZA7doD9eZvu3hU4RkcZSs46Oe6xU/Pu+u12sOdavzxjtmfTgXNmHDq1jbmXb3qv1cT858+aAmlozOpd5dgE5NfaHCGGje5UjXYV7g4wdoAHKr4LrfT5EXN59ShWZLavxJ/u1iw/W0zy3oNLf4tW1w9+mWo/0VFa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FREoPy49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FREoPy49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 085F5C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720654643;
	bh=rXxOIlHo1vIfmiev+nbABhYJ8eozPXPAwMktybPou5I=;
	h=To:Subject:From:Date:From;
	b=FREoPy497BlxXdF9iCh5+QJm0rvXDY55vWd2grd3/dKci4sp3EyEMelsFO6jqVICa
	 H/9nlgddUbYeoe27eUEdnNpc6nlWWjFekx7+QbccEkIsuCRvcA8fGCtYWH/OUJvFkJ
	 kPlKSfubzRerqQj5l/6s9LRuMnZ7v73tIGFolaaQsJBQquevfZ87S6MLYIcX10z5hx
	 A226MV/SwhR/rPUbYd2nFh9Vo4q5EvdkyyCLtKyWeYY+f3mgmZJq+PuLNKI238cvtZ
	 IreEkuVWI2Is1qieCaXOHI36+EEyPa0rysR26xLIblBnrSWRVlREiutHJk0hZdRNwt
	 IhDkRj1zl9yKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF777C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065464286.11443.4554123526314289440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409fd26104d7be10a8492fabe3bfb0c8b437b48069cda73c948407bca6e74c37
Date: Wed, 10 Jul 2024 23:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720654642
