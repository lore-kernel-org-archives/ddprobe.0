Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108C4274670
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770390234; cv=none; b=UEJ4z9HAyCFqlzPCJ2dnU/1ASb8vNVmxS9CbRbqIudod34H1tqcl6G7OUBcSwO54c0GUag7lZ+VrgS7DQyHjPcIFK89a2xB1DBI7G0CAb7GpX0DtLk02zcbpziVYcI9/qbDvJYELKiDJsdYTlBvOmg5X8CdGykiP9n2gBnJXgnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770390234; c=relaxed/simple;
	bh=WtqcOh3L+/z0fvwKq4oEZ1q8p+at43Fzy8YvFH09m+0=;
	h=To:Subject:From:Message-Id:Date; b=qpUF/iJHZquoNx+lLVfxUGzl6PKopHjHVRwLdx2Fpykv6j/7SNebT8AcUA7I4MWLTFaVAQKmAXy5WbKIe7EQNXrmprGsnmDMkcEiLEqk8e4SlZIxrUOMxckXjKbx+yxANv7T4vjTbtHwfNz2faTYl/yzHAHO5mANJbX+KwgYZMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9rT/Rp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9rT/Rp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72DCC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770390233;
	bh=WtqcOh3L+/z0fvwKq4oEZ1q8p+at43Fzy8YvFH09m+0=;
	h=To:Subject:From:Date:From;
	b=T9rT/Rp9cx3UGrmMeRfhTRjAbxzzPHOz9M4jneTbtLrzGbPCeumfyOQjMBVuTbD2M
	 v0AUpp9cfphTQ4NVqEAqdsyEJnUkWxyhnOR51qYTfT2V7X78EXHEAXgPe+v17y5Dwl
	 hPtcUmidG1z6bpiBcOrbGwzx/kfMZ5trWE0J2x9dzJQjpyR1SAWmYT44naSq7VYFMJ
	 LzG5lbTjvhNX3R9BSd1DJxmpLB+jZypag2oKRNX8cBureB/SRI9nc1YYrfgOZ3JpPo
	 vF1INUakhxkEnU/U5075kh1u+i4hcGxKDLcYWHh76tqcwxnqFQZx00NLCzpiUuLQel
	 z2UO7nxkLJuwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0760EE20A6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039023364.29078.8762044039804341817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ecee46f370b5444b6e6dcc7a182c0269b482168fc73990ec3d7865ef6cc9d14
Date: Fri, 06 Feb 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770390233
