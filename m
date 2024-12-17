Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E61F2595
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734401154; cv=none; b=gl5UKxLbYAZ1nYxWQnog9UYdHbrcAaaNir8uxXFiDnNpyR7+pq0W8HdaYs1dOVupDtK4hYazc0XQKqi/Eb5p3sc4tvJYJbXBuKQip/RuWEjNifIEZmL9fnFW0pqO+YgfqkZyl9wwnFVykQ0hiOAF6ybOrevrqMzR3Wkqb9Hv6oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734401154; c=relaxed/simple;
	bh=MkpMUaVQ0cLf6bcgixX3ObxILOnQ5H3Gq5lyjA+MyFk=;
	h=To:Subject:From:Message-Id:Date; b=owiJbI3vu8+/VdsJqQYvRkzo0ROkjKFHuYwoCeBjD+nmyeWuptytHN2KBT+U8J9wRGZ+hpnTsi1Tt6ARRdICn9DUjopw+VLvPG094e14KRO66UKTEW78Vpzv0RvsCafPaLB0znR0k3GODyna7bqdVOl85Euyxmkgdjy5cbU3OLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NayR0y11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NayR0y11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27B8C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734401153;
	bh=MkpMUaVQ0cLf6bcgixX3ObxILOnQ5H3Gq5lyjA+MyFk=;
	h=To:Subject:From:Date:From;
	b=NayR0y11l7MwBA1tRblmF/MDFeIYzcYOstb9Elkd9rn/suQ23cUALGpK8LvlBlmnh
	 Z6HgxXPglRA0Lu0ItZx0mSR4KCgvhzay2g6+Z9DZwIaUHz2/UfET77n520lN+in9n7
	 G7NV5AEOnZLfvszgF/AJ801pjMUtw2G/GZG35FVfRJhCSJCIHgxVlepEn6gLUcXngC
	 EL1PHzTWNXXrdcGK92wuh1WdohUiVBjtolStb9mCgrCpCx+dkuVE2hdFzGAMU3l3+w
	 GYPYuMkFe/CuRE7l+0QKv+aM29LHIMjP5K2yPHCRTxlfxNLVhr4TeqBTXlJf+JKmK8
	 itlc37UgT07Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF5DE7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173440115360.3299.8143030247053911082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529c9e5d4ee242a89bf715e3c69cf253ea300ac6fd6c9014e4724f40d9f01255
Date: Tue, 17 Dec 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734401153
