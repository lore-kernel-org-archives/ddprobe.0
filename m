Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BAE1D61A5
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742396994; cv=none; b=Ix7XqtjP2nR0fu+fHXNOzpwETTnM36+d/6h5iZQLCn4fE7tfy4WDKtv3Qh0+yii5jHwnQ10kPxXD9aE0c72Q9RCdBcnqXTmN/RbGmy2WBbRttXdmb1ZOVmdZsKk4y7T82vHRbLnq1NMlL/2Ov4SvH/4x+41JhAPSzQVvS0BkJcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742396994; c=relaxed/simple;
	bh=JNSoJOsoCamKxwjVmM+w18V0tpbU6gUuuusRKw0w0rg=;
	h=To:Subject:From:Message-Id:Date; b=hUER6QudzbE1z+WsVHbY554tX8HikI28A1miWXsURNi8r8v9En2SAwuFqtudWf9MK/lbNqex9QX8eZu3ENKqy2aFMxNzq1+TFi2r8vcL9IVmSGekG2CMJPNzglQIG26ybXnRx/RGcbF/C2fwN6hUEjcoKiLir2y1xWnKuv3xPdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZQOMPZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZQOMPZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB1A1C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742396994;
	bh=JNSoJOsoCamKxwjVmM+w18V0tpbU6gUuuusRKw0w0rg=;
	h=To:Subject:From:Date:From;
	b=uZQOMPZ0Izw7s47UtVqtmC/5Un3jjuvN+tormYRDs666R9PjIPuWJS6kVfkL5RNXB
	 yQCKHmBFl6ioKJCKSpDTB79ir8/zQAUy/hvhfoEgguaclQvzbDZm3y/DJaYwhCkWHY
	 hXQGpxE5jG3p6+Qk4w7ZiuiU/c2zbqqyrhA3Vogpmx9tlUXtPV4BYHzb/uA0A/eDUN
	 NQX08W5UpKz93tEYne2lWsZia7HBpK/VlHUcLgvLaFkAYfPXGJKJquPEEgnboQFFBl
	 V4QprS/wEQW6Xn4zyUUZvnM8bN/NJd9ej4bgaIxRbZnGyuKUuGOYsG2msqrF70dzky
	 otlfLm98OOuEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6637C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239699370.13231.10865800157425049060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eca6dc8a8a8a2e7f485d73e0428c0ffdae7d3c72e9e810efdaeeeb496d506b2
Date: Wed, 19 Mar 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742396993
