Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D6D1EA7DF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767446634; cv=none; b=rVo1B2XFqoR2vtWrtV1rtq7ndAEgqvTaj1fMJDn+DeeUHVtKQx7HwxWMrIBuwnSqHVUOPDbDAiEhCEbH1GAenJ4LwohEEQfIHqquCMoNxT4gP6yRA0ei+NdrAQNxsOb2hwmyQ/YwNli6RRX3Fs552C3lkOiJy8zTEil+21CbOAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767446634; c=relaxed/simple;
	bh=SoG9k3A0devvUrO4Ud5CbP9skaMgdKRErsRY9xeiv08=;
	h=To:Subject:From:Message-Id:Date; b=p2MbVL8oZTmuDCXcBtVEG29tFc7g+t/f/nbOis8obDXFkYjJz9xYFeH/zVTcivD/1Ct8y4QHxBPsuXAFj15WlpG+Htqg7iVn26V8fiHE7HBM1elFj1XcWwS6jI1KiKR86/jtNZngiVnBAO3n6cKpmIrMJ8Q4wcBCy8Cud/u/BRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h28tdsyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h28tdsyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8798C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767446633;
	bh=SoG9k3A0devvUrO4Ud5CbP9skaMgdKRErsRY9xeiv08=;
	h=To:Subject:From:Date:From;
	b=h28tdsyqZUrNOzTic/Jc6HVVahhEbNAJ6Rs6RtiR6i1myfu7cNAU2m3QRw0NSQ1Oc
	 CDvj+QDkmXiTuAlobvyTXeSo0lVeH+T35KBS+6mbBHUH7RC4aMLIx6BomeIW0YvzI6
	 az7a+0vPnHVqAqDnSJu80QtG18upV88bVqVaA4PECv74kodpEYMq97e5HK2+SUv5jU
	 L7nOGO96xlv0ckC28l7Y1WwbNMEJEgT54ttXkZqr4HfYEC86/VypUvdlC1JZ6VY4aL
	 UuS8+DNQpC6+lihsiCOrAqSyQkkRd10ocZIH+9KWvVUqX1ru7rgCQmTASjYOtY+liA
	 WfUV5GCXqHB0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959DBFC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744663357.8930.2281332991810108683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff467edd4f804c8162bcc1d9429fc1da680d3567b38a1702db28cd96468034a
Date: Sat, 03 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767446633
