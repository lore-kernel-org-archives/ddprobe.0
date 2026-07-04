Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CACC1DFDA1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783156114; cv=none; b=XHp15sqwu+Jy8Hl3167h9qcGVsybNv9yp1czFR+yysYLE0+GsibHNmEyXNSje+HcWK0uOjv12enTtvzi7WI/LUzFAjHlN273ZlazeLwn3E1FiDtbFYc8W1B5jiCFlhh7sGg0TTKySKNQxdl4k+WztRqz9WmKpDuTo5Wsg5mpmmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783156114; c=relaxed/simple;
	bh=c/ELg5BJvzc1WwqtT7XoIHxZ3a7brZQ4rJHnhcVu1xM=;
	h=To:Subject:From:Message-Id:Date; b=Knqjq0HkGCCy1diUdJx57AGAq0/10plLM++qHlJdyKJ3wPS4sabMZBML7RivcTFmc7re5AWGgW0/BpOeQkscweKT+KwqOnKil0i374rRS8E80z/cjOlK2rJuqZUjT01ym3jkgU3b2vOi0IB69+TarqBj182Y6T0LMEWtuVlIVVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFjr6k0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFjr6k0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF300C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783156113;
	bh=c/ELg5BJvzc1WwqtT7XoIHxZ3a7brZQ4rJHnhcVu1xM=;
	h=To:Subject:From:Date:From;
	b=cFjr6k0hpp58/J/NqoIYRfUCLOAC73ZNAAO62PmzcLXhvLxz7VHCa+a2yG5BgoBF/
	 LDswn6K7H924QdEZVp8xyNEOMNaHpP08QLXFOurAC8APn29goXeJJAjuiDu4MNGQf1
	 kt8Qr2MxQEtRHOfK0ND6m8BVh6PjfB4sH9fWMYJVUv8E5gReKHyr8SdtRrJdzkQh6f
	 2cnscV2hQ9XgPaKRNbNxC5lDCmMtAGXnx95P33E5koZ6gjCPwtCfRn4DI8uD4aE+07
	 73LGJC1cUAiRmWOk+M0NcWZ6j0ZLUcV9KYxitL/O8GU4FhlBu8sZR31OMkjJcBYish
	 eoT689oVbdTzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F2C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315611368.26707.9770102405065992885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b022012ea8cacd44cee77114edf662b6d8c3bb784d7832c3fbd758d6596efbd
Date: Sat, 04 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783156113
