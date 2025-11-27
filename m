Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D772D6E6C
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764276774; cv=none; b=sbUTGMWhKssi72YeuFycmR3+Dv28SGuKa5xf/3W/daicboXhRgf/B30o2/IdUJYufypmXBJmyVY3zXoWfztYyj/y19zZBcr3IeljKxAS07YloBj3zZQBj1h3Om4cR7D5R03n3uuWduqY8vu7cC63XLNjPPPXwayjLHp1qS5JRJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764276774; c=relaxed/simple;
	bh=V6y1mtbA7rbu10eJScyH+HyySOjt1GPVHIp8d8rTyNk=;
	h=To:Subject:From:Message-Id:Date; b=turEdFh/ZxQwMDsgWhUOhGZbsueTOlzBYA/xWXEcBpSUzoYMejMV8PWXr/yLuONpaQdMfrNKqOTllMZlOYVnXmlqTx9I4Vbxq9t44S9VSFKsVTDVSoi9M0mPdQ2NtL7Pd80KpwmgsAh9NuO2329Mq1foVSiz1F0JbaLHxwjuCR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B01ybVV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B01ybVV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A526CC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764276773;
	bh=V6y1mtbA7rbu10eJScyH+HyySOjt1GPVHIp8d8rTyNk=;
	h=To:Subject:From:Date:From;
	b=B01ybVV+n9eCEf+3TnyAwC3+H2QtvJQiP7tKgPD9iy3kJEz4mOBdmh3+q8oy4iXdD
	 o8O5869WjaBV/pHN3ToV4wTfEQyFUqqAsYT+FLxV1IWbrT9xcPL2rkKsKFisbHeJU9
	 hh3M41hA9jY/pGsMhUMPCtwxL/uPS5e1fC8aPKlkiV+Jp3xUMH218XbegEMgCaKb8A
	 2hcaa/FeblGfABglP5mV6i9/1xmFj/JiUuBJz6+QV0sHPMSn4wxZI8A54g22Dr9rfP
	 tlsbfO+mqzHQSqlONappohg3v2j5Xs0SkPp3OGLvWCiWa57xKDbchXBmb/43x78hQe
	 Bt3dKpcvy1cuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9022BD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427677358.3959.16518952530559833394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7d74600bf73d6543549d17bfd27ddce62fd5958a5a073ac11b2988029f6dfd
Date: Thu, 27 Nov 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764276773
