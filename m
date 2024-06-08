Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D9F8BEF
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717813643; cv=none; b=fDgOmemONBTai3zly0hiJJrv54mJmKVfu3eMQ38kL9tx0ozbo+jm6pTXFYH0qax6GsHuZuCdAGUwC0wFFkaY8lVNqU59iNaEPFf/3NPULhcEagFPo6TAAXhqHJe+gkwPkHJFRiTKTJm7GRLExL0VyUtnl6MIXDb2eSoXuFGiKuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717813643; c=relaxed/simple;
	bh=Wv5EvRUWcKExzCoX4LVacVcPMvuq3lfg26Ha8BBarD8=;
	h=To:Subject:From:Message-Id:Date; b=K/EkP4lfaU4heXS+AW2XfPBKOcHOd2ffnUGxvhNOg9PW83WkBCdGk4ira9nXi9iKF4NSX7vz71EPBSCPX9gpZhswySHROBl6bAsSoSPFkrkF5bO1v8q0wAiINPljtB0enyferaTzLE1hLkg5+kUOBuxscq3TJmQAyM7tHiOOttU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQw/tm13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQw/tm13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEB6C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717813642;
	bh=Wv5EvRUWcKExzCoX4LVacVcPMvuq3lfg26Ha8BBarD8=;
	h=To:Subject:From:Date:From;
	b=VQw/tm13T++eeC9Mj39zMDDKt139Su/9Yh3B5knDqeQwtVFBuXtru9d3+vJDcbcbZ
	 6Zq1BqimJdDWMpvyv7dkfAMlXACSgOKcrL3KPE9E5HkK5jLYZdkmJKhgzpUjlTpXVe
	 lV1DbLxT7oYMO2iCp6V+/X8L8JOFyEtg9vnDbFz1JMzDR3AHLOvJigyBJ3a6s5C99z
	 r9IZko8+e20NBWga0k5MzfWPNA//Cpt8iUDCfzKuHk2B7yX37nOi+8ENn3JbUp86kd
	 owcF5ZOeFX+7jGZNCUhOW9uyBHA94Gq6HfD7KKpFCHgUMaqkBWIRzvSvRGP2m7AlZ9
	 QUze6qED0BEZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB136C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781364279.16779.16201680266569752144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f452d5d76cd8a931adbc589c9a3dbd6c7fb613daabb03a16f5b0c9ca6738ad3
Date: Sat, 08 Jun 2024 02:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717813642
