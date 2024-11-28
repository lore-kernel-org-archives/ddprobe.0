Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9ACAD4B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732770954; cv=none; b=RPZNyt+ZFdkQ8tzp5zrpgWeKDrmsBNKUAm70N3T+3G17cqlcOb0n0s7nDCSNWek4II4GLROvwwcnc92GW6GrJKfrI1h+AKFNCcfhdpzSsyYfAZ/fSyO18+lC3WqFUd7Y3/UZ2n7eBDbyVpoYojnWcK4QbMM5pm0MQEoEX9i/suc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732770954; c=relaxed/simple;
	bh=+tnogkouJfhAwaaYpOghUeS9mCgYsY/Pf3TX11HNyzk=;
	h=To:Subject:From:Message-Id:Date; b=n4j9K0RssfUC5nv/wzCi1qYSQ95lzkB+kvNyvGfvNrPI2iwM/7UBXUUAXJ4IYY0T1PQLo41BsyZwyyN5qF5NubJ+BgpwDKZ8/WNGI9kshHrzneO6oMFnX2GFvIzIpQufMc2dmMH9LR5BG238fep6gHp5yKfLha64DujS+vp4XmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRFIxPda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRFIxPda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6559C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732770953;
	bh=+tnogkouJfhAwaaYpOghUeS9mCgYsY/Pf3TX11HNyzk=;
	h=To:Subject:From:Date:From;
	b=MRFIxPdaW/4C5ytLH8MxRrCFNB3NM6HDtx/MkjBs2INZCEq3uX+AJpOl3VJ4QZxtr
	 xyMTQ84jbGEpXFCFC4We8VlZUDtLqPuN8N7QF+3TkOGm9H5OCxxSRiqU5C0nQaDdAh
	 wU288cuDB5OgcJIAg8EIVbfXWfhUl123mtwdvXx0PeSweaXeGBayu/iC+HuJGe0IC4
	 tOl5vRAui4WmV/H4Sc6ZJuLbdrlklgduHHJIQ75PmK9u+rQJK2FydwY5Q00VMRjp3l
	 AqGrvCw0+Rao7D0+4xKI2xXG75rgVmbbJeAlSzviNAIFot9h44bdwpWiCK8+207knE
	 rHSFXDH+NPb0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9CED5E39F
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277095368.15455.647303520945207922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6de0ebc553433ad39ad1cde133831d723595b277571c5dc9f872748367519a2
Date: Thu, 28 Nov 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732770953
