Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DC61FA6
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710559697; cv=none; b=RIgMRYCKtffO9D7Q86qoD1fGkeRlVWvQmxiOFVACvD/o/+3vvhPiHsaxKzczX6/dZLCTeWI7FNLhm0Fx+h3SAjMp0kp0qvCG4gi0chDs6zGl0qtiPTIUL2YJ+2gB0qEP57yofXJTwFPzelRY1flQsl99ow66zN8Q0No9xx1h6Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710559697; c=relaxed/simple;
	bh=lggzvCKvkdBco5uozds3Gbd7jKDIuZ356yZtqLqd5HE=;
	h=To:Subject:From:Message-Id:Date; b=SQoZ8yPj6mDayQniSHvUl9PDlD6NEH6wnsKzQkW9k+sCPlMk9RHWnnAEw3vh+EKrHbpw25/5TZDxkx34EL5qR0i8AvJtYknevtQZKyt6QxBzrxzm1j05Uhkq1cps0KkZy/m6zsCfzmvQM4gAMMQUidYbFmDx5WwzDO9DzCxrtqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ9GJVWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ9GJVWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774ACC433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710559696;
	bh=lggzvCKvkdBco5uozds3Gbd7jKDIuZ356yZtqLqd5HE=;
	h=To:Subject:From:Date:From;
	b=XZ9GJVWFkKrAkX4+gpVTN930TvL9QkEWCpEqiFx1FYX26Z6QlxylW64qt+rXuQGWQ
	 03/cfbPIS1P2R3u2FjOokDukN47XZ/1qnH2D6O7K5nFuoPhtqL0eWMP6b36x+SWWNE
	 GycG7ekFpon3cmXADHeJ4s2woy4ZrrN3UqKuW7zVEccccNj6I9+A2rgGQpR3nvlEpl
	 fZmPM8+if5R9NMV92ceFDOVNOy171AcT/X43nPDXBzKl8/WOJcHSzpBpYG97QB4GRu
	 aCdjjcycPkyAxzSs91fHv9SkyDNwnlpCi3cbrCuBt91fKx0n5or8UEwYOT1gbV7vIr
	 y7Uh2EZKRP2nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D7BC54E67
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171055969636.3583.15591693091183892276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1491b0edde64305f8de271ef34535ea9d6e55c5a657472bfdd3510edfd92e3af
Date: Sat, 16 Mar 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710559696
