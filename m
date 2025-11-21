Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1237525BF13
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763761914; cv=none; b=F/lk30QskpEhzv2JeTiI8eHJ3z4QoHN0rdaoJNeaRMBdNUlmYwEfDoudnQyXfOLRvM0f7LI4QrNxVObKN8PFN38vqLGfpMFGUUrLtp7DuJEwEQaomPzfTCZhLjXQPJHiCdFIVeoSuEzHdldo5Sl71/pppJcsV0BuWh8WnrXdT2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763761914; c=relaxed/simple;
	bh=WOknDuoMugbfgIoUtczSBJklc5wR6sK++EqdTXI9NS0=;
	h=To:Subject:From:Message-Id:Date; b=kg1LwXRP2HTOjVU6Tb8I+JjZtsCM9uCzKyqc5SmJPMMdOOsYdOG7iE12HrxgcbCiKaMOHSx/vCV8jVoT59gaJMk+Vtu17FZyEQH+AMB/nMp5yuLWfNsgzsBBJWuoeuZ/ufvWbgBa6Eg5LTFkkFoGw4oL/9UYS7GJ1Oh8MxCAWZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0wh5Ke/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0wh5Ke/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD750C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763761913;
	bh=WOknDuoMugbfgIoUtczSBJklc5wR6sK++EqdTXI9NS0=;
	h=To:Subject:From:Date:From;
	b=D0wh5Ke/fizYb+keGbS6SLSJNTyekz7eIaAmjuIU0gWD2RjgkT61HK1S9+LeTM2v6
	 HnnEKf+ExcscDwDRhMZscZtcCB/VvR13IkK4jpLx2nHKfN7jZrP9PVt+NwIjYOOSKy
	 /CxDU9jNAeePk93PsGPnoJ7vr1fC8eViahEw3GjdVt0Ze7TbEohJkzX7CYJVXZNWf2
	 cVxud1oxC3FnNCz96k3xWXrF4pDFQl+twglcc4RmjNGTqKCV8exxSTu09TRf1cyRot
	 zx/rCqlmDyQYOdu5BAf6afMkHjqVON7h3P8oRSXGjhO3xlO07eSmlc+Wh06mIBTqFw
	 U29wjXPnmfVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97850CFC281
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376191359.23980.15963689787779981200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0d206549937d65bb760f1247c355140e4ac54c18835a5d832d02c1a020c7ca
Date: Fri, 21 Nov 2025 21:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763761913
