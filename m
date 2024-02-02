Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02735168AB
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706874497; cv=none; b=fibRyyWAJLdVB1QdKl/he4xeAwI9I5/uZlFnJvndahRg5y0C+BGfIjqVXNf9Wiyole/XjHzsa4jMuvDVz3s7K0fIZ8uE3wNSTthvflIGr1wwF+WEHsxsfaEEd52eWu0I4kIJi0XA4oAJKLF6KlN00ZOeBB8hKkm0fqnJ9kcirfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706874497; c=relaxed/simple;
	bh=+4P2ExZ7klzFztgwRijd3oufxy8h+Bxf9Q3iWdTZO+w=;
	h=To:Subject:From:Message-Id:Date; b=LuxTAqDSbfu+VnSnvevlqWpDMmSQ2IYpBvwrmao6HWkCba5wmiJWX7SGbPsYjiPAdhhNBOR/Yw0MDT6bn/kseyUjQfjXMI1ab5f8FcgwdO2+D4tG1G23LJeb0TtgtmvB8QEznlyRO5LrcRbtKYX0egJGfCSurOjAKKR0NBtVd9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNGxus04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNGxus04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78FA2C433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706874496;
	bh=+4P2ExZ7klzFztgwRijd3oufxy8h+Bxf9Q3iWdTZO+w=;
	h=To:Subject:From:Date:From;
	b=dNGxus04BizBSPcwYR/wUA7axBdixQdjV/FbVn0bUqoTIUdqYiHHtrsP26EgmjKmg
	 a6K6WwV3QkqHxigCXpWOknan/smVQqyg8OsPGfLhlJ/an7cwk0cH5eVLzgyHqXCIaF
	 JTt5FJJ3XabDYKTGCfBVtEbyMK8rOoQHDY+a6Pjv19xGHVvnjgfLzRk82/nijrVnSF
	 /Ai+U0zmDcVtsSCO/BwSvYwXKk1YAk3V59xDngyYNT3E7a9OgCttiV27M1v7lngpXc
	 khnK/uxkGZC4csycIk2CILyIjB4xu5TxwZu0TTFALIXriXp1rAZaXYD06HhtUbLitR
	 mSAO6mnCg8lBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9A1C4828E
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170687449638.25219.8378401884163758286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06777fea9c48804a100780ce42c68e25ca110c7dd855b098f93d4a5b509df646
Date: Fri, 02 Feb 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706874496
