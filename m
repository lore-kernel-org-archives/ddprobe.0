Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3A0A95B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720252523; cv=none; b=SgNxnPyWlzA03HjHWgYZZdN2EfqwGwl+DUbSZHBczCqiDzgfuiq51gcn8LOSET4l2u+7pfi1q0WYgz/OQ8SrorY5bU/5BGudQVLr0yocO+epp2XhurWq80/3MoSu+yJY/Cd1oZDOeHVCUHUcEd8Adj54sXRUYh3xyvBZg+Fn7ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720252523; c=relaxed/simple;
	bh=Zs+oVdPOr1ibl6NGzQ3V9koxRJKSMlTbroTxCC/aVbc=;
	h=To:Subject:From:Message-Id:Date; b=p/WCYtK97q+Pf6gq90BkXo29sSyttsBOvGt7jtZ70rfbYGojRhn94BnLSc4jtPGo2ekx0Cmd3/ZXZOwPewuSzbf1vUdcj5FQmdPyd41P1j+WG4+ZiFd9EVG0L+a8lQ+imclMn8rwm6HchVdlQU3H7ICRdS9W3yUCR4oK4XRKtsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPuKFyh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPuKFyh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E578FC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720252522;
	bh=Zs+oVdPOr1ibl6NGzQ3V9koxRJKSMlTbroTxCC/aVbc=;
	h=To:Subject:From:Date:From;
	b=mPuKFyh/iXcBOp9DeUJEKdw7T9wfK1ntdbHWn7+TkRGluehbCCiWMeSK0WWG2WIXG
	 xoDlUyEUQRiyXp6eDsDEEK1bTLoWJUk9y87WSocWQwdeCORN/OSnccdgKqsbwcvaDB
	 dcA1Si7tZ6JAscvQKzdyzskj9afiXuZ09hEnk7cgtu/e11pupTsv/TJ/C41YCIWwFK
	 SnukWfGxBZ34FXzTK3MEBD6iWHKlgDJ+5DDn4q918/SxjxFMCgTzUmevEsTwBHmZ7L
	 iGQNfYjwBQZR33+wn4ZhFzOW8lBeGOmJI5Vbma4YZOzlykFiT9vpk8JdE+N1k3tMoV
	 JAMqmWI3BsGFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58F8C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025252278.8740.11775950617970267359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411744346325b81edd634db88877a778a4b54e3b866de1752624a890ea10d735
Date: Sat, 06 Jul 2024 07:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720252522
