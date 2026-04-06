Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31972212542
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775507134; cv=none; b=CUpXAHH0TIOY1m76sf/eaanRENkSpObrqgtfV/QWYSAdkFz/SOyeswdh/pl7bl7X8e8KJQ+uv3HiIfJDyruQF8XA5a6nc9e1J8zQXXZUK9RRvRAHa5rWULs4Vs2B7cwzZoimli853dYd1H206FZjHx7kqKmj++MxYC5qhTKQSss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775507134; c=relaxed/simple;
	bh=sOsqHSvJYnLfZuFrYiJT1AsZmKhBYvZV3MvW75YCApw=;
	h=To:Subject:From:Message-Id:Date; b=vFCNaaMP1YpBKEPKIRmiNFy9gW7xpo5B0G8BVChFmmALvGTBThLpCnrvgjqjced7nYEsfJ47qDxNnW4KXel8Hb3prlJP66pWl7I8hwQf7G+fV/TiJaTT8cKIqryriy0VDOaf4IjO1pwxWEkW13CKr8dlkNFbHpsejDGF1xc1Syc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pv42Xa+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pv42Xa+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF962C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775507133;
	bh=sOsqHSvJYnLfZuFrYiJT1AsZmKhBYvZV3MvW75YCApw=;
	h=To:Subject:From:Date:From;
	b=pv42Xa+BHvvNWnK8oJEiNavwtlZ2icCXV9JfCkxJ6+xGN1kecP/pUVZFN499rWtWV
	 y/ves5aMWwAF4VQM8WJ8x0TG79VuZiW8yzy/wpHGmI1eY+t5wqcKK8RgDV9XQY52w+
	 yZelkMYo1L5PdI85UkELyk+nskVJKlO0GEnuckYwcR/GY3toE3zthKxPVeiDpzeekA
	 wsk6pLf6dONCOd3Oqsr5VDucdXQs5wty63M+kDnMJuHenbBiza1ympxx7UFC0OXs0W
	 V4rQv1lf/EE4v43hB2kMxq3I/KPvB8MOUIbyZZsN0YjYX/6PKNBXwogVq+NsjsAnzn
	 ZnRIoTs5JkNNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3B0FB5168
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550713369.6554.13607452722136405725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a963dc54a1ee97abeaf38970fe7b092540cc739bcd1088f24ef94aa81ee89c59
Date: Mon, 06 Apr 2026 20:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775507133
