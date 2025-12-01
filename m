Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256E02459E7
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764618774; cv=none; b=mYH91fsJNJBXop9wawTVU6Xb96okvrKe4+nLFIxDdwHepMqfMOZ4dwcBxRvEVprQm2UuT9Ha97q58c6G+UNqIyf06m1mv7prmVus+FIJJvcEQlKTgj473fV/IJgQRrA3hN5+OJmF+OtI0Erpqf1+Ci5anwg1Wlg/b/z8fLFPnpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764618774; c=relaxed/simple;
	bh=6NiykUCDayondHaawmZrTmpcvZd61Vh3l/ez6uNv/I4=;
	h=To:Subject:From:Message-Id:Date; b=ovzOedtTMu0nXQeJJnZkJBt+sKIyKH+gCIYIGuKMF30uZRxX0ySKxbvLrMufj2r7cWtH1Km7zaw9b4zv0nyYNI1o5cv7CTXV8jinle99jbqdLtsfxj9DfCgFWI5AUcfGf4JOmp2GhOvYxLSE1FYfXkcnIw91Dx/ppEn9dq/sRBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwwi7jic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwwi7jic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FEEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764618773;
	bh=6NiykUCDayondHaawmZrTmpcvZd61Vh3l/ez6uNv/I4=;
	h=To:Subject:From:Date:From;
	b=lwwi7jicoRjbEDIjIVLuH6dkfBXx1X4vv0D+E48PmVEg095VQWIrSx8nmiCPipIdj
	 QT2lU3alJUuEAmN95T/9jQsdqB3rv5/CCx6pEtsk0uJMQm3oIu3s2KTxtp9BtKMvEP
	 +u8cBiE/tGvZZ5VfBDJpPjTYgo1VrW2dfepOS5r2RTMHVS/J7A+30DnL6Gt2OQe5wY
	 KaW0DPN9u4F0i++6521jqkwa73ozskKiGOYL8qP4r1idd0zm2IIYMon8ZfKmUZBiH1
	 VuIhdiArUs62rryHfLiR6iSK10cMlm/ZL8i50PN6MxUOIcrG6HsqnAp74gh71/bDWE
	 DKLc0NSPvbddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FF9D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461877360.3860.13205087084581126900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65280c73b72b4f157905c26275c1204af0f09017bcedd67d73affd04ab952218
Date: Mon, 01 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764618773
