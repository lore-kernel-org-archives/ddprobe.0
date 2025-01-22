Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EA01805B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737507354; cv=none; b=FzAvmbuYzbyU9CTMdUaIUfwNSwke+wvvJ4no2VtKSDK2BIQ1uicsGoRKjtjc3l8FIKDFoSjdcEf3E6DrCc/+gzdvQ8GDI9fjDuNJfC+/ektzdn/5DF9UXGUYbrCi+iAbf2oLLxw74K8UxLVzR9Oz9J0ZqwUzgEVxv7T1eLLrMyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737507354; c=relaxed/simple;
	bh=FyIrDNkaf0Vry6Q7kCBxLNo6CPxTqeH5OQU23atBuBY=;
	h=To:Subject:From:Message-Id:Date; b=jVpYy3vTFk0/8o6sQ1i+oXJLLgzaUqfeQJWB99JAC6iSYSmXur7wRfe0KXHYbPlbSpw/Y9OANxGieDiBsSyp7Txjqmhu34JBbfXCl+L5W25LITERzdWW9xpDqAUov4gwm0sSSbLzraCYrTFatUCaFzW6cgHNK418TzHFVx3k3o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URXcmpfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URXcmpfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C64C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737507353;
	bh=FyIrDNkaf0Vry6Q7kCBxLNo6CPxTqeH5OQU23atBuBY=;
	h=To:Subject:From:Date:From;
	b=URXcmpfddAtB6q2h/M1w8PwGhx/0+Bc14zBZLsGNzbd7UXczXWZ+xDPgMgbApmant
	 wlTcKKaQ+jgo7QuZ3bWzjHQxoo2s8V8dvLgphw2jFz0Qx6K0X5VUceOBZDKHUJ0U73
	 jF/eX2RrV6zM/fhhi0m6FYRc3Q2C4SXWjjVo16+7TGKNx59rG2/h0bse2/Hu1v4FIT
	 DAVkvRIGZjys4vEMvH7HH+G77OTH+D2hGgq1LMrOFiYkzaxCAvw4HGwxWEtTYyXpmg
	 QtTb3aIuvUwclzGM9e5luDQWU1kZILhKPZvFuTwE0ONF1sRn7ha6C2YdfGuZTAsmg1
	 m2N4Mym1YEJ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991BDC02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173750735359.19159.1310452913329631957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab28ba523ac5649370bd2f1c178f5bd4619944ed504f8c36a35e3c742c53b78
Date: Wed, 22 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737507353
