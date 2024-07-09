Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699DB5FB8A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720558583; cv=none; b=hlsYKfHM5ckqaDLRe/OfLksn6myUg2+7PbzrRbi0XwKVE5X7WUvohABRBLW21OAqTZAGl6Cc+9FO9PZ6IyRt8P2Bc8q/9LIyMrd5/NKE6srEiA6+Cn31hW5hdKbXAeBTHPX1iovqg2jKTW9/6hjA73O6b0t0tPWwcvB8yUotNv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720558583; c=relaxed/simple;
	bh=0m6Io+ulvi+INDB/G+BtIB6LttQSDTJlmqLf0+sGtGw=;
	h=To:Subject:From:Message-Id:Date; b=M2UPvgIfsBY8FYTMwyzSGRhETEN9roqQXf6GnEpebko7ZwetaH1aFWOFRPpy8zaYlUcwfrasazeqtnCJKLq5nOWZhjVbAST0EBCoBuV0EAfZCM9U7nc0zCwjs8BrI4RMM1C2f/bB52Ve0BvHM0Ex/kEscBpSEC8RJ8M1Wq9te6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOfnkWi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOfnkWi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC65EC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720558583;
	bh=0m6Io+ulvi+INDB/G+BtIB6LttQSDTJlmqLf0+sGtGw=;
	h=To:Subject:From:Date:From;
	b=NOfnkWi0CqudFVDCNA6dzXDT6bzkmSUDsHn0Pem7NXSZdb8nW2NxzO1H2SQrg1P8r
	 ajKH4Wo4WwudOzC8iIuRIUqwi+VJDEh+64jqrpTeYk/vZqjmPXqV9L3p/uvjJCj3Hh
	 MZGm3u44L1BUEg3uE7JnqobI3vtWwgDmh57sRM1BpRaBt7Rw44Dm3s30km4dHS9tqk
	 Y76fjXxEsdWrsbMfbJkXJRnYXOarQKJWk7oCB0sQM5Bl9oPmjmIfZmQFE8C1Bf4k8s
	 NnmjleMk0xi/v0dRkQi4RsHQEyHPoWmf8wINOWlOrNZh8eRw8UPJVcJKtaWCbR6pjy
	 SDVafvKDvQcQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D54BAC3DA42
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055858285.8185.11683604851592143196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1def42c6c255ad544a1f665cb0e1f5b3223cb0e30c6a1d561f79ffc81e1633e
Date: Tue, 09 Jul 2024 20:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720558582
