Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BF71DFFD
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743275994; cv=none; b=jHb7OMozFje8/ep2B/Z7BYv2On02iSaOXgYaGr08SeYcduJhPbInp5Fpd3ApJpAv9C2fkV4/hRJpUWTZOwm3FoUPwKDW7nGX6vr+kZ7HTWO3J9mD2d52PiRZB3OZXp3uddMzTb2qOX3LqVa/zUXfCL3KCFedXwiqOTCo0Fiw08U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743275994; c=relaxed/simple;
	bh=VPdhRmwqEAEF0qHOcPZ/Ouiy9cDS2+H65jXarul6PVU=;
	h=To:Subject:From:Message-Id:Date; b=e2tMdfHf0x4cdx7KXbJU06R2dtUVhvP2++2HI4GIJOPvoYmeKsdJc8fysQINYRIdc09J47YeYZ3XsE88/CoFCg5EKw5bpfGirtPSwgUOWPcaeTyFKqPz5rdaYKqA7tvd2GtTBdm9eNdLxCAWNGdiMK6AvoaQSAnIInNsol66r7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giRf7yKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giRf7yKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60B8C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743275993;
	bh=VPdhRmwqEAEF0qHOcPZ/Ouiy9cDS2+H65jXarul6PVU=;
	h=To:Subject:From:Date:From;
	b=giRf7yKmLL8iR4yd0We6EPTYPl1YIqtZL8Xxa/wQYSi3FqEj4MvtBJl5je+EBb75B
	 D49KiOeY/9tPS9EUz5rekyptaEJWOmLiqycwfAdWuMC6skYZl50dvHpQSZBYdNtBxl
	 FasnGNqTPTrrTrRpFuFQsKwXN9e6ZkyygdZ3fegy9DaUDOJRADCmaC2njn28QqGWJz
	 CpUjEmsgqS6Yw67xbtdPPiisDke8n9hT5BUIwLCDJ9KlsXMXeALulnkwF2NIJR9+xH
	 MS0S/hao6y57X7GpQwumiGVyvz0x0GCimqbo0DU6yUpXDM4kISlBQjcgwPB2ijkcKa
	 zR7s6b85s3+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFACCC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327599370.24681.15963872671069725708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b4909eabd810d6eddac4963da576dc0aba88c63632f926770cad39c54398da
Date: Sat, 29 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743275993
