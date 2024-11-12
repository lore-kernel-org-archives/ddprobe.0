Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E8920DD5E
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731410154; cv=none; b=YaVGpHtENDBI2D9TikrzWt+NCk3KvrHVEvKV9qkf7zFgSCNw3L2qi4VYHJhW3CoTJkxeZpz/OMXEMHr8VAA3MrPzRiiKMVzP/ACrb4mpmzuKPYqDH5Zx93LDfI/MeIQqcq5DSYK+PUOi/quTDPpKnACB5u8zwl7Jdv7FHH/wB8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731410154; c=relaxed/simple;
	bh=r2MBQAKHCw3TSDtpWSWb++hWBpgAd+tH4CabiclRL6g=;
	h=To:Subject:From:Message-Id:Date; b=hbt5k3Fs2Jmrx5BYaRVH7I0SGmGbgBCU6JtqOXX+zKVaFA0ZyuIIG+BEJ4LHfuJ2TAS01qcUFnTsqdVYBk7ZlpyIgRYMrF041fnz2no1r2tASRRXNCLIhkr9o3gp4JAT0etGd2neZXrvGs8sYQ0cgzlp/hVSK0oWQia0DmwLPKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL9g32VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL9g32VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01E9C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731410153;
	bh=r2MBQAKHCw3TSDtpWSWb++hWBpgAd+tH4CabiclRL6g=;
	h=To:Subject:From:Date:From;
	b=vL9g32VRsHbYdi9UdMepVYU2zNjYa4QoMzDHoM2c1ramTGp11O3NBnX+oN7up1ayX
	 Y3LdEdG2b2Zk8hglFh2JXILxST94CZEsvCFwAC/HM4xrEkjfKnXZNvSW9ZWcWR688K
	 zJ+ogV+3NEskbO0wYd1u8eT+kXP9PcttCDArd0OSsNUpc01Y4JXoZEL9ykHDFyliug
	 2H3H6gjA0eEY3po/Gcrsrys0bTNZXzCB0pCjLmwDpaw6lvMc+RiSWgmUuHsfS0Fj7z
	 En4qRy4WsDmik/yJCynfkSDaHcqRchu+/GK2ABNUSm/Juy3mjvTxisFivQJm/aRpWR
	 pyJFRepZOSHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F52D32D91
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173141015358.6159.6153126626740930790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb8cf1fcdc2b40805445596819a38d38ae9d8c21ddcd6d9e81965c1e6177d3c
Date: Tue, 12 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731410153
