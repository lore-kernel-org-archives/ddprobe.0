Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1F1257435
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783680514; cv=none; b=ZQvKob1vQC9/A3jgFDzEwuIx12W2giPg2H+Uilo0lHAD2yvNorUH0hI7d8ojbtvJ7rNlR7cnt9VEEFwK8gsMNapMJ6J24wAxS1/FNO1N3ubKq+DVsAyoRyU1ITyeZ8tk2co8bpyJGn/L/Xkqzk7+/cEDntt+23I9F5e5WRZNkQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783680514; c=relaxed/simple;
	bh=Oy6tVLeZ9iUmhOKeirX/dsfLZwUcesRRK4/uGzQKLKM=;
	h=To:Subject:From:Message-Id:Date; b=ezpWj9TayTFh7vVHR4o18Lkm42WvvQcd9ctH37J0JkAZWVNhhFgXykfy4KNwDLxJNEYJDCxNaPhFpptIJNgAqz8P6U+QsequKJTWHvD17zDlOpUUxmNueE1szo58LsmqK4k0aB7unUawIobOxVQu/ziw8++lRJErnq4M07byvos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7tQ5YmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7tQ5YmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEB6C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783680513;
	bh=Oy6tVLeZ9iUmhOKeirX/dsfLZwUcesRRK4/uGzQKLKM=;
	h=To:Subject:From:Date:From;
	b=Y7tQ5YmJCaBLgfpO4B7nk7j6DMYA9S2S74qqBThA7caEFnb0fPat9JofJvW15JfEi
	 8l3Wzreh0jBJJNQOjKfEyD+IcyP//EQWzOGnboMl3uLIEm0UoEYFSkstr1W/ug42tY
	 gdWxS4iFzhmqiu7dpQf8Rrf4ATrBpyndXwEhOrRA3bCYlzpOeNQotkaLcLvgHWYCMu
	 K/Z+CyHUXi0rPAP7VWC1lYA52g9fSuSFiSc+5WdnDX1JekkLEjFk6qbwiw6kAs+e/W
	 0KvxuRWJyQ0K5kVeAd+EMsuM0DZWAJjm2OW366kuWQz008wrgAro2wDnT5RGj54fui
	 qiZRJcPjxVDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E04C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368051368.18017.15993407548836364884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6ba70eabe5cab89ac8f69e9dc7690c6d55bd0e12bb97177c9b6019b147b762
Date: Fri, 10 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783680513
