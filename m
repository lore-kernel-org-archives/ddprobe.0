Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AF337E2FA
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776293854; cv=none; b=XLboyGJtiuMAlvRuu4CupFuIMCj0VrLjaZtz7qlzhG8Ev7JoOdE0/56FWMoie1tK/DqfK9uZ9ksLew0HoYFTgO04bGhTwYjQR7sllv770O65dS+QOFr+X9G+BxG4dW7VBT2SgVgq5YLQXL2LrQdw6JoozAeQ2sWsHmOf6P9UHIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776293854; c=relaxed/simple;
	bh=m9Puk/eAK3AVe7V7fo8rNftDxaglC1uGebAJ3TowMOY=;
	h=To:Subject:From:Message-Id:Date; b=ill/YJTbKi3XD4kSpdfUfWIy4cjsJs2+lrEaLMbQEZTUEh3A5je4O5ElBkguPca0W+1lP5/y4kdjzJYFcELiiZ1vfxJWmIU51/UaWOXujm6xV/M6rC18Op9klghXr6RMDtlN7uNp9RqKOEqPzxY3O+5A8XlG1fnKqzMnbe7ORa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrVH8YzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrVH8YzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2808C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776293853;
	bh=m9Puk/eAK3AVe7V7fo8rNftDxaglC1uGebAJ3TowMOY=;
	h=To:Subject:From:Date:From;
	b=QrVH8YzRDBzaNKrHVI4RYzVFa2FR2KyIE7PBNz3lBYauP+dyFTeqBo5reWxXDc/F3
	 Ki2K3Rsi7O7kLjb7O4mP40PJ2JQdJWiy9Gi68OvaFZlEOUo4d3i4aCLeve4EqB6zl+
	 37LrGcPbzWTayMKW3BqPEWoeSqlxucUv8wFH7FL5QRYzbP6YEdc9Cnjeqp5fx9ozep
	 YP9yMkm/74T/Rud8eJ+FNk3HAEoiTmOHZOgkARoRu1j/khBFP3A46efGu65L6v4dEd
	 LXjC7WNToB8/eWkRtUtecDFjStkseTtJJry7rtN+VBoh7XrpJVbSTRDABahOihweRM
	 50dt+EWf9cnPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF946F433CD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629385368.15580.8416796968874932857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b0c833b409d6aca96d3461b9b417298718dc89eaeb0292f04c0eece4dbda4c
Date: Wed, 15 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776293853
