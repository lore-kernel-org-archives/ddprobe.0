Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C625322E
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742429394; cv=none; b=H9Tyx4II/tdc2Y0wgMEvaZIQgp+JjanzvL9jKPiRuJ3fPVeepQ5WrGPiVJdjbhYiRXm7NUqkqdyxasjov3dK8QA5/SMgBxJ9BPVAOQQF87LWqAanrTV+5APdb73QzSzf8tJh2fpg+cvj8QPx0a+F4Yigs2zphGewsUEbB0aob8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742429394; c=relaxed/simple;
	bh=oEWbE4hLhyYiKaHABx442lTdNNAcexNJGBLuYupSe0s=;
	h=To:Subject:From:Message-Id:Date; b=cqim1tStVMqHdODaG459NpjJEBIJ5jgVhzzW+hBIqNNMHgrq0oFU6pvt1fXuKiBA0BOblU2OO22VJYB9IGR7HTPeL4A12TyiU2w+JacrB5pAXBAuJoYb9aXiqE0FF2kx/uhZtNxcgrV71guj/cJutS3+JF/fpEjAAsVozieC9ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhjk1NcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhjk1NcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6468C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742429393;
	bh=oEWbE4hLhyYiKaHABx442lTdNNAcexNJGBLuYupSe0s=;
	h=To:Subject:From:Date:From;
	b=dhjk1NcOORNj8OIQUQJDbCVrRLRMwWmWwFYxHYgEeu2/jcBY1j2YnTua+Qy9df3A8
	 t92XpNZbNB0568IWDzZnsld++ha2ka5iPpTDtWHTJ/0WngiXFT8sA/0WUF2unsCGf8
	 VoFMKkJW8RTpBpyR1rjpAWzrchBqYXKemZuAjHFYRVL/w0h6YYA+W2vuZzqHLpv+hH
	 WjmcAdlipFbM9XRDB4sfxgwMSyE6dtUJyHcoC1o57IDW3t5UaBGpbYKG/PwmB8oSwz
	 hpfUBmGzILaDAZqlaVSL9korhZbMMCs/VILf3OviHEAX0xWx3UdVWd3cCuawDW0usQ
	 l/qaooGHwXOAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04FAC35FFA
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242939365.12431.13804574589558218091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd51028fd88c1765ffd2f44f9ea4045ba2a2e57cf871fe4eddc8bab43f9e1c8
Date: Thu, 20 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742429393
