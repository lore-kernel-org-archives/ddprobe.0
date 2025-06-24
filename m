Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F86E182BC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750782595; cv=none; b=U5RMDNxEBltzC7WXYrGDkuc/65+h7+zcqOnde3y52LA4n8ozn0u14W/nINahVblZwRdjZ3nP5xuVDLTvcHZHT4ESYtPZX+xcntmw+xzubI+YVy2ohsef7jurRYkEHEmZ8W6ftwYrLV6B8KxEb+GtG4YapVakSnaUti7yXNyweg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750782595; c=relaxed/simple;
	bh=iirzYCupocpyC1wo+4+UvdRkknMKju0qba/mDWCjRWE=;
	h=To:Subject:From:Message-Id:Date; b=Zton+js3ySfLiLwfnxadWE7tuR07S0HW2tuBZwf2H0VW+qNEe5oI/PUkoMhxsXdaw0Opox0VwGYHTAuN+Xa1+aMGZob8nJWtVNAsVyWTn7DAr720sSTcPEhbySHClW9NXKDZzkgbLPDPCMUTrIqufQB5HwkFihUMa9FxSqi9zxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMTrscaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMTrscaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8B3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750782593;
	bh=iirzYCupocpyC1wo+4+UvdRkknMKju0qba/mDWCjRWE=;
	h=To:Subject:From:Date:From;
	b=jMTrscaPkTq3t6ejgVewUWefllUSRrGpeXKpADPs3KNqMN/G0d4YeifV4xKp6t+BB
	 5ljZWOjguIcqgJt4v1v48hd7C0VxHzeVym/+/UpfSC7oTGiTLHrK1i0JwNYnrbeRCk
	 1jc1osOVA0NZCryClXgvx+nttyYDU7ghJYixANcrMmQmlzxLpybLkfcEAwm44Ow7QP
	 PtB/jQZuPWa8AlTTsoQR1XIyBHjTZizwR1reoN9c8hyCnV6MbiY0PaQVv7Iycjcqig
	 Y6hb4p/1gyQXlewhqCLywXphqKRxFEez/E9LqDPKX8Vix4zx1HCbljwiH60UKAYOOf
	 1XTMTO5NBbXOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C0C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078259357.16437.6863647599135085357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1e71e6e5b6b587c813e32578158e389efe20ac41b001c0b1b71049b1201ecb
Date: Tue, 24 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750782593
