Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350B71CC89F
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732020954; cv=none; b=qjg8bU+fAO6+Tl0uzAbj6n3O4aUugcM56+8cOWR9UCnVUPQBwCSVpk8wosktmo7fGAsb0GQMa0i8PX69rUvN0AYoFGbSagZXMldkiVD4IG+EqC1OXDCO686NslB0F3eVorYC4m/+PDRgbVOc/3rCpvpNxYEHOC58Wi6KcX2ynRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732020954; c=relaxed/simple;
	bh=ly5H88992kO3X9ts4DJXuTB5i+m3neORZDZW41fAaO8=;
	h=To:Subject:From:Message-Id:Date; b=WdzSxnEPPmICzovdE/xw48fmbZ6wa52CTnvyXVF0tKHGxZ+S1fahARjXPVWTEtDgXN2VXwo9Ts3i9yYKAMv8OGayDm3Ny/isKhJskFj443MKLM/Zfg+87EJ0CAXB+h8L9IFEzFE43xjG6hk4SQCrCpyX1ZI6I5Kwm26wx/TnAuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I28kd024; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I28kd024"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3698C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732020953;
	bh=ly5H88992kO3X9ts4DJXuTB5i+m3neORZDZW41fAaO8=;
	h=To:Subject:From:Date:From;
	b=I28kd024z/v7looly4gjr3cDKQjj2RlGfjPU7VxFad8B8Z9wKvDV9jO9qNNdE67my
	 ISV7KlG42sivj+o+aS1/Cr5IjOopeRL29kMUCawVN2nIvOg0YbZjjXu+kywS8c43lm
	 i/ToclD7V23+NsDWLySLxbknVJvgzx+qPJw7BxEs0ebREcpxBwMq9BATrRMlprmbKj
	 prdIij8WcJtA/0CmqRK4qPXJeVu5cFtSoMP1Zp9CsAf52RJkK2r2ALAWgyte9rJmYn
	 iSNbaQoqQ9GYrshOmZooKq6e1bJ/xirJvPIrtyq3yLSGjvCSKs+pIiVPBZ5rJ7EXFI
	 +DDn9v1QTqi6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F79D44155
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202095359.21709.15596294629160531698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493a77d6fc1c163418c1d2ee89d281c5864d9492cd0f0d13395c1c4ea59e0cfa
Date: Tue, 19 Nov 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732020953
