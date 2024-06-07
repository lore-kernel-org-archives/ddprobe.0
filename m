Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8AB13DBB6
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717801043; cv=none; b=E+FOHFZnRaIroO4KvxbQjlq+h/nwFgUmHcNN4iiJih+FcCNlIRvoT4u51mJiLMCZXiPGIpnFAOU6ZPIUn2sgubQoLug1RNzh0MAXtwIBCBBoBZfw/QPGzUgs7SEsIrxdK/O9VLYadnd7cYiCGeYow0p92kJbF6YrVaodx9SpEQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717801043; c=relaxed/simple;
	bh=xs0lMlKuCy2tl9v/1uL+ed8772xfta/BLGtVYYPsaeY=;
	h=To:Subject:From:Message-Id:Date; b=ZcGQLwS7of8NggnVmZJ3v1y0HqJ/AJffZdINJhvcCb7QMUQj89e/Z0H75uEB/e1lX8LTl/hDQJ1BIpivxM9Cpv5GaAmfjFVI3IeETkFC69XIN9wNH+PWCWdvDG43hrrCth58nKt1KhjKoImabLt7O01Q4adDc9HohhSLsFNxpGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phRZiEKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phRZiEKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B1B0C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717801043;
	bh=xs0lMlKuCy2tl9v/1uL+ed8772xfta/BLGtVYYPsaeY=;
	h=To:Subject:From:Date:From;
	b=phRZiEKonWhGi0HB0Amt6M5/MNGbC9y6n2zmobmEZBfmMIWn6B1ZCoql4rtOuZXHG
	 djoUXJG0hr3YlHR7LrMGjaAgu9yV6QDzNtMlt24ALCugTV+HeWMPN21xxwCSSBlTLb
	 oxXdtH7HoSHHBzXSy68sxOxAigWEyaMo4I0PgiSOhHsR9MgBAqyNE6kBCFgThq/HJS
	 pNrnDgk+aDZT1NHpVTg20DgqmUasz/O1wPOstVZrYWVkSqIsL7jJ8d3YGTRN/i2eS+
	 Qk2XN4jEdLVchiI2gkdBRpdJJHphE6BU/zbLzgzU8hS9YonQqT/RyCOmuaXzo416bz
	 7iypC5TClSTyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F245DC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780104289.28057.12422335185494520317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f512f2e3655633f894c4e6457ff0eb5f830ace141a218364154c5aa6ed9b55
Date: Fri, 07 Jun 2024 22:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717801042
