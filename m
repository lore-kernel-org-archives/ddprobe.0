Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EF713C82E
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731237954; cv=none; b=E2C6sIYiUkt5pnjPTasCqBWLxpvVH1ynOEOOEo7Pz5RwMFPDyayrdk0Uxr7AwlL7IbJ8GCydXNJCKpbbJVk6RwFn4VZCXpAJctl6f4RZtSVPR1uhvgsFekLk28wHSkAUDnH8+6QdgQmUvJZs/Bkl5FzD9YJDsaczn+eL/syOybk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731237954; c=relaxed/simple;
	bh=KesvskHHytCkMq1ZXwjFb4U9erkmJO+dynZALe4IyVI=;
	h=To:Subject:From:Message-Id:Date; b=NOTyb1jKFNGpctO3FDp82VY4dmoEsbajbbGPbKJ5uPPUhVBS2sLuCWLs+PqdqaI6Ng6Uiegh9aQ71FpaPcGZnyYKRD5ajvARJKJ2C2xo8ft5VkMQwr4BJOmfI1JQcvn9b0ESlfyOurB/XY9Gb8uhICECLCWySM1+Ow61GbvWtQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpWabWrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpWabWrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E3CC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731237953;
	bh=KesvskHHytCkMq1ZXwjFb4U9erkmJO+dynZALe4IyVI=;
	h=To:Subject:From:Date:From;
	b=MpWabWrAsiajMJB+scc3QW0wHiLAsdudzYRIMx/VQWFLe25yMOQ8ORaljxlcs0LvI
	 aoL1MJUuWwl/S5mY7SOAyxbZnTNl7xIKkeulbImaNEnt1+0WiLnJtaiqCYmZ3NvQWs
	 KWfsckEkuP5IK/qLkfku0g1oXMzqrpoaCg0Cj7r/Ba+vny51b+LT89rZvGs9GAt7j2
	 v8dS6WVhLcD085ivjtfJfbaRJJeW57s27UKueijevFXZzwstl2PTtZ4RccMKFHcJMl
	 nFiGJhJPbKM5omzU28XGTdeK4ZbjsBMVzwZ4q2B9nuL2vm3Fblhvqgp0vD4f+H7+Bc
	 HZ+zKpSP/6ImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC43D10C0C
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173123795359.10876.17227853646930015279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b0593f031694fdc0487c1903f7efd97d2132ec6b024711c010ffab2e46ad84
Date: Sun, 10 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731237953
