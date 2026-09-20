Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7EB3C3F5E
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789890634; cv=none; b=mZW+TrgnvOgxlWu5QCT+yPtlRMEp03f6CwEiEybhpkCaSR783Mu8r6opRXSbknONjThFlVk5ADfkQyZXTJXrmsaNXbYDLpW1LLbSpqqqX9aR8I/9Tqo6ku5RJ8SPiteyv5EFmeL881S/m+zJn0OSRcEW9goM/PQCtB1QMJ5o2uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789890634; c=relaxed/simple;
	bh=ngoL5aw2RmZH+45c0Jqn3ra+9YTI5O2OYMfQ+ywl3xw=;
	h=To:Subject:From:Message-Id:Date; b=rEyjAuX/vICYjmmY8IH8E9KdfksXwm7HArtG21m/2wgcBnb/iKxMZQNAXtltwaePkEgWMjZticsaDNcYBc6MSMNJq5u94iauNFjpcPZ6QfGnlU/SMavbHUMIXfalx7rAllx8+7dx++jF+Fg5pqus0HkqJEWW514Erhf/7X9o7K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piBfVp2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piBfVp2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CE7C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789890633;
	bh=ngoL5aw2RmZH+45c0Jqn3ra+9YTI5O2OYMfQ+ywl3xw=;
	h=To:Subject:From:Date:From;
	b=piBfVp2LRoIKHZJ+eumqbs1BkD4xEyMEr+DRYSW7i4J84xBUVwl+oMbBshUXCLO4t
	 i5YFkwfA6xLutGtdhXmFszmteF07kkhIySlr+jTnnr7IieMYa/pJZD8Ipp+qR7PgUI
	 yQ/gqsPeCr0Bsms7k34JvkvPXf6Vh/cGOUYJH2V/OpQp5lQbjJt35SmKqds/ahOKXS
	 pdq65FRFvRLCLXbbSxBH3suy/bBr2ZfpiazVJhhbFD+mp72RgT9m52EIeKMvM1iWdl
	 21TavXwCcb6B2nBGYtWTOjlx4EpjS7XdodPsU3MsIaPHBRbzZNe0CeZ4viEMtR+IHQ
	 wAGafHoP+muXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09D7C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989063368.32292.13037907925869639857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9badc53f0c91ad0d7f3f458b7c07fb69d7f4cbc5c30bfecc2c9a40320fc484e
Date: Sun, 20 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789890633
