Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2507A3A1A27
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787355634; cv=none; b=IYiT9l4ygjmOn9NHbA+5SYWhKRsItFPTW4MYIePv7EkpoSVD5EHzLCwzrNJX4B9kQpsnZ/vveV+TNOiHv+IB2Ij32yym/3RzIZ+Z5nhQFhqKwtSV7nVtBy4aP2hLQw2NwF0fCa/yKPMA63hmcAab/O51Sd7EIrFKt7u03/DRCvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787355634; c=relaxed/simple;
	bh=dIxVTxcx9yHPYmXWZKpZ8g7RA3M6/oXhSRn/TfK2tAY=;
	h=To:Subject:From:Message-Id:Date; b=T9VPMGiv1alyTR4BlAXM6MreTf4ymqjxztpzcuz88HOnmnKxZDolQGpPcPTy7GfKyOcR6QIwHQoyKqX7U4sa8HruWDCcq1RomPkt1NSMrLdHhb8pPC7WwxNUIEXj/y1YnKgeHJIgAYwZkZRt/aFDobEVoZ8fls8GC8BfyQyFrxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4vxNrkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4vxNrkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33DFC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787355633;
	bh=dIxVTxcx9yHPYmXWZKpZ8g7RA3M6/oXhSRn/TfK2tAY=;
	h=To:Subject:From:Date:From;
	b=C4vxNrkcGDeU9CzUjJcuP8n/2eYxFE4DZciMfFsACqF2L6+XLaisPv7APz442d7wg
	 +nSdhetOcq8L04XOAIGo7EK+sTnbXOYuKQmS3Ujg9+8GLS0utfp600JF9AZ5OVrqNq
	 ts71Y9Yp5nNeP6y+RzJZZ94tCoC9qw+XsVemJ3nEuJfBJgqZ2uUTC0Ta896M3+vXAt
	 x43EdxEfi4KTx8g7KOHEqvXwId9wRiq8pum7j3JARQrwJ8HLLzjwwbEWr3lch9+L3q
	 CVtYHbw2BhL5qd3llnmLNAf0AWLmnlxlcASNeE1wrj8ud+aTXovWjmAwQr7s/Nckw2
	 YuwaqAY5X62Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C1C5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735563368.26066.18168397059144321517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9a85cd2e8914ad5b86598bd17882946a37ea6004983d3848936870bcf23a6f
Date: Fri, 21 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787355633
