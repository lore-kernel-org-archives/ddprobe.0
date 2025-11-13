Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C9933F8C5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763039994; cv=none; b=dINrYriJrzZpUEtFD1fWEnoVeMnh0Z7DzSwFt8UNkKkdL6kIJgzgnS8hdmayMnMslPZGdlAvJvwxPdleUNSvxIz+9FzWJg/g9P8ksCJwyi4a5FyquJw7X8aIeoQ/DLS43TJyfQIUSlLAmpaYEYMlXQjBNGjNXNHPKgzUdi+Yof0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763039994; c=relaxed/simple;
	bh=D4TfnEzJ1nm27QR4O9KNcE8emfgpoEE0T0FuzhIjbmo=;
	h=To:Subject:From:Message-Id:Date; b=CMWGHNl1S/pd8nbwF/sv1qyH+eava9Z0wmI3YFd/WhMDhhXQjlGwemDV9NMhenb3x/mipYNYrWNnFuf1c5Fg+u2jVf9RGXo0fC1rEORDIB4po5xOKp6vQqlnETug3P/jpZclYIp2cyGbj5r/Oi/Ry+xvQGqpBlMn08JrXU73OKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HS+wexvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HS+wexvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF3C116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763039993;
	bh=D4TfnEzJ1nm27QR4O9KNcE8emfgpoEE0T0FuzhIjbmo=;
	h=To:Subject:From:Date:From;
	b=HS+wexvtz9MMDc6b6SM/YixjNBsGx4OLxv3Wzx511Wrchj67mstcqIY7pmQ0Ze4n5
	 18cTPIhXkvIxPrlXTTMU7ZRm+11/s/jhz16lxd/9ZB9pEZDJi/vzHo9g+I4wAx5EoC
	 /58nsovSK4U47zxPfATcLML5vq2HblKPWYs+TLaLKpLlOlR2l6OZRErDVyFOyEt44i
	 FhDbSi2mgu7iTvzZe2wC9ufIzYO11B/59/y27v/LYmiyJZ5s8I7nDqeop7HJGCyxjl
	 eq0ZfFarlCL1FhPvbbkOdEyTpLc7WAcveJucBVFQRQRzuyvDKr3OWfU2RyK2nKEzvF
	 gL/Im8PagqMnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981C9CD4F2F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303999361.32090.13837877126728953350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68309e6b7fc9032f8f14d0186d2ec8d9e77757c56713a7faa23ad23b317a0eda
Date: Thu, 13 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763039993
