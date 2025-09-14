Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2797D1F4CBC
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757843395; cv=none; b=rIkp4L9xusLkVgImm2Qdu/Fm1CaG1yBevjpTTItDNW3vfNIEvw0WExIDEptNAuHS89PgTBhJW5Ozsa5WZjpEhBgtc4ztA0i9d9A4qPX5K0BRBDlEPUFM+Bddji0htpR9yHtZ2uYjn7xEhJrjoOb+37xW3z7wdp40VJN/7OnaOAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757843395; c=relaxed/simple;
	bh=EaoecZJXzPyZkG7xdseg6rUNh267pyOh4c/8bvaFZ1U=;
	h=To:Subject:From:Message-Id:Date; b=TUd+hg0dicqYGHMQAZAq8jBDMIWE+EFCAr23FJmu9GCK8ZIoC6Z4dm9jVUa4H1Fnrq5U0sDrH81nlHSGex/0SFLid/1XvGRNAa5HVPpgONMW/JEQ2lilL/EXPU9HPFVlISs2ReedSUdo4t5I7WoBczX+59OhkzuMC3GeLxY/8h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdjtWgR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdjtWgR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B76C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757843393;
	bh=EaoecZJXzPyZkG7xdseg6rUNh267pyOh4c/8bvaFZ1U=;
	h=To:Subject:From:Date:From;
	b=cdjtWgR6sZDENMjtMKF6LEl4xpMBpw8en7APnDGZk87rFv+LwAYThcegs6mjLjbmV
	 z0TuvehI01uWbUbgvJKkPDjENzoGuezXWfdTTsA2u7vU0X5n9nLxR2y0qSlp1ca4nM
	 cArXbaqf8t2/sAjO84vsH9jmhorJuBocqIASpOUMmuZst6di2kcA7WhkvLigRETzks
	 3Fi709RRhn2PmpGprMZkGWj8P2S+XXdVc69uxDeQFoweFubDpexjQuNTidlB7U8wiX
	 eWSJr7MsMJEz1SVNG5wWleDBKzpW8/ZFqcoadlAAYJLGcV4C6V64k8wln2jBOEPwgQ
	 10toa0AJT0kFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957CDCAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784339357.20286.4463046178402898421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2906d7ab6a85e1e6b66f513092e142cb698a4561f677feb6d5e34cd1c30d8f
Date: Sun, 14 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757843393
