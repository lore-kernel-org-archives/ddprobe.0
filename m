Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FCC8061B
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716384203; cv=none; b=P+28kflQSxbxvMSSZ3TKjvKBctjqHaWaCLZNAdhrce172Ys0YAeUFan80yKNpaezI3CVwPQK0BjiWEK8zMfqZMJ112azH/dPG0RevXK+fwjXJCdcV8GA5YCpnIbO7ng1QlUzz+Sz6McKdkPPo5hFwaQkBWhg/cNq2iXM3dLCihY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716384203; c=relaxed/simple;
	bh=Th1UqLFRAMXv0xLV4x04uKJmG/cDZdrFLhoXvL8pH2c=;
	h=To:Subject:From:Message-Id:Date; b=M58I0gyxPW+P7k3rwxd/AjDvbCri0lb5+jcu7epMF27qpkSs1ar+5O222swKRVEs8fQp58fC+/AChCZDuRjTttqfffePkman0afagibd3zDMbyEheOGuGgYn+5PeVgtHFLYctbLHIuq8nmbhDRRcwCtnlHpCipAJ3IfyOqI2/00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uqh4AjLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uqh4AjLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAA8C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716384202;
	bh=Th1UqLFRAMXv0xLV4x04uKJmG/cDZdrFLhoXvL8pH2c=;
	h=To:Subject:From:Date:From;
	b=Uqh4AjLpt3Mpbu9NlDk+95RAuXszJO+lEf9fHrjON8JOU4u1D6iWvPZXQLts7waPv
	 WrWJg2iEp6vTW0S+WsCUJsOS1FO4/yG7T9BcPCZAkP+61pPO0iEslk6r8YKzr5c8EM
	 OjtmbuGuTnk3w6pxo8F6zMyCl/ZX7A7AiM/mTfxZg5gcK0FqglUZVr0/+GMIvT8PpL
	 ejxYnHHCegFi+0on0y2OhEkwyF6HjQmxb/meYIkHnBBn7VjAlW8MOudJg9/g/+JTuz
	 wXCZYYtrG5RMm4/zn5j0hnEG0FGOyMhTQMko7C3eXn2C3jjpPEilLhHNC7dUNLvhkb
	 UsBhxXiy8qiYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92A4C25B7A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171638420281.18638.12521076936724947283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0259f6cd9c88127507a50f7226bf812f55444c03470a32d111454e654a72d073
Date: Wed, 22 May 2024 13:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716384202
