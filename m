Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D7418A93F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764085374; cv=none; b=H6XGFIQtHQ8shshfROMxS6GykV9Ei8uoO3FcEZ8j9GcQ2FHKiwxZo+Ib0evI9khUTa29HDOg0FhZVIXhljbcU2bKZ5+jYDeEiUVQREICzGvIzXAjPlpLxihHoiH3ZHMDSfDpTTLKOu59fSwlrhMLaCoKUe/X93gJmLfYp+H+OA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764085374; c=relaxed/simple;
	bh=3ymzuqUh+iJFkxcNKYG9udwlMF/y9hivshXVjXstY2g=;
	h=To:Subject:From:Message-Id:Date; b=oOtAUV4twkNUoVVRXI6QRKBa3OfmNbJjNjKQIY8UQpx2LWfCJ/bChY0am4EMg1ZmFnIsG5FabgMkEjxeBmHnslnzPcotAz5vKt72kZtdsM7pXoLQLYMv3ZSg9pUfTp8/QepL41uacKP/zr/Vqut0oFrc9RFQV+bUoH9bPQEpE7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+TWC/Iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+TWC/Iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB5BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764085373;
	bh=3ymzuqUh+iJFkxcNKYG9udwlMF/y9hivshXVjXstY2g=;
	h=To:Subject:From:Date:From;
	b=Q+TWC/IqFaZOKEpBJAnSJPlJ4hZ+NM1o+7UMsf5Ojw9cXsOFEkCH8QqCCkExDA0ye
	 m2InoNhmBWYsFuHMHxfYAX8NY4eyR4TvPqfkE+yRo6Eb1RTz3uTDkwp93shdBqDDOl
	 hUCZ3G/U4pNl/0ELPBG+ssHxoFkQQ7wIHfplZ8gHgRR9eBaOAtK9mAz/wuSFXZs6BC
	 ye868hr+YwEYsDvzJKOPs4zhRyQS3qzzH2tPDD+9q1hGibgU37bkFIfrhpGSXA8RlS
	 SyYkg6ugYLrqo9JbAmUvMn4njttfal183youYoDExQgYugKNg0BdUGygUxTz+si2Im
	 629Q+PyQRD3pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD23D0E6EC
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408537358.11384.17200751792978996485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720506d866bf2892682277661037c9cb45bc447dcaa3e83e4f81609283b5c804
Date: Tue, 25 Nov 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764085373
