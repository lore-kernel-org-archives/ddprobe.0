Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067471EB46
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707475697; cv=none; b=OwJ3g+5zmv+FkdRJd+quKHswzJob5qzXuh5P3LCRb9acLUzFEbOHiHOufXkOTYEj3qoRwzHXItnm5sj5Y17PqkD1cves8LmVa24t3xcwqdmycCxFkKSGND1cSQb76PhaY+dMXt90SyhFQEovndiX3sGmJSroqb0TeWr8qDiaFgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707475697; c=relaxed/simple;
	bh=l/fAOfdfNvLcLxK7Yu6RCW/LPXC9qu4JU56wDcjxnOo=;
	h=To:Subject:From:Message-Id:Date; b=UN+JrWsl6QWJ6DtuQxvPYf/ASFb5dxOtqIme1hEGDR9FgavtblrnvD+ovAMbh2kFuVIHkDFm9ZykC3Drwvf48RQil1/mrE80EVxNxRuGLVIFNxMKYfDKyo0yPXIUXnQncutNESbULHWxjr/l0OP2eEqVXUX6lsOrKZT8WQ5QlJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhl9Vem8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhl9Vem8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D34C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707475696;
	bh=l/fAOfdfNvLcLxK7Yu6RCW/LPXC9qu4JU56wDcjxnOo=;
	h=To:Subject:From:Date:From;
	b=qhl9Vem8eauxK9NxwKD2QWeilf0E3mgbnwOkznY6GBGqPSWUZmv4CEf8ImAowcmZC
	 tHx4lFMmnSMLroFz9fXpWMHNdQVApZ+VsJpCQTVfK6FZlgNLztEYoAeGiI2steB1IS
	 oHVmOl6Vm3PQ/wUZJT2FbGKkCjZ00SY+v9ZpfGSJ4h7YpyuRLZyV5TcuS+VonRDfTy
	 p6kSbumH5KCnHBXRzTwTvtYiklXWBMGTbTF3ZEfXy8WdECQtH8ppR3ScU9pm+dRYQ9
	 cvmI+Tbp3l8yyPRgHrQ5kCT/91C4uZvU7SX01SIR39nhZQVfpmkQrrdeKIW5DwWA3y
	 lbf1dG1rATmHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7ACC4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170747569643.4306.2132797416504773377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa55199926253de1215f1fad9579ae457b76fd2e3a1765b02746c71813c7ec2
Date: Fri, 09 Feb 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707475696
