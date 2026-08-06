Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DD230568D
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785975035; cv=none; b=Dque2ZqZvTiTIhPuDdfmnLM+KOG/KzU8BuLVZdosRpkL+GC/4xdRT5NhImx+3O9gfuSm+U0JpVvqTtcvRTN/aMI0sjoaocszbwipjzeskfIGjBfDhASYsg//vlp3jvkXp8/c4U6KvHd+t91fN89c98z7b2MJK0lOcPs8tNdw8IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785975035; c=relaxed/simple;
	bh=t9K3FznmDkmYtsxJ/j0v95MnsJ0xFDBWXP6AAj01HNg=;
	h=To:Subject:From:Message-Id:Date; b=YNghD4MWBMffvf/xWSGObnt/O5inZyNcVt6N1fY9UFQN6E8SANw/jd7vaU2O2UF/thtFGXLj8V6pe/hDt0bWZXHUMyvEQ//5XU+oSksoE49rMlUODb9TQXajHRjZ3LLhO2QSPWqL6mwsIvQKE4ebme3HMzQ3n8oS3SYmcHbSMDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6cAGNe5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6cAGNe5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65A4C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785975033;
	bh=t9K3FznmDkmYtsxJ/j0v95MnsJ0xFDBWXP6AAj01HNg=;
	h=To:Subject:From:Date:From;
	b=c6cAGNe5ExhIqqsag3cizGPzu/vVswYU00S9kqDRSXXNl/Et1qXsKy9HgRJ62m9Mp
	 Ol8qZQSSJ/6Pux2TqWTKZfZMZo51nFBguC13YG06rjWkOqV1MwQFm3owdgh+pYeUfc
	 CKOIDjjqMNDzLMMnqd1JY6yP7TzA4VrdOa+/IJVa988Y5hunkvkUjQV9GrScGVZplF
	 Noai0M3kwJxOINraOjgUic/+iQKSniFKggREHalrkBdYXVAFhG2nmKeKwJm/dZBIPi
	 2SekQOE1dQUOeY3qeb0M+lEBifptDPBG5SD9niTn0H4r+Zs1fd+XXC7NsmcNU4i5Zx
	 SQ40EXzeUUCNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06BAC55174
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597503368.13577.6320053765954279721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0510ec57951ee6fd04e4cc3238b1c6eb7bfb9bbac3a8934c0697e11ca821b39b
Date: Thu, 06 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785975033
