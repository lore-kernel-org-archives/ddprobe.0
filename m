Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC44255F53
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753814393; cv=none; b=P+jfhHyqVSk85H0khvj5CmNOyLXGzUmOV+AkodBkX7MZKBrAm/lutwX/GbVJR/HBzMhh1JG7+yasVGPVcrAHctj/rULaX5nyC9JscfUKNBKpTkCwSEscBxybuHHWYxyIkb817JC/SLvkMEiPhlo6RJbkp8ipIbVRRN81CclrTCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753814393; c=relaxed/simple;
	bh=+RfQhrjIZjjpzkL6efpCvZqzivnVd+B7aZppwUQnuFM=;
	h=To:Subject:From:Message-Id:Date; b=E9xvZP8JzFrDK0evkCFO9nX8j6NHeDh8Jp4n8qZ3999X6bPuYW9bm+XjglBMuE3ew4oOetIXll5S+//xvyThOX/INwRi4EfE05LQNqQjZk/gO+5lGyV94Xvu9/8RZBvsFYRbatnMnu6L01ndbI+/Bfqw9PSUYJhzWQNzkgKFHH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sspR4Rrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sspR4Rrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3096C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753814393;
	bh=+RfQhrjIZjjpzkL6efpCvZqzivnVd+B7aZppwUQnuFM=;
	h=To:Subject:From:Date:From;
	b=sspR4RrwphnBNqRhkqtcWS6uUbeZLVI0i+VYVEnBmGBAKbe/GMQw7MAkZDWVWRSJu
	 sVn4eCu1ijdYtNpDQ35MV5BmupMwdd5FnN0U/RDFouGG6IcASDiipMW0VTd3e83/9z
	 mMvNitjvxUf9QklAIAnmwGvbUDbOr8clm/TGnqJbTQfgEPjDdFVTQ+tNx5rIB6Mlvq
	 RRkF5WgiNu3xHF5e7ef/schBUQqOzeljv9j1VjXS5OXdUhVBsWftyk28gpAjWnHfpf
	 Y56o83l7ASLFT4OPkSoXCEEvQssKepBKuhFNG24e1Y6lUuIloxN3YJQjCAk5Qj2cwA
	 17OsDqcjFmOqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91097C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381439358.6972.17096271745347409557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6da667727c1535cf2e118848a2470858cfe3f3e6c45ed2f3a7b996abacba5c6
Date: Tue, 29 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753814393
