Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F71B20B1E6
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743786594; cv=none; b=oTrWNfrmnn+5qcyZSL45lXzGteNjl07bg9KNI+aH2Y28OqahlJ10HYIcs6eGs4V2JPlHxv2ToLfsMrmGT9P2zfTCkmYl/12DUQmbvZPq/Fe+yufPqaWRCuexB3bHvt8k3kUQSDwR6MpK8jhBeVTF4HprtjPGYtH7f94KRmA0+r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743786594; c=relaxed/simple;
	bh=g69NJx9Wer0Ii36qDuclON7KKwrKvkT4KXkrtwWgr0c=;
	h=To:Subject:From:Message-Id:Date; b=hCYiclCrUyf6jzQ5QYYpcaYCHTARoC8EuIYPeT+hf0Y9psNzLfcDomo15jtWJyoXmvgH8yx4qi8FJaUHpBiLp7dQxBSy/eQNATyhOS33GfHxk4D0xutVWtfMJ5+MOEysOGMlUkEMabGtrWFZecdGfMdRMxD6GO3MI4TYIBCdl9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sE//gtC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sE//gtC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE61C4CEE8
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743786593;
	bh=g69NJx9Wer0Ii36qDuclON7KKwrKvkT4KXkrtwWgr0c=;
	h=To:Subject:From:Date:From;
	b=sE//gtC4LTQaZVjsBLLDSLrRo8bT5EmBCoNtXOf9HfkBEPh+clWB3r4tBXuGeeu50
	 UTrenL2HLeNjUXnIO07E54wtYBAxy+QQVMtznQGkUTcPGuVTGGwd5eKUpLSogKjOXv
	 54tMSdBnVBeDvyeMgMoatfJN6NfGUYRtTLq5nd6Dp/mXKc8nV1x9G5L3pZibXaGNof
	 sZvCm5rNmz+S+aLgwbK9p6iXeSuv6rUctVw9W8WT6OvymSlZpP2gHTdnJXmkpnPJ3T
	 ycuRhaAjv20Z/EElvs5Eysk9uw/u+l4+D0Bq4Q20rDwJ9WEXLNNHsB0XCVYWWR6tbs
	 TTkrVcd5zJp9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986DEC3601A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378659361.19602.4633190455572018086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a9e7c92519c224f1f756439e91b7e98f74a074383a313be4410bba111f6c35
Date: Fri, 04 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743786593
