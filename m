Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5652937F337
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787608834; cv=none; b=KKsHQ3ESfNTNH9zd7Ie5FPl9j723ajgC/4lhBblISWX4PHjn/7rZBzmamXu3qJfM0tb2E4TIaQmsQ2ym/KhfOSfSyydRJWZD48f3WpsA8sJd2h1E5OcIjjsa8A9wiiyBZDxCqsAckmMAURrdFidr4KiqW1ZuUTMwIzf9d/p48Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787608834; c=relaxed/simple;
	bh=yaWQClRRfBGVjvBzbKzYbojlWluOOCfyyZ8D78EtFiw=;
	h=To:Subject:From:Message-Id:Date; b=QvphnFW6ogWyzMESjqIPyrHRAf9TNdxKxB8EU+6v2Eo+QXEsyiRjQUQfFKEybrbDqQM7i88gGYEgbGCh0JqIb+EHCvk+xOjW+gzRYU+vELSoKa6MclzYnGcU6zuxNN2Ctll/gk24hm7TRhVzIyUQvhVi+8X2UcYpooycXypfRts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvd1olkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvd1olkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC617C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787608833;
	bh=yaWQClRRfBGVjvBzbKzYbojlWluOOCfyyZ8D78EtFiw=;
	h=To:Subject:From:Date:From;
	b=qvd1olkGDFp/xbMmXX2wz/ZCfGHX+BZehIqdCPC/XmX/g+8KMkBLDsrMDUUM7mm/Y
	 hRTUiqMWGXsNhaNdjdkCb6T50ldsi9W6pEFHHKHSUqkYrH2i+9sR12ZOyyzdHlsXHr
	 tMTk53y3ai3OVnI4KZsrCjT+e9ilXgnk2STgB/K7P/AtUp0E3yzzAeaeBFQN7Q7+Nb
	 odBzHsYAWIW7/qTsNzQ8Fz5w99uDNdV5iE810qI4FgKc6uVei0QXXqvsaS9Y5ncqfD
	 U5mBaJ0vds8SG/xxH1mPGRvQrN4M28sWiE1bfqFDP/YwZzztq8SbdAV7YYtO04n06a
	 in0lScik6quJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA43C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760883369.30872.7070520588098484403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d81ec6cd33b407f53d897ff330f59176da554973125b296beb888077f38c751c
Date: Mon, 24 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787608833
