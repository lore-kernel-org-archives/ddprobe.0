Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F57448AE2B
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779126034; cv=none; b=CsnqlkINEKuDqlVGzg2M7QMLuOnXwL0XrTMVkeffTOGpmJHQ+l8coRtDNpMHXw825n+hKBOFDfYELHBF63VQR3G9yEUdX0eIrqNwruuZnfiodYzB4BDaK41guQNdLN62ZHtn0CFsQe9YAsc+4t7m32o4LUTjotOX2/8Ueqmd/F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779126034; c=relaxed/simple;
	bh=pQGQhLWmBeM9Tw/iXtpufDEGpcDXqN/SGJad/dkf3Zk=;
	h=To:Subject:From:Message-Id:Date; b=RRY+F/WAmI/zb5Mu58rrYBSa9B9mnI95uCE8rKM4KVaIcxqw67UCWscYN4kQr958i6t6CTidAzA/HFzF6Siwq2t9SZsiQnNTmMnnTn7LbyyMx2ltWEHezeLefabZxQXItuZc/XlrehRUoHvkgh6t2w86ibGFfub2YtgiVP9aV4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbVo1rMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbVo1rMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC07C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779126033;
	bh=pQGQhLWmBeM9Tw/iXtpufDEGpcDXqN/SGJad/dkf3Zk=;
	h=To:Subject:From:Date:From;
	b=DbVo1rMW80jd8rtLXIJhzZYfPkUwdjrfI4TnnRrZanDgd0m338NS1/M0/6n8os6Fq
	 duAM3sXxfwJKrOOYX/hYueAu/ttalt/C2H+9F4nsESEFDk0I4M8AwpoUOC6spdqaiO
	 ZmJAdK1UAp9uDXOkldIqOYZ/0ad76dwoVdFf/p1T95rdKE8Xv+4UgXDXxrLLrd3cqm
	 UHhs6J3hZKu8EOcpHmxwqBYSQYMgIyBPX4lr7N/OnOio3a7f1s7FP+EnrI+UBE/4ex
	 a/QkG15wyrStjwFbcWdV56Q+qZSxBkQZPd2uy9gZFNUFnaaGExBrfkk0aFB8ULeaQg
	 l1mImUaS5Ohtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D05CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912603368.32055.845065222296525247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afaa149a8a4295b8b49ff5bb488f5405f87342c6369e94702d4bd48eacf36c7
Date: Mon, 18 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779126033
