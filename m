Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279D81427A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785195034; cv=none; b=RUr4PvcEvS1/W8OusOwyRSxdMLeE7CzpJ3XWFIcbMuhrVFHajG2a/8F6pk4AzC2qKRAl6oSijOoFHH5KFZQcq/e+wG6OA69SBHaz66PqYsKmrbTuQr3Aufz8Et5gZmQyCHZfbag+PwxjoiJnm7cmbJE2L/7w5IgQCyANde6TDWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785195034; c=relaxed/simple;
	bh=QWg5c7CYB7VlJZs6FE9WPPk76RWuxuSWO1brtnLfng0=;
	h=To:Subject:From:Message-Id:Date; b=ZYGghvJLDlXGCbFwisi8Uz53m8AZyC6YaFVq4M7knwlUNZMSCx2DUT7k1JBi1sX1tS7cyRUBr2S5WLqaaLXJhUcCWvZyBtw6aWud8dM4RAsECMHve0ZA5NDR3ru5TToMXdO5G/XOxwceupb99vpc3DIvI4VXCXxYOis4QHRtrGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzWLDFor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzWLDFor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4BAC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785195033;
	bh=QWg5c7CYB7VlJZs6FE9WPPk76RWuxuSWO1brtnLfng0=;
	h=To:Subject:From:Date:From;
	b=PzWLDForloQcN0A8OzhszRT62BOO26XOy5oV3CRrCS1Yll7vtDxEVaFUOv8wEoHHI
	 U7gk8VZJoujQ8Qnq3tRTo8T6TQGSFyLcvec2/+eYo4/eivX3RDeHgyzvwm9w6w9EDh
	 8WJNwRWc/N5KXs+ZHuQSFllZYiHoFZJE3a4xIO/IXiqTex6cwuiLS7IH1wm4/VSzdK
	 N9/CuC8XkeVgaQdMSkeSYGF+i4mNt9Ej4NWUqzOlUfQpU+DxxMlDwO2VulXRaeUYHM
	 4BINnGQaYmXBiOzGvs8t3yETa56GAEWpYuUVzVTgNDYn2SlaSTAyDqEu5oR4CGbYCV
	 5g9HiI1rx8DMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0D2C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519503368.16986.15219928277525502959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de95974c86ad68b7353a98e33e3b3f268da577c1b2974d62ebcd0963761133b
Date: Mon, 27 Jul 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785195033
