Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2381E189903
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735637754; cv=none; b=WW8RN1qjGIR5DdKQ1oe4HgYm96VBqNS/i5ypHvnQferZ1MulKZ+NEg1Mfb85UEuiTRzdxlwy1piOrR7CGVRGiPVQClVpxWv58nUX1zqSCtFudCgkJAEVdKoRrYeGnorYQmt+KP8u0qACODIviG74t97InezFLQSg4YmKD/jnxGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735637754; c=relaxed/simple;
	bh=rvxWY9pYd1qRgSZWJIAJ9VVog50uAU0XZvmsKOZ/90E=;
	h=To:Subject:From:Message-Id:Date; b=tSBwnPSUEvk+zohBHGBo0sZrC34R6CDs/Sz5FtUM8lvLECNZfUCS1fFLNMBysS9tgNlJfyzLQvBAHyN8fcvblY4uktZHPz/CTgTX+8b/ocLKN0nm7nMKEAKU1EUmWYW4yZXgjglRIOPH7XJAgpLvI7+2Ay0swRype85z2lC1qgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNJYdmNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNJYdmNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A746BC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735637753;
	bh=rvxWY9pYd1qRgSZWJIAJ9VVog50uAU0XZvmsKOZ/90E=;
	h=To:Subject:From:Date:From;
	b=oNJYdmNCnqaoih5jprMKfmRpLe5w2aqYBS01+Ix8BJT7P+f0ULOlHImNZioGjX8X1
	 5n2cNlM7FOg1Uk9VAI2+XSiMg1/8pveVBYwsUVwjUGxernqbM4OCtLWYVmf4DHgco4
	 j70YRMrwCqeaAb2FyA0ghFGozbOnmnezsrnedjbj6hYwuhtIQ2elziSlJVaNUF8vzn
	 eoFIzSJj6nNxBJEZfPkq0WIgebaRVFXl+pAMq/GCKAt/l1wlrRiMFsG+FgE6yAVXBW
	 Kp48OGJu0Vl4jlqcKXLbgQ5T1Wx8eLGA7LZ6J0ARIkNfizVPzYBZZvjwprii/3hlQB
	 dlf7WXkFp0MFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965E5E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173563775358.32208.3282248275019200811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478e963db295f7e503dc4dfdfd6c84c4a0cf59953742289227f550724f7e7506
Date: Tue, 31 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735637753
