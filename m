Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847CA472782
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791381634; cv=none; b=qmeVtpBXqAbc0EK5q41KfKu8ERYDPu/OqINBS9j1KEnKyXB+9saQGYOcoOu9fi8kXA8utk4J95pa4mdUWF8js2nBj/ru/Bv3X4hnatCuFvjuS+bofUOsnnq4R324W0EiJcv8RKiGp6U9AeeuQYYhdoDdVYvtD6c7JPrWfufcm64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791381634; c=relaxed/simple;
	bh=z4/Ek+Fw+hWBsAqNBCVWlmz7UVgly5QGGnGxeUmcM3I=;
	h=To:Subject:From:Message-Id:Date; b=LVBh5QgW+S/84lB4xqRELnKw5y5NLivUJ2/2ZbeYcvYea+bKoNTZTP72w/m8Nm09+t3GFCt5AdP/VTOi5igBY+C0gEf2/vAJxQmz29fOzhy2qNuPOVLC8p4peILLmDwwNGkwkLhBxZzy8O5LRggVlMBgacfeBULfNagybyGopng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Umv1lTtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Umv1lTtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0983C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791381633;
	bh=z4/Ek+Fw+hWBsAqNBCVWlmz7UVgly5QGGnGxeUmcM3I=;
	h=To:Subject:From:Date:From;
	b=Umv1lTttfnfyppdtUKdq1Q+GcntLIEzJxkoukNV87lfygJQoCXwXywBpK8pI3mPIF
	 tYJjcKzfGf/BNMzcFO1i9UZtNJ9nj6vqfTfjSv3QTzDcN6ERVo+FnJQl8Y4tkn5de3
	 FL0v380eQmGguEOjY0U7aYJI23uAqCMYwkVqWH7DnPiK5xR5fB3qYaN+3YOtIT/SW7
	 UGLsNyviAABCcm8GI3ix8hZbHuKDbjmoOM/MAriaL7GRjFDzVlD/eg7UZdelWbAwUf
	 mIVVp9OTzudxsewjcSyKsYZ8DEAmbrzZEa0ERRfVECxdVFZLx9VI5oFiz6iDxXo/t9
	 dAJpgHn7cnSVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F2CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138163368.11780.9702338406887345417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cbec1a09447bd6355e3c0fc0ffd8491d1f4f2eae53dfd270f558522f7a6cc3e
Date: Wed, 07 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791381633
