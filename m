Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2693239CD1E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785258634; cv=none; b=kmKBSV/Il2vA/kxYcgVr5/E6ownhWz1Qv2e3X1siaIEdthqnUKx4fG+9xUf15pqg6E4nndyZeUkqENwoRqIErnimz8heic0iX2bFyvHaShlbRk2WcEX2DVglOCTUODyDksxXm0KuOg18czh1rBvrSXzgafWWuuRC7pUUgdib34E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785258634; c=relaxed/simple;
	bh=qL/+cT14ZHYio1lGvf6XQa311+FwrGIIOiWLTpNxS2g=;
	h=To:Subject:From:Message-Id:Date; b=dwjmkTH589zImZzpNFTn6q8c3ER+m3Z9iQhDYCBA/GLyWMqxHl+Maq8E3ky3rjBMXeH+Hgck+6f07OZarrNpt1PCi4WzTWoex0nPPhPdgMs/Miye7dZTuTYs3Sy5f0kCGYrX77aCqaF41mKzTLtl2W2urhJHVZ2kYrscFsonMV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J99+46gN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J99+46gN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE76C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785258633;
	bh=qL/+cT14ZHYio1lGvf6XQa311+FwrGIIOiWLTpNxS2g=;
	h=To:Subject:From:Date:From;
	b=J99+46gNQHJjpqsl77veeueboDPgQTOjaytGbJKpH4fAwbxrHwwA7hJVSFLZ/j2f1
	 ruJqF9+xBAjPE5knDGX7hMoH+8OO2r8P37Ec8cnlt9Mr1xYNmbFF7yFvCCcDTa9cWL
	 jVaBVZzdXnqDFfE6uDxEWA2oUoKuXTUmj6u5acnsoBMerUsu2KtAPsxk6W1GYw4JGW
	 IipTS+ynh8GH+Jil4ZigZk31GXUQwFBtkQ6l2nixjWYNZXnu+/dZ2mqAyE+dxQUfv7
	 6y/vDokk6XV/AhtAU6Yjzcp2vZ0IAV26rDzZY4X9EuZeIkR2+7OCJMzijdI3g3uNns
	 OaMqOjwajCUMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A40C54F54
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525863368.23923.14338087449812744450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6c418045d446daaffa8587c1f2fb2f204344ce9ed9ef66bfc6f4beb68921d0
Date: Tue, 28 Jul 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785258633
