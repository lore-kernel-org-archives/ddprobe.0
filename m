Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F43136358
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743114594; cv=none; b=g+8PXvyP/9felPdPciFSGAwTn+J4XfwLJaqXv2bG3X1qcFbIF/yUh0zaHY2+r+QZMP6kR5JVkYZo/qy+hPcXg1v7VYuZFJMsw9q46P8xd2cnu7cLwxxk5anNn3GB4C4oFQpJQofp2/UFHvOv/RAJqNHS8RDlvZO9pRtMvFw+qQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743114594; c=relaxed/simple;
	bh=xPdDSIi0hg/Yl11d0paRtyUE612g2aW4fpdcs/HXHp0=;
	h=To:Subject:From:Message-Id:Date; b=nsZW9diF3S0hRBXG4fag41y6CDhNqtS24ymi/h9jY7VzYAan2qX4ITbyDjgQgCfni6lRADX/4VERzdWjVsTjphNzJ0s4psntqGusm0W7769C7oCfHA8L6/dxkFFrseA+o8YfsB8thx7/2G4hymJxFfFaJ4/pOh0Ji7Ceus4cIzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lxn3MHuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lxn3MHuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAB5C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743114593;
	bh=xPdDSIi0hg/Yl11d0paRtyUE612g2aW4fpdcs/HXHp0=;
	h=To:Subject:From:Date:From;
	b=Lxn3MHuVmcXaoxLcK9+T9iTL86yw/44xHYaIII0rVuidHU2nJwnrmkG0iDWQCrMYO
	 8sKXbdkf/7sfNmFFcfw8ofA0DIs1UKLRgwbEBIyAOWvktlJajR/5YdQ8sOxiYrIj8P
	 kKM+gDwqP8UAumvfJBOL6+O9uLqlMJMtBleeI+I8BYAHqd1c8igVvG2EN0SzeUfCY9
	 oZX6fUo4bSHAiAuB7fn+DwYLK1wb4wq3Ze4wHCYRin2q3PUMU6bY0qsru+7fAgNHb4
	 XbG1z1ze8Wwgl12XUNNfyRkXMkMfRt5hgwyM273FYnMHxxhteWUjisVbHHjzvWmh17
	 DFkZH1FXVolwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4248C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311459362.14233.10621164964068636463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93606834ae9ab1afa39aea1d9b1161a0f60f8c9da9f3cffb52246ec84c1d530
Date: Thu, 27 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743114593
