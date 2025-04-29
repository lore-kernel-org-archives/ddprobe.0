Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B1F26772E
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745913594; cv=none; b=pVQSW1p7U51Y8JjwU55MBowEbfcQ3zld73IHQEGB8ER6XHjrZ3gikylO/dmtourekawaow2dGVOFgJ3AQu9KhtMqMklJghbXFvG/pJS0ClgCgqybvWJP2WdDqrRai3abomftcwAWhY3MiwnMMIL8HsVMTd223aMUJaEnH2KDwx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745913594; c=relaxed/simple;
	bh=rnVZpoo4y1+oI6tfC90zm9Ym5z4XNVqtzVDBZYu+TvE=;
	h=To:Subject:From:Message-Id:Date; b=bn4FWvVgLbInwpRp9juyTx+2NXieX/O4zlThjLgXWFn9Cj5wp6dtyIJf9sevrnMH9EZTH+yhT6kdHVwU9s+GOViBd06VDVJbIWBojgBfMNw60/ztAdGqasKi7Ss9WBS0+ArnCjjg6Ob3ObNXKzc7/gl8dRgMKrIu9YiIcz53W7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDAErcti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDAErcti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C090C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745913593;
	bh=rnVZpoo4y1+oI6tfC90zm9Ym5z4XNVqtzVDBZYu+TvE=;
	h=To:Subject:From:Date:From;
	b=nDAErcti/9fE5HnnCb+/nW+lxOFTmfwZR1ckNALf+Jr5ahD6KE3V4xuUZpspUxR51
	 gymLC6Y04mL5LJ2ZO7BU01jBosOUmWxblUfSdSgCBW48hszeAlYXRtc20BOdAnXU5Z
	 LAJfMd6QP8Z+dfbKe5YB5fyXi/aBqSAmyEFp6H53bSwsxzSO/M3nxFjg+IzE/82CGw
	 S1Avhx6mbRT7bBepnN218wFBq3ySf/2omoAyagRONm9NJ9glW8RlXgWSLgd5Ku6QW6
	 Ew90oR0ZNk7ke0wLGONcIkTSXSRccBUW4giouXXXIamFrEF5JdD5JA4gz2fUj/N5ah
	 C3a/5YFUzn0XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE31C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591359357.15278.7055624528335317269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565ea9bc9f6fa87d1a2af8ac1f315b2f3ca916e231fcf37abc4829619ca9f3c7
Date: Tue, 29 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745913593
