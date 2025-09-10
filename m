Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371522C0F89
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757485794; cv=none; b=o5PoDa5vfm9uRD/fYJt4nP87+zJLCV6ENTZWI5DzJ6vpaY8Wp48g4utzf9XgixQNHTtBYmx+yy2gOETEj8FkylZxsASnYaxHG+OhgLQMbGnYHuHB9zYCWXS07o5OdHsK2jyzJmMZgR+bPKAtSSGxYRF0QQcvEmTCdlUx9Dve+MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757485794; c=relaxed/simple;
	bh=X0/JSarTsycu2xf3YYVtF2WKIAw3VklAg9SiYdkWgoQ=;
	h=To:Subject:From:Message-Id:Date; b=Oe5Pcz6U9S5UBIXbAVkM4ZZ5Bvvqrxk0jWt3KkKy2adUHvnywxFgbms1rpPj8w+thx1SilEKvyJfNczeCes2Sdiau8CUEdE26bzUWvKbanyE64v2Fax12/L9ZJzMJBG753lkcweq5y0sUhZ8DuB+MUaCwt8OTjMy3apt4CRKS5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aP4ejqIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aP4ejqIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF8AC4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757485793;
	bh=X0/JSarTsycu2xf3YYVtF2WKIAw3VklAg9SiYdkWgoQ=;
	h=To:Subject:From:Date:From;
	b=aP4ejqIP9J56KYqA7SZSDDuwvJgMUpth9BO2XpNkrZiR7lw20INAUldRRrT9+0TjY
	 v/Zk4bdAaQBEaMHzjX+wVX5lkXO2A8zWy3pdK+QynBJJYPINW+bnWLfPAuGT/dRwAP
	 cVozmbCt02pSIEoTt/h/0Y65cHNTXF0fbJ0kWgedZEU9eyl3fiSNxH4S3DcdDJ3yLY
	 Yd0gSugXB8FzqLqieoNagAGM0qStdRam3xQMABPh7j8qpIx07TgsJeKF095D89O8KZ
	 j7kwtTXRYC8opHL89jJVkoXpPfQfF6B/PPwF6GphLgiEPkX8g3r+wRqOSONmui0CUn
	 c9ocAU9iR16vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98936CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748579359.25791.318334947970323689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebb274ba36e606250023674dedfe336a7366dbcef20444a7629f652f8d9b02b
Date: Wed, 10 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757485793
