Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AECA2528FD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769169234; cv=none; b=NqXT7oX4gB0MuXMG/xx99Cok7nbcdh3V2MW9w22pfo5Tigi2ApqfpxqC7WW28bNYYg0rVx+u8E2r/bnir8XMRgQIUo+SVIobci3HCkCKkf2YgbRlX8PTz13yt17yfH6OaQ/ZQg0hUnh3DfT0lwkZ+utcaF9C+Et7LOqdXGNkpCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769169234; c=relaxed/simple;
	bh=lR2LDRygMpzrMV3f+wE4wTJJTIXUhZ6sals0hncCY0E=;
	h=To:Subject:From:Message-Id:Date; b=dao6Nz2aaXsbApNWVPT4zU/x27mEKeZEl6HGnaY8FegS3wsH5gxhp0hMrnoFeh6SqMoW83taL+efmCqHNJmq3l2UGGA5wR53kyV0edlEFRUhRbw+24oZ+cP1nQAg+WfNxT6WeLfp+Kfs5fBOhILj0qdiAQKp/BQEHcvenAqxTf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVN+z6XQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVN+z6XQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ABAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769169233;
	bh=lR2LDRygMpzrMV3f+wE4wTJJTIXUhZ6sals0hncCY0E=;
	h=To:Subject:From:Date:From;
	b=TVN+z6XQ4UN+NfRj1ho63NDlZ7tzxVpvXLx6xGHz5MFrk7K0OATNSNHfYOjbFRzlG
	 t3SgKxozRcxYh7ZA9jO3o+QgYOdEyn1szPbVQUnKiTF0/ahkRZj5mUuONxXFpn1/+H
	 yS5zpxMJW2fCeYV7OR4s4ppCnaqvBWs+Ulh1qYQfzOKW61H35zIPBTeIqsgGIDX8yM
	 IlnImbW3WXg0N+HqxBKf3JSJ01rFgoe8RzFZUd0Hn5b3vVM6S6R8QGVqCOF8xMdOou
	 OgxP7G3HSIelK/j9SLUD82euleb3mSjrorxlp2LVDAyCk6TnH9gBB18KyD9hkKGMtw
	 bx6368Xxqd7kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9121DD7237B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916923358.19496.10020752929284844952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396cd5c1713a2946e422893753660c3b6cb66ec6ea5efa99d28a500a3f42a03c
Date: Fri, 23 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769169233
