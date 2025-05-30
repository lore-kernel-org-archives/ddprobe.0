Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CAF242909
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748608794; cv=none; b=l+/31cYzgToBR23p5YiKvMUHmO1NacOvjiYrqT6DzEvI4fgMw8C8Uok0oggobOh5d1jNB2+ZaXO2zfeiZFpnuejtv821fFSuLcjVnjHTk6k0h8HL3zOKwCABRyE0MxOfcG8DQN+B1pYZ0ImE8SrZcFd3e3fAVGQWNjm6jMqNEmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748608794; c=relaxed/simple;
	bh=rYvpj5E4z6AEsbwCSm+CqHAa/kzKJHsX4dUS+ZS7ssQ=;
	h=To:Subject:From:Message-Id:Date; b=HKBaniLeomF1hiAuwDyA5CyAJ2V4cz+11C/yRMt99uYlsfXbGduc03eFs3DM0+V8c//mwgTZbYV7r8tNHQHuGf1QdshOVomN545Eihh9zOSMvKH/XLfwi6fpEd9Stpjhcm/6HU7n7wCjEvCZ7+RyrwljMNZqolXi+Adh302/7Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8pXPklb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8pXPklb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24AEC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748608793;
	bh=rYvpj5E4z6AEsbwCSm+CqHAa/kzKJHsX4dUS+ZS7ssQ=;
	h=To:Subject:From:Date:From;
	b=Z8pXPklbTYKHfcWCqr++e2Ao7b5+54BBRUEPVqe+wBXn1MhqKXWseoW3fYJdhC7vV
	 utPiuTwWY/Qoi7nxDILgFAeozuq//8VC0Ep9wYodUf+aP2kIVz5tmmxvSWtJ0ko7pk
	 QUEbiLjZoU3cxM/zXmETe6PyneJmqlp1ei6iZbjE8amgvG3IYR8ApX9XDga0kIN2AS
	 OOWifdkAtfo4VHp2Bmz7I2J7Cnnd0xpJRtgvQoI2wffube4dwVAcTOzB8zBeNSCcnf
	 UQo3upf3Z4AdOBhd4YLJAis1s4sih63oIQMRKJmz20NHFvms/lx7eHK4hI+zPHp4vj
	 J2IIrNk1kYdIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC41C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860879358.30470.2733820846176081317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64c7cbb2bf75c1ee6414c85a934728012a4d537a2701f06c7cb1870b74b3282
Date: Fri, 30 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748608793
