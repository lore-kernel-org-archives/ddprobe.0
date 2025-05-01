Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425BF1F4E59
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746112795; cv=none; b=Ke4my4suTBCjoK6YeaNhy0iCBrB0ovyXIi8xlMn89bSRUHf4xd0jHMbL9OAY3j4o/qRlxzC1oLP9xJX4GXQG+FVt1G2uV+c+Chz6nvTCC3oeC+MPS+QX6oSoGG0TT6YhzDsED5P2hMXtPOJNr3KaMNdsIIzeOhPyotqxfOXkfd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746112795; c=relaxed/simple;
	bh=zpMvRVW0QFWQhH/kH1XyOz7JA7m6v0Uk2KfjUd/o3JA=;
	h=To:Subject:From:Message-Id:Date; b=tu5oX1rYXNhz8RhtwK9INNGCptg8DAbj3kb0Ql2jNBybEdbUcSSuaTSdUGxg4wp7a3ieJWUbkVojsUdv0gLU24o0zBru0H/1xOmB43B67Rk9fTe1uFO1yyrZ7xTneTnOwj7oB1aVz24I6NINAhcPdwL1FTemqp6IqZBl9D1V9A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7H0+vw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7H0+vw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A010DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746112793;
	bh=zpMvRVW0QFWQhH/kH1XyOz7JA7m6v0Uk2KfjUd/o3JA=;
	h=To:Subject:From:Date:From;
	b=Z7H0+vw4tV2z44PmeGMgrUWndyVYg4jIjB5YgpMdPH5JvGjiMZsBIQEb2HlWUhiNo
	 SajJsijQgFSUHseFo/BJ2ngPOuOP30HmZip1cYBLbaOArRH55FgPN0slz79/zMeXA9
	 mmbufM4yMxh25ImFjj6oQYVmyxiw+oW+sPgGIzdCMEYQtM2AZnLI/Lm9qveTffJGG/
	 hgd1K+UMkwAC1ExQqauGDfu/7dwCszF4do7CWLTxAHEtISSNA+/wyhdwJISAcj4biM
	 t9tuYUgx5WhX9eCUSTJrwUsPZd8YO9hZABL0wQD64g9ESduLIXBAJLGTK+c6fDxHBU
	 7qCfolIsxA9Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91724C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611279358.10825.11628470659446865576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ecab9a1329cb998fcc6b27c65945e064033c7e27b0bb1614e79d15187c4bfb
Date: Thu, 01 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746112793
