Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEF12FB626
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756983596; cv=none; b=I74IXl80wdhnEJNZbw4xSTAzkaUR6Kn9yQdYEmgKCudM12dnOmYhgx6xfEwasrdIqC0fryWZoX9mZn6Th+PTLL+suNydtAIBWJCbdlJnW2cBH+jscL1wIAkU6MVztWw4tnwYV4IM7evz7BlmB3yog8Ox37fjEknEwitWW2SNtpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756983596; c=relaxed/simple;
	bh=tw1xSem/c1S0BeuYQIHVJSY6pRso2zbhhK+1y+qFMBI=;
	h=To:Subject:From:Message-Id:Date; b=Ov2JhLxSl8rFk0m1lE55CwU3feelatROwOdSQQIW8QEbMa7Io+wbto2GN/jeDR21lH+a6mRoUkCQKUkM1mbyeNkfDnII/unVcLncsgX9bdigdghPsiDpK6dtIVFufkyM0QjhRzL8bbLfJumtSkafQN4ts5N4iSgc3JlFlioBMQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYahfK7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYahfK7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756983593;
	bh=tw1xSem/c1S0BeuYQIHVJSY6pRso2zbhhK+1y+qFMBI=;
	h=To:Subject:From:Date:From;
	b=ZYahfK7LOJoMqHBPkklU4xzjJ2XjNTJHX09+GtFXf5C3ynQMqNCGXvu8ECFNJiwCl
	 x1fc2k9YnZo9OOmSEXtTHzphxnS75xgsForqQPHafFdCaiK7auE0We+L8HHeyW0rsL
	 DJ2CZ7Agw5nw/gMm4mmBTosFG4nYVTMDp3e3YEvAIb4ry5asjpoSVgHOyD2w6fZb5w
	 x/snBTtns3FaktHEE467LFQjJxKZ6RUzxxU7QjKohoyYvLYzHFWwzcspR1KnHZIABD
	 vJWKWSBZ0eBqGQIrgU7yCcvAXj0YwUKdoza+fPPjI9qtPSs41gmJqfKljHda8Jl0SC
	 7SIPLqoFHkYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004ACA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698359358.31023.355970951836470526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25dfe00cb33d715d12045105de234fb3216c722df5e5355bdc5325265c353c87
Date: Thu, 04 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756983593
