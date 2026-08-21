Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530B62BE621
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787296234; cv=none; b=QDVSrbEjy+sbDseRqPAS2IyKo4Cw/brTs6pBw86C4JPoW1sdU2813g/BRBN10LJmTRCFFKeprhAGMxrVZHE+ci8UKwtqOrCJTKV7UO5JC4q0/toCsTV4IN0g7it+PKNoRakgV69mSGF8pYocFjOrAIzRKflVKRmrsSQFYx01F+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787296234; c=relaxed/simple;
	bh=ke02TPPV4UO5khPIBY9ZLD9KrihKOdhu/nHBjk1QvUk=;
	h=To:Subject:From:Message-Id:Date; b=iTsYQmwBH+sXaPR8b1tspZiEdzzOqq5CdxtCrJzfisf8D4Kmmml6GJKXbtDaXo1RsNCUmd5kCuQW3yNky2Q/5GIRIzV+AdZhKXfCowJFj/f+ai/pR5uxj775dXuZfZnudG9ax+42a7SV92UnD1gpFG/BIPm9dhgJxIagz8bchjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXzl7zwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXzl7zwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88ADC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787296233;
	bh=ke02TPPV4UO5khPIBY9ZLD9KrihKOdhu/nHBjk1QvUk=;
	h=To:Subject:From:Date:From;
	b=eXzl7zwX26y999uZWFZkP16ZSu3A16TxLZ0M3eh9z7fePqUhSwg6NnxyPJ5rGPsmx
	 jdzyWVj1i87csT5/6Ff2HhOooTOvOpBYJte/YvMBUDTUSqtgUiWUSoFq5+Ro6pENCu
	 31TMKlDlP0u0h8iC6kuLUOprWyZS7fjn3hswkd5TyM/Qgxjuph8cnjrlQ4LvwUF/Mt
	 mV6BMqT/HHmJZi+IOUJgTXGCoW8ejRJhLXsvuLgBvICTWMKuvI9xljKkfQmnHu/RRs
	 6doJTHkYczyeL8QVyvEhwOf6y7KwCHMf796lCZY07aGuOMMIvbukPKwDxpcwJeG6c+
	 2Hai6k/LioV3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB32C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729623369.29708.11950192619770559305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33522767c7a90719736a730b399c36a876a9ebb3e865773d77a288e2c9a91e6
Date: Fri, 21 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787296233
