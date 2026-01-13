Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFA52D5C7A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768317834; cv=none; b=fBFRy41qwAXQ7VcdacMlbfztBgZ2w/PFQ40sjd2sBSUGgbaeBeezUP4tq2aK0vyr9I8srzhpZlldxc0o0slzehKUwH+LzvfY9NtH2SmLH5z6THBRblpSi/dEif89+oPG2y7318OPJ8FSsd5LoMKxm/qfedsdI2L9tNZtJwM1mpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768317834; c=relaxed/simple;
	bh=tZ7h320gf3oLIXOoOFRR1saGvJXLIRM4rGT3rZl3eBQ=;
	h=To:Subject:From:Message-Id:Date; b=AuLoTWmJDvw4owSVApcR85XcrXN+ErQixP3GZoeepKkT9aTbkVrDEjpHD2RT7IrkVmFDvtgewvUh70U7CKkTaHfLHJh4qh3T9708lvhfv3uDPzLvft+BQv8kUdCOH81JHFz06KmDk+Qz3hd3zilTrgVAPG7dIIRZkcAqLJCn0QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWhAV9i9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWhAV9i9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC27C19422
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768317833;
	bh=tZ7h320gf3oLIXOoOFRR1saGvJXLIRM4rGT3rZl3eBQ=;
	h=To:Subject:From:Date:From;
	b=nWhAV9i9hHZV3nEAwIny1l2mxiiWwgBviYjVO6ngE5uvabO+72Vqh5Lp6Qs7p36wX
	 xI5mmEhDi/+feWSw0Iqg0T7KS8oXDRcPic8vomIvRO5c9k6lWy3OK1jwzzdnjfJIMg
	 N+XRuLOckNPHGpgDk0XGGEdNAEabDS5juxVtgED6v2Bw+WW22mqhcooUsUbsw3JhOO
	 c+VqASOPxTCmUxiRnX2IYzjjChQBX/utrz6nxIMNv8SfEUdUWqxcM9wZtjZNI6cPB2
	 yC9O9t7R66f7zJ4PSb/Yevyjrq4zOrX/foFJxxo/1j9iEASQuNmayfvsgn7Q6sFYah
	 Ga4DeHh+kVrsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFCD2F332
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831783358.3945.15498573904979098571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dcfce7213ae26622801c83e0d08ce13476c35770b617333238c2f33eb9a9b2
Date: Tue, 13 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768317833
