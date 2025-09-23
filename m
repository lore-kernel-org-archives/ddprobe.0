Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394E02741DF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758595194; cv=none; b=m0ekFU7O9tQYBVv6ykeXXdYNkexROyxp+1LJ/8HRjTLBUooWhgKPY1g9OB0a4hE+uwpAtCeosfU87DB5VCDX5RniXaMyGffTNCfRsHaXwLnGctOu/mWq54yntf42e4We2bT9pB6sUeuVvpxhgNw2FAOwpeXdfFK3r6wJ5pplcOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758595194; c=relaxed/simple;
	bh=kyF7vh7MRmy2/QZqJfbzchQx0RTiDUW0fI0Ot23Qkjk=;
	h=To:Subject:From:Message-Id:Date; b=VhYqDhhtzoI9Zbuo2BNuiL6BSEzoalVu+2k4uRUxb8Td0Mv27/95+f+g+W5NysLIQch7F7qJ1qa/tQdbHhwrdJdOg7JA+Zu8rnIxzQqMcBdAO82T/1oOOtFMmpjDd0Y+RxC7byTnYDxLoLp7jcG6O62E/SULikCbGl8+qL2rVlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdoUjgLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdoUjgLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D5FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758595193;
	bh=kyF7vh7MRmy2/QZqJfbzchQx0RTiDUW0fI0Ot23Qkjk=;
	h=To:Subject:From:Date:From;
	b=JdoUjgLIRfRXJ6Ir47UOrdYjFFOp6/q86jTnya97LrcJ6a4bypgfrY8AcBUoFbJ00
	 WinX8nM8Z3RJld1hQu7LxGsxh0TFc0PSn0ZDoUYs+6abHwnbN9dxvU0elcSUiCgpwG
	 IwnNIz4EJ6kNzAPptJ85M4urjFDjA8/hHyGZMrefpiqVhFtNavaF0/bVf3y1JuGE//
	 1v425A6zF5eui2VRnrE7dNGsy6JPAJcPy3jjd9NNTGitiZm+2cRNG3uU2Sre061hh/
	 cg0o2xzcyQAjoNmKy34wHA3m00gle/3uRxjy5EOsOAa7+9+bx9JOQaSYufPc6gylnd
	 BREjXOzxjsezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975FFCAC5AA
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859519358.25949.14431474457178305483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ba7a06731edfb822a5baadebf0c1fb377910cedf58754da687c69357b049f2
Date: Tue, 23 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758595193
