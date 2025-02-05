Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567B81DE4D3
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738791954; cv=none; b=tr2nRk+3I2li36X5RNIqqC7yRp5+DPlB3HSyBLUnR9rpvUpoKfrsJREVbjD/fYi8VhawvmeWhXuojpJK21xhxHsHzEBkp+gqaIBecyAIDRlrYOTkyP4TqG58RhuJYq9kSH7HQ23P5me2b3iWnjo9l4H/0dOj9vJ2Q0YWlkCxM3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738791954; c=relaxed/simple;
	bh=lvOh4c9Z3FLQ5lKJ/VTjnlMlHtiqs/r1bwo1qqiXtsQ=;
	h=To:Subject:From:Message-Id:Date; b=m8jvn9vfh3acK45UM0Ko2fe+SJuqBTx47mwStx1pSNbbje8lpgjkDtyvGSDJCYdGYtfTZYyCHRKko3ZKF/6SMsyTS8nviHJ1hCdy4F9+xmPmR11fukW4bvZNxHqBjxK1WOFt4JfbDXvi6/MTHTKlA25gOPFVWKlwjqlD7ng9bZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTZvqd1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTZvqd1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B41C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738791953;
	bh=lvOh4c9Z3FLQ5lKJ/VTjnlMlHtiqs/r1bwo1qqiXtsQ=;
	h=To:Subject:From:Date:From;
	b=bTZvqd1rI7oOg0yYxN/NUFuNptmmgDOpPPkbwJzOvMd83IKHYvcUgXcx9OzkR/K6O
	 FheHfvMS/iu37KQu7Q/2aA+bKmi7LgmT9cbOVDzMG5c8oe4yEDdH+w1ZMpb9AfHqC3
	 6oij/42uT+ZCgTdZOzfDVEeCI3B/7TM5Nml8D+DtruF1C2p98QSf4mSpS4GPRr6zZX
	 XzI+FKLC159ONMyI/INYVFhQqncqD/k6pLIJ6XhrmRQj47/SYNRVF6sPicEGu4pTeR
	 FHd4g4UAWMUIri5QmvlsohylPh6w5i02mXYZkkuF1QrpGoC0KAc3mzByAHglW2JM+S
	 4Is5EiWhNPrWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4096C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879195364.17080.11695070512183636619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f11ea89fa59ba80bb812907a49cc83c1ed781a843d68ac84ce7c6aaf8a841c4
Date: Wed, 05 Feb 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738791953
