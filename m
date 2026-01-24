Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CB62AD25
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769295834; cv=none; b=mYk87tyLH11Qp4zZp6gATXW0+w3NsIGmZe4Op3r4Nb7gYPSKNcTKQpOk/3jvLgpGF9ARY+F/79yWrZdGpYVqS8MVS/BfecK/AEi47EhpmvKQuWTvYOWVAVnvGWs2svVrl3GCvfOW4ZCcR3ngQp5p6k42AT/z1ebEw747HmOaxzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769295834; c=relaxed/simple;
	bh=7JUPXw1bu2pyey0kphZlGU41lqPwtmPQN8h10xVTFhc=;
	h=To:Subject:From:Message-Id:Date; b=AIQkh3ITunI2Ji7oEDQuqhijdXEZYD4SxVU81cGfcEjC74uEOl7aTgkKh3M0X8BCCzeWuPbI406ikUuPzS3ivgYNut0+Om1Z5F7WGgdButVPru9qm0ZGxdbS+a+1gn1diczyx67utcMdOCCXuYoGabWT6n6Ps19C9c+OgQufqls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c998ultn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c998ultn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A716BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769295833;
	bh=7JUPXw1bu2pyey0kphZlGU41lqPwtmPQN8h10xVTFhc=;
	h=To:Subject:From:Date:From;
	b=c998ultnPIdGJtiAQRKJreIyxVvAk5/PkF2XWyqKXfTPPDtNxEagIQ/yoqnofQRR1
	 R3yEs9UlmPjLqJVgQuuPxBmv128wUxeE5wB56zqkePsho4gfX58ReWl0I2PLL3La8s
	 tFKQ6YkbpVYssrFxMdhcp16Wd4xLJcJCEyWoscU++QPeN0VMWxsxjP7VQZ+rM4PCPh
	 x2ga5dKQdwvv+qdTV7yJl68wpewfhbxFryAUX/JteWU30tpoghDqlJtRAzdDIpiCao
	 NI/cOnDWV8ZSCQbvJP1ykxdg95aeYNeIF+QdqhKWvfHyMQ4tDwXokPS2kZ4xo2TpoK
	 0XucUrCCeY+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B2D715F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929583357.11528.9726807753418940195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f2797ab07d83baf9f530a29f833249e76f31c8d6ccdcb81dcd81078509322f
Date: Sat, 24 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769295833
