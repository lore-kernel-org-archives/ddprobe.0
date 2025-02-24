Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD471DD0E7
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740432534; cv=none; b=p8glZbJgtOBTeydtUgPcFdyDCfhOTPL/r685VBAwpqZD8XQ1fgDWv1buhO7u3WBxifXy1z6yUqD5lOtX6Ufr0pghoD00mDAUkXH2BeCifqicl1rmo7dxbRk7WoOeslSado5KCNfvo8ekDliqMbjFIFIKK7gcpNMG2PmjpLFNlqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740432534; c=relaxed/simple;
	bh=JZUg9qVXVIOo3DKADvEUlGQIcf7ao2cEveSFxTdUABo=;
	h=To:Subject:From:Message-Id:Date; b=Rzk/UXqGDRZ3G3bsa+5YP2jvzFt/ssUXiRxYjBuVKlEJllJwFuznXgwjWMz07/uMSo2kBSICOBznb3WVsuxwBo/rVlZzMn8HJrOUVenET9xeDGtzb3u2mf2wjjjNYXHjNGdTmq/Z51ezmPRL98vwNpI0+uaSUgvzD/eSkyhKg58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDiYZ52/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDiYZ52/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1596C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740432533;
	bh=JZUg9qVXVIOo3DKADvEUlGQIcf7ao2cEveSFxTdUABo=;
	h=To:Subject:From:Date:From;
	b=GDiYZ52/qWf9/OPF5rJc7nkhhTNC39N+ZBuz3M+2vs2UK73L8kuPAbRhBlmE3A5no
	 kxbiMh+auLegwP/SMozdGhpjBivvJ9ldXT7roe1j7YmCgvMf+ItwJ+BBjytdKk8GUw
	 m8+qBlRSsilMnxS/GDjaxtoJHefOhzDj3tXfyvnCqVax09w8eJVf4ZkP7N4seVfV3D
	 gQkc3gPhhQ4FMS5DtC7eMNZW5U1KcX4XxkHKzLPqnUrujmMpt9R8uV+W/E2XBiIQzK
	 Bv+1VEZpj9pwynqgMN6Ne4o0hPebp5sAviFCJc06A/+gH453h2AoMmTwlOFyGLCkXU
	 N/fn+S3Zkuvpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAB6C021A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174043253370.30564.3126807150759017433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb801535d4e0053eac62bde8290914e45c71246cbd668b885ab464e63486c3c8
Date: Mon, 24 Feb 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740432533
