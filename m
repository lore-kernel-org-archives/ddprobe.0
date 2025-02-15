Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351DE19C569
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739610535; cv=none; b=JAOHpEtqsqvc9Ip9NhFiBYv6Ja6eu1z/SjvGU2I4XlqXgTC+bRwKVHIvHBOMH3LdaBwr1ZqBsyd6pW2mmnAUhzW/HtcJ7po1qHzX7v4/Wye28kfzVffVJQS1ZlRj/2EvZlhnC6QOFfEM5LucDPFlq8kZxfRA6Oo4v7RVwTA0IjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739610535; c=relaxed/simple;
	bh=nVbISBEi4y46lyxwk0MsmObfVU4l3vLcaERzt4Mh6Fk=;
	h=To:Subject:From:Message-Id:Date; b=gyu2NzlndXhfz3TqZijAASMNoQu6HFlJ1LfGFeCruAcxpjMjEE2jVJ6fO4IfK5ZLQhjdmUTZ+6Iy10C9imd/i5oN4be795MFOJDHq0oLQh6M2w89NZsDHJ2HsITKIv6L8kwWtnC+YQDC61apDKTCr17iRN6DoIVm26ZBduFANjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqpqpkER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqpqpkER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08D1C4CEE8
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739610533;
	bh=nVbISBEi4y46lyxwk0MsmObfVU4l3vLcaERzt4Mh6Fk=;
	h=To:Subject:From:Date:From;
	b=DqpqpkERrGs8VY+y4H/YsY6xYrBnJ/hZUiKUseUrEqpYPKvjDahxR9qzUelKpo0PG
	 ficn4sk/Mheh6aO/v0rQAsddN+jufyx+eXIkJYuGgyrAnub9BXDpZcUXAmMniN/jNU
	 4eFLcp+Ice+FLaHLvvcOMm21iyES4FSfqw/qwxIKfiybAqGNv47YgOwqi93hhsrcoR
	 EtIlkVZpufZONl/hD5Q5l25bML3z90bl+ZLdB2INZIAflWbS2kTqw40RP9K9FBk0nw
	 23Y7yFtAgcL/klANd8aYG+HNX3E9nMtCwVCU4If9BXjAX2p0B/4oN6zSQG1KuoyrTg
	 hUtLsxWrMSqdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984CFC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173961053358.10126.14866643313709829783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb2d2bec8a6dc890e4b29f19854baa57b251e5f934f4c37873e2715948b7c37
Date: Sat, 15 Feb 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739610533
