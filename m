Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5051F361970
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790331634; cv=none; b=uYEPFhuXfiPy7PPPtWsx0vhBBxf0allgCWcgAnScAJRMegM95APR5fIIabWWWE6rxMMga8EOmSKT8D18Ch8tYj+heAQVl/9FoqAuYuXGf8BNQJ/7wXECD+FunLDy0M6Hl/I9VBKFjZJutQc22OO6tocd6CL4GDmnmwYh7Hg1R3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790331634; c=relaxed/simple;
	bh=gl6vjm8uQSjqIGgkTMZlWoLMZmR7mDRwAblQmMv1Uc0=;
	h=To:Subject:From:Message-Id:Date; b=l+6OXvdZofqu+GlhUzj6q2ttuWwY4e5AHylv/oXaYw0E/LS9BklhC/F5rhpB/K7L3gozdj8QLw30Wx2n+vnmJuBMJ9BXgTV3q5TiXVl+zYZ1asQoov4VIJxz0NkhzNVj5R7EIt0KE7ZFfDP00ygCN/PQHNnTxY0OXqfIA9A6LFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJTPM5me; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJTPM5me"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49E7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790331633;
	bh=gl6vjm8uQSjqIGgkTMZlWoLMZmR7mDRwAblQmMv1Uc0=;
	h=To:Subject:From:Date:From;
	b=AJTPM5meoAqWa8L8ARcZ9UbOK6xpaEG9xJmSOSr/BTyMk2vEnz+fycP/a6LbtwtqU
	 rYliplvHQq8HgwiODyhe2CUbtAz0Dzu+au6JEXxFjnZEhzFLmfR9wS23+qXbD4uabh
	 YYx/eFSR0nrwlcI9nmeK+Wu5Om8e7jsrQyioWQJo6mx1tjZ6RNZ5iCtQqpbgPFAvWf
	 3OwK0v2h/BjKtSVRdvj8HRomn+56TkWg36vpL7ReqgfLxjTTrzL+v6Tp/UGZ3zukvz
	 oKf0qW+3BUQfDz4deJdiTKMK/47cZ8yTiF2+lRan2ycMa7hlz1+JzFGuarzDH3guk7
	 V0X/PafCrSteQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF305C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033163370.22279.10409208618295553000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc99a826867280ebe741104f9e54312d4ba7244d49fae269f8ff75902ee05c0
Date: Fri, 25 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790331633
