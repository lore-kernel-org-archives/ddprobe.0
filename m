Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335E933BBBD
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780374274; cv=none; b=K3Ck7v5XGZ/CdPWlTZCjHjveQL2bgbKNt4/CCbKwbfk8VqJT1kSwco/4VSO2CffIZJsP1AiOLp7GF1vXwcQEptpmj4mbtaDJ46QIMu4uJ3EG0EE8vlhJM2rvObx+zYihd80nQ/ByoRdJ1iOTReEmlcsoBIUJS6gvdxclH025DgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780374274; c=relaxed/simple;
	bh=pBd/Xu6RLEWSjv3mR+jdLs40cGWkweiy6t8uJp5bJ2g=;
	h=To:Subject:From:Message-Id:Date; b=A5maVbFR8hDGWF/x6MeTgrDyPqVXih//Y6pNMTvnDQveozCkJEyMS3zCyOg8AGAZuhVaSdMqUlQWvIJczhD9y4T5WuvYmqtm8lypVsbiET9eq4AeK/aJBPRrR8l4TONP+Dq3PJKK3HfYGyNGGZQRuKYs+PnVVE5yQhGBbiEA6rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUw+MV7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUw+MV7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9377C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780374273;
	bh=pBd/Xu6RLEWSjv3mR+jdLs40cGWkweiy6t8uJp5bJ2g=;
	h=To:Subject:From:Date:From;
	b=uUw+MV7T92Qr6TBaXIR/zEMjAJK21DajIv5EYGWBOMO4R5ffGwiPAhC1T6i3niSA7
	 aZBF7f11XPt/o8thN8TwYsSxbSirCKqzDVsHrT/GOZyhl6Q00FrMjkjwFZqWewDBoI
	 WXKFUWRUyXtzutEaqDbGz6BjcyaVFSVbuGJok+irQ+DG2YhQuYywjVEXcsC9kHMvIC
	 mekVeJdTgQ2Npr4OyxxpDxHrfgVjlqBMyqjMaM/xTkG8KwIbI7b8QhftO2VkwV/Fvu
	 7Ef7+ox1WsYSaZm6lAgTrtgQktaiKO6HfQnIhfHJbgw/yFBUcheqdGdN80y9VEuqYW
	 wSz1Fc2qjqYvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBDCCD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037427369.1919.12096694745639607750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd10042807059ebf6c9e856dafb9b333884556982479afbb2c6adc8e756b329
Date: Tue, 02 Jun 2026 04:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780374273
