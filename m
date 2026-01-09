Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2313E2EDD62
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768002834; cv=none; b=kJNBDJLhpOuDi/z5VnGYr1leMpigjmo0r7ydmUvcwPgAVJ+64ZK5wy0JcZFddxhyV/xNwteojLi5dcy9+QOJ6h9HMVIscjvdSMX8VlpwMljDwV8OVYWhNu3pWxsZIqtm6eqlkapcmt5VVqDej5xwZ5wB9v74mxf3Gi/vOvkfqRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768002834; c=relaxed/simple;
	bh=ykcqRtieU7RaNtsrYTQCUp4HhACaLVzJXptTY5Aivaw=;
	h=To:Subject:From:Message-Id:Date; b=bbS9aem8FS3tY2fAGOoot8rPJDqoL1vuXqRdwz+CkAXTZ/UrmlN8KnYhRGUVlBk5W5S/XnZL1C2e01D6Dkb3pFwHtL5/pcH4ZvrbYRHCpQDrZLhmtrnw3XNjWIWxYBn0wvGz562IhlJhutbPi9gMU5k/I6xVV2AtZy+ez8kepEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bq8XHrmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bq8XHrmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7918C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768002833;
	bh=ykcqRtieU7RaNtsrYTQCUp4HhACaLVzJXptTY5Aivaw=;
	h=To:Subject:From:Date:From;
	b=bq8XHrmhycW99y6stpRJGHsWjHaS/VkZh/Hey9rtgiyHNN4FYaFwIfHoHiQ4g4r2+
	 4GjM0n/G9+3kfdJcDKYX7EdYYc7Co5UthnLaPmCEwjXQgPcrb6udEbyqBhR/zJfsNy
	 XuGDYgfZGDJC56ck6fMgHzJnI7phsJZeHdCvO8OJuvijvaN+ckfqcoK2MfRQrPcQN+
	 95HmJdEIIKTTxshlAH1U2lW/8+Qw3NAwnyiZbe6zj3hVaWpwNI2C+H5l8E4JYRAzNq
	 CwUnKIw4VPg8jVfrl3HqMax8m4fcJhAJMjXFyEB1ZfPm/tq7uCESv408to5cPlIxxu
	 sQIQzaDoIBiwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E3D277CA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800283358.25062.10309362681271624264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2648e2b955095d7d00477fd99abecd2ea031147320dac5b2ce6ee0f97d98cda5
Date: Fri, 09 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768002833
