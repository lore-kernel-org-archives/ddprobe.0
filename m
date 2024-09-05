Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2542318EFF8
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725578754; cv=none; b=t++JL4kQrWyE/4FMi0MzvYIubzM0kjwNDBIZ4JeHKNHd+EmX/9Qdp5WSwHWgpVnXa6e3MbgDeTi8JrmPc4u0P8taqFqnkU7jEOtftu6zsD3YH48aOIQiUjcjUezeBFS7a+E1CV5HKRs0XggZ1v7fDDRJDCr2bv283YNXpsUIdLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725578754; c=relaxed/simple;
	bh=Gb+ZQ8R+8X3BSTBip472xMOJ3GQDl8J9FEwFxXHcXgc=;
	h=To:Subject:From:Message-Id:Date; b=kn87F1mZXoi5I5ySHG2HKi811/0YKwU4Z5XQDN5fT9RmC/5xChsdjJiuARizHzWtr23Jk+UO0s/sfEJ/1tt5c3+68WGKWH+h2JAE1T/HURhpaDDNaDwxaD7MnfUXGOnYIEty8AWjrh4W9D4RmYS7w4KfiEprsyEye3YrluYkQxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaYGeaCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaYGeaCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67CDC4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725578753;
	bh=Gb+ZQ8R+8X3BSTBip472xMOJ3GQDl8J9FEwFxXHcXgc=;
	h=To:Subject:From:Date:From;
	b=QaYGeaCwZIPmOK+iVPsRDVxZeFNbyV019Izv0u6Z8GorSe5PrUenYaOlqd7XPLF5n
	 1kI6nEXIlsgYnFNUbUpNewfy3ZoUPSWtiQMYocveI9HyXvR+qbLDJMiKKo4IQaAVGl
	 cVvXkTvH+vpGRSXZHZvdq4/wFxMY5F8wZfa8EH0hPzWjsYuL8hsdbe3iJOkHgvEuSt
	 /eM/N53ueQq7rtw/Trm4bu7+f2ozS6+yleaCKmIKh6TIoG+H7l95KHCio/uUte8Ek6
	 H2FKFSLdJt1XUX181W9ted4OfI8REJ4elJT1AmQGuTk9QrCEaCxEQLoFm/vcwGjxHt
	 NnmJpzATNgHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952E1CE7AA5
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172557875359.1830.3614989576753790596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5939a7de87bd5f9e17e2d8f6f6390a47c3e97b4e9cfbf11bfbf9c8237ed140
Date: Thu, 05 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725578753
