Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E0C1BF54
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 03:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714618943; cv=none; b=Q2/KFri/himv/7Q9DLfzQm2PBrtvt4mmkLpVIPEJGyjZ6f+8ktixKSlLiFGaYmq4HEy6b60IkqlZIAl6H1xG8ndRA6O2Ak89L/cZPaQ7c5OoAjMcjxNorjvS6ZMFVCnoN//RWHRz+uR7TTX9lZOn0s61HT+yzyfej93QJ5QFeCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714618943; c=relaxed/simple;
	bh=ECfECXKX/OMALh/FCRcb+9fk9vDiPogAcCn/K4tASg8=;
	h=To:Subject:From:Message-Id:Date; b=QRPkMcF2jj24etLrAKDziCB1ib36qHvMEdr2fNRSM5VxccDt0roAH7tvmWXD9g+JpzlIAqqC5jZz+GRDxkjiFu7QBmUoKmguE44sbEPOWGJxjoe+UOEUkwAIrq2b0+6UfFqNG+W2bw9SOmCfRykuzCEcYEJGv5MlT9u+zFOTJag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppvZm+V2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppvZm+V2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8932C4AF14
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714618942;
	bh=ECfECXKX/OMALh/FCRcb+9fk9vDiPogAcCn/K4tASg8=;
	h=To:Subject:From:Date:From;
	b=ppvZm+V2Q4nWU/5Dxm+cWfpF5lny9lBQaGh0xzan4OmntyaAWWYMCsRtYjPp1uV1V
	 pfNTXYNlPvoxl9pzT3EZZLWvZKellZk+wwfVc4YORks3J9cNSH7mflDoomhFS7G88e
	 ZluJD1D7FhJvYCyNCl2nhmCaKo6hj1Yt3MimykNKJmm/s/k7ACysQBjgsf46r6tDCa
	 cvlJzjhNec7sPYOEy//4ndZe1ruxxgpm7+4a7vHNzeGohOOU4TMKik3/QGe96GrO23
	 YLQoO/RiVvgYmKC61iC5wPA0CWZZ+Fh2WzeXDWL1Bz5PcQYAtva3Iij5cNUIaGKV8g
	 7RtlDILeFfhcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73EFC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461894280.7991.11636448889230131471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e901cb9d04a08adf9eaadd7c6272589783d1e76ad82f778a8552daa22eca6a95
Date: Thu, 02 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714618942
