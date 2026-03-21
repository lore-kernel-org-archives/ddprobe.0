Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040DE242D9D
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774133094; cv=none; b=IDgqDnGtc2XmgqVbGgAg/3n2Ca6sWR7wtEmNPu7fMOUz3WaVyIW2xIkrBM7lGKxcUF1KLSya1hwW+e1vFHRZMgqfWW3Edfptf6uTpryuKG/KHfIRRhhDyeENPKScuQHijutJKZSqAN0NaZMC+ezoal2oZagY4KTHctY5h/lgXC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774133094; c=relaxed/simple;
	bh=S8FoapPL2vH1XMUc/e+WXGzUl69EBr12NCt6YdwBXfM=;
	h=To:Subject:From:Message-Id:Date; b=tT/o3QQ8Ev4o0OVZ30/+OUKMP9Z+4nKI5HrZdrU8JwrZEYLlGfOSgjJT+XuZbiQ9ApQ6oK0PWuEfhzTSt48czE3Ewu/NhKJkVzs50wQpSUyzRKoHiE8ivER620Qcv7xR1Hi08+f6W7nJ/dGh+6xtA/q+j38sud/RO5RcuEoYSFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RO8x8Sfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RO8x8Sfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204CC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774133093;
	bh=S8FoapPL2vH1XMUc/e+WXGzUl69EBr12NCt6YdwBXfM=;
	h=To:Subject:From:Date:From;
	b=RO8x8SfbK/Jaq04YRwXnJMRzG9u/8NIgr9xjDiDOtxjWpO22uADJYfy2SK3Au/7qV
	 pRpJYJTiVmX3UrLNzcVHqwwBYG0t7W+bxrcXKd0f+DlqF1s8W83oMMgEuIjiuPDf+a
	 IYOFDVksj6bqWrfm+tIMURe1y3kUtjUuqMBYeyiUiQNt3bYrm6/c+ooEfnQo0hmt28
	 TlDGqepITME1yJpbm0rHevdBHFDkth8ouy4Kf7xJ2AtUNO8OpHmvXITLJUeIy0UPit
	 HKjUXBjek0RYrywmuKLWkwdCsG7OmgYVDKvGC8kXBS834l7ylLwJF2jpRDdeS6fNy8
	 ZZuz7RqgsEzCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C71109449D
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413309357.16562.10928271022380353412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a8c25c647ec8fdec1e3689fed0deabf5cd0a6943cf0d071e65af57f8924daf
Date: Sat, 21 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774133093
