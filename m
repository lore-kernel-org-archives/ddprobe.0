Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049F11A5B9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771630494; cv=none; b=ZCXTqpyG93Kg/LDCFN8OESajlqlFT+IRhgOP0aul5pz7Ftz2cZc2BAyuYdk/jIcvaUU/WAcolH5pGk+YKT44rZWxoqejGJHYbepG7mkUXHtJ1klbu4ZWo0g0hlTy7tU2CtNMmtSy4P76WA2tmDLy0Y7K8Ob7jKZ7AbPMxwgiKAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771630494; c=relaxed/simple;
	bh=n2SAdALv4NXJh50tKZ2UkKl3dCYJxpOojVBY+/omRNU=;
	h=To:Subject:From:Message-Id:Date; b=QnOIdG4TnLg4zQbrltJ7I7mtOKZa9+loLwqLo9w7Jbc5934lfbCOeNtVRBayYsur/+XNHz0b2gOpfxSrtDqVOZ3cfixrC72d2HC2vfVbphHhzQ5dyU1d4sC1F1rfCFVZJ+ZPOjTjFf9IVAMfr/yl15uGRkxVWWgYnhYyQgTuEto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XR4w19zO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XR4w19zO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34E0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771630493;
	bh=n2SAdALv4NXJh50tKZ2UkKl3dCYJxpOojVBY+/omRNU=;
	h=To:Subject:From:Date:From;
	b=XR4w19zO3Yu0+rqGbDYwGK4LOvm/3XTG2Fh2C036DxzzVaHy5u+19l0iXJv+izdF7
	 Whjbcl5nK/VAjLk59Dr5Mpdm25YimFa5sATx3lkTRMm3Jr9muaZT+xW7KMjdnIFVJp
	 PMumx54x5s45Rik7/Oee2M1SrbbFMyYeix+usuRu1qWXAtuh+uGQ3dldmT5zTfjTGj
	 Hf6K6x1944bjyOwbqoO0jxjGlD9XtvWXWakikVQmCMZEk4xmqpuB1FJWMACxDvZh/C
	 W+JX4FJD37imYxQSXAEK6m6XnktziZe+/iJGy80BwhVzyHaMRJj6tYZDnyAUTZPw/E
	 OuUoT4fr+j46Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C4C5CFF1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163049359.28829.311321874465079356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c536792479b736eacf66e1e73f77ac29abb7c8b24a051ca3d1883ff4c218f03b
Date: Fri, 20 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771630493
