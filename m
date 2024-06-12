Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC605674B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718171903; cv=none; b=K2drUlV3FrQYPdMmswyC7mEPcyrdBTFgZweJO7TfPeYfo5fQ+FbxEVITjtP2oPvhb9TprxZQds5gnbkFZ879gFfwZTGIQUzBmE1TpBrbHFvOy3SFpxfVi8FQPfUH2qpHBAuviREBpVv91iOqwfjcjcxvPFLw7c7HGY0UliWkmRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718171903; c=relaxed/simple;
	bh=AiDpDxZa3suz3cGdB8zzgjScWA8G7qTMhWillj77IuE=;
	h=To:Subject:From:Message-Id:Date; b=Ww2GnE5rX9n8xe0hLEP+KNz2WCzx1D6BHxbbDq0CSdun+q1lIAu0s2mepSQ7fPx3Sb86Zww2OkC4D5fZ8/UkNPnlyEBmKgmlsGQ4co9D6RnfUpDJBf0S2bKRPYPFvVL95wfy+sSe7eJ1xP1uJOulw9Wmbm6XD3ws4a80LcQkCYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkcHcrq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkcHcrq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12D2C32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718171902;
	bh=AiDpDxZa3suz3cGdB8zzgjScWA8G7qTMhWillj77IuE=;
	h=To:Subject:From:Date:From;
	b=MkcHcrq76jQwn8AtcdO8vAl2bDVfrSUbwK7ms2jxKR03BeQKDRaeKOVmrHa0dVaJr
	 MjGKdBSOJq9Hu9m++CBgZpuI8GwPRBUEyATmbgHDnO66f1bCngCFOiWNBTgBdYrs39
	 fr/hT+XW9WpuCZClQ6UhJNM8bf7tbsxmp9Z+Il9hy8x5r9QzvkSWQmx7u04uJM7FNa
	 GqjnMk2duS3K0yMD5QOSVYAxKw7RmzzP4pDemsmrJD2H8X4vbNyJKmyWOe+t+OozQf
	 bxrjvrRdIYrDHwzpsAeHdDhhWYAI6HMPDtrgT793XxAUPS/z8Lw9YgVt0zHwQvaIrz
	 I4GElTTp5ZTzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87FCC27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817190280.20658.2075253104429347856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b17c713a8f4a016394c445d33e743e7b576b4fd77bcc53ede0b069e2c7a3cd0
Date: Wed, 12 Jun 2024 05:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718171902
