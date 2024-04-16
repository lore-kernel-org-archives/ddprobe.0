Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58017137929
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713295163; cv=none; b=tEl/AKq8QxP+2GVzg+7qIdQBGFZeKNvR/BBbMk/uHDs1lWMToAgqvu4AMCAeyTtJHonf9LlbycFYefr9A8nOqLDCHerYM6qV4be5ure5TiEmfYaZ4oNRUc9YHCAH/66tRwXDMIM5QpYi4dG/CZuGFY1TyGEYHm8IduUCoZUoS60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713295163; c=relaxed/simple;
	bh=Q7Ux27oELT/pa71sK7vQNroDNcDsqJNsYEK+GVd0jDg=;
	h=To:Subject:From:Message-Id:Date; b=araqgAhAQNAQPSz1oNi1cn2ruOXynyO6glfkVym32/8BEAXSz/ZAVOX3QgDjEL5hkMgful7/JHLcTc8Ay+5ESVgVTZk7G3jkWldLzGNqvBNfNHViWXSid4VGghtAFeJbSlC6S0AqjGtSlYm0ER9Qhjv93nCmlbI2zTu//+6cjJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEq1MjcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEq1MjcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6525C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713295162;
	bh=Q7Ux27oELT/pa71sK7vQNroDNcDsqJNsYEK+GVd0jDg=;
	h=To:Subject:From:Date:From;
	b=AEq1MjcN1DPWQ1N3F+6+5r66pljq2I10Jxd+j5QyNHUyleHV1ir2MeegJOIeXd/KG
	 iDExZczvK1gr5ojTtncf+p8JcJnYNy00F+RQLZtE7EQ3QdHpmZyY3zuJ1567jMHhR7
	 AM9Y5qrx+bekuiGtf0p6SxaYkOxAk3Bz2/E/n7mVoUVw7WEf6h/DwO9Uu8x4eH44vY
	 sPEaFU3wziv9wfa5gYnvK0NyxA+AE+4nPXgfWN4/CTf9JFjjltRN6GIs/QU6nZXc7b
	 K6yGsSGN0d/7+sxnsczrGMODg/cWoGZfTRcFN5KGtFewCH/rk33JzUCqup5y21OGfQ
	 VcwV9YHtSA/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF66C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171329516281.21708.2942338177602964475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393778a743332d2aeeda28cc7a59a2b7c77856d724442f1bfea86cb9362fa34c
Date: Tue, 16 Apr 2024 19:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713295162
