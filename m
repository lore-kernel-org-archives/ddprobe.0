Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F796127E3A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718173103; cv=none; b=uS73qsmD/CxC5zfQo1DZp4MHLGDCFNEOlbfpYPEpUpacOGKZhxXDapsN8e97MyxkGLozIhWkFVX4faBNin1jYd3v8rDBO6ecP+dyRXcblwzWJRRW78TZpHDK8I4T8eWFpQQWaVZO1wM8DNhP2aXrj2HrxoOYfzvdY4VYkURpM1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718173103; c=relaxed/simple;
	bh=gglj1BWciYmUNW88IzVdjUF3+ZyRu74fxLSSgEnRi/0=;
	h=To:Subject:From:Message-Id:Date; b=FbLwy1NX1/+C+9+z/QQgDWEnwcpLre32Ii6911pr+EC0YPUA5GqebqL8/sdsMqKyWEoY7kLdFHqqva7d7W+W3tGHHa6/2deI47lmt8q/S3ID5OLp9VgNcxzY7779lkG+SA5WiwSCesmORs3lNiMqDTBm9D2fmdbkFEo+TnFsXY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti0g2QWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti0g2QWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0C2C32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718173102;
	bh=gglj1BWciYmUNW88IzVdjUF3+ZyRu74fxLSSgEnRi/0=;
	h=To:Subject:From:Date:From;
	b=ti0g2QWrf7g7gF0VNWO99GfHqXMsyeuuQi05GTTHsBqJ84mFkWz6Z8Lml9rsczQ9q
	 GOmAjaAUDJuvmt36BwmLnlh/EdT+TK427bJA+1QV0yGVAhPz7HQ+rlN6WNVIWr0hN1
	 WcADUJAAzKRPLQ2xqJp5nK9ltun+KTMTZLG2Ne3kVXAx+KlPaqbGfmgnM2SpmCMlPx
	 ESPszKBfh7ARwcWnzOhAFVOhi0cU79pLH2hQ9sPKhNHeCdMseheqkzzcLZsbDN8pt1
	 7hRMHhG5nwfG3AUXUDOCa3FMOrcJtQZrZenvBXRmPbSfqd8lreKFL5fpOKZ82WowBf
	 xQVw18zWw4+bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C344FC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817310277.25924.5259310418078285907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590d5aee3ca1716fd59a34e8206dfb341d47a9abaad37c4bcb21eb49bd6a99de
Date: Wed, 12 Jun 2024 06:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718173102
