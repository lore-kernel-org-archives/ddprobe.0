Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1563C1F40
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779831754; cv=none; b=n+Nj+ODO0a9lIuh0Y8ZVvYOIFIxEqADxrLNTl9K4CUw0vUKdj4sxA/9pNqRE+RhVZrjvTCud64PKUsexrAZPYG7QfAW5o6YxtPfhEbBRLsWVJzsRDNaKzWsOvnts3JGw+tOYU2f1W9llX5S1Iac6SnKIB3Y2qaP7INHwinDgMpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779831754; c=relaxed/simple;
	bh=4xf1UK9OmGOoVIRr5bXhbvTjxJhWDTU8fU220NTiSCw=;
	h=To:Subject:From:Message-Id:Date; b=lOn+IBsximIiZRT9faYHfwvLGQsXEaT9RIWnNe+7WmJYSnomWzZmyCCHVqkcwQIhUBmEHPuvy1Fdb/ygwjcEulOEIs7SgTzF1NR1BnXZmGSMSzU0O+Jh9HR262X6BXiJktyZAoLfBUIytqk99CoPaljo7eONUf9ws4RRH9dobs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCfDnXxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCfDnXxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAED2C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779831753;
	bh=4xf1UK9OmGOoVIRr5bXhbvTjxJhWDTU8fU220NTiSCw=;
	h=To:Subject:From:Date:From;
	b=FCfDnXxWnX6IIHDbClZtNcDVlLQOyLyjSlOWpzRMNxsiWd9EuwfKbYeRt+5yFdrlv
	 xPjFkgMEZ6ETvcNPTSVXNOvPVlVgjvw6UU1jwyM5z6qbT4ZcU/QVwcyfEkE+1N8asH
	 YtpewsIAnBfbUoj9eJkw2+ScQtm9YxftwWaUZFGWCRTec6R9Gc2r14rSMzAA3utz8M
	 QIkGNng/xA4FMsFNyIgSZmNTxoXHONIddOmOm+Ers/X2vUnSktXqo97DZWrxVl+sNc
	 QngeSoujc8e4ozVwjCKEZuUJh75NqMSjJb4jO1c5WfRQaJoInD7vTWsi3jcm8lxt1d
	 WTrHt0le9gs5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA369CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983175368.30633.11892559798547787515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1feff2d6b5dd685c4753dda75be6e17d3e70a618185667fca71f20a837b413
Date: Tue, 26 May 2026 21:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779831753
