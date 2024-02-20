Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074AE5A4CB
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708414097; cv=none; b=QYz2chhj9nlB54y8jPXWfhzPk+pS5xFFbYwW5JvqogeE5AV4VjTXBrsdjAPm00G5Qe+c1U3NKNMsStpci4mSOMi7jW5Ynsl90CaTYG05cQYvMhlk66PQX6DPigEHQvmSlIvXssF3wd5lAMKJfas3OJheRW8/GzSTDI++AR+APbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708414097; c=relaxed/simple;
	bh=Bb2RFb7pg85EPe619QPX9VasXcRr5oi98i9vKNNdGvY=;
	h=To:Subject:From:Message-Id:Date; b=Vt/K+EBbKfKmFIEMceDZFR5rp819C6OsSOKGgsA2erkrONzolkikM2HREcnD7mwNytY12IBFmPJmQwV4EXadCjREBR11oWRLgEdLJeS+2PYPrNi22XKGHFKPwm15MBxtf3DDas1tM7cX6Nu2rWwC89KTdKHgrj7qu6ZX6hfaoik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cA5+kLqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cA5+kLqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80618C433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708414096;
	bh=Bb2RFb7pg85EPe619QPX9VasXcRr5oi98i9vKNNdGvY=;
	h=To:Subject:From:Date:From;
	b=cA5+kLqb8kUiGQZjPc7xidIubzRWHv2o6qNsuG3c4hIRB05d5Z2xi2xi4SfVCHfFg
	 /+elN7ayWFWlXJQN1gqWhatt7ghJdN9AnMVWomdKPqARUoQHE7gFWMIZ0AV/3cP9Q+
	 8yL4+OuL8/a6y9MYpKqQL7W3oi9rpyynNLGAtbnL5d1mTY0muG8yHz0E5pIsH97YaN
	 djCGD6kJ5MasKOyXqQBFeR5q3WG1Atsk6ja8RixfiLbAtinZqdjkmfbHobxn+gVNNx
	 9xcs3oCg693RWO6bOBo+zg8gdhgTJ9MgKjJYfaA8UGAojD/CvfoceGFNuqBghSOCD2
	 Pm3z7fk86EB/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A7FC48BC4
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170841409637.32293.4871247863344491775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7d4a24cdd412d6a609f95870838f451e714c211f6fd474eabf17a4630995d1
Date: Tue, 20 Feb 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708414096
