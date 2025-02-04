Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB2320CCFF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738671354; cv=none; b=msrUSP8HhFsvjiaTwiFCcvPAR4flHd4XJF5y6HTSQh393vIw90AqWLyToF9C+9uidJk0grHPpMJN4ppckKptIwlI4aoUAttUcpOfpU38CNX09MiaCdPaE259mOkjPNLY+RQ3lUe24fHJmHNat9AYSxSRh4N1dmXnGh3mTGjMIhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738671354; c=relaxed/simple;
	bh=FSIcqixIQb/t44qIwaT5Re5dTlTBycoy6T7GC1Kno+w=;
	h=To:Subject:From:Message-Id:Date; b=bJrVp1zLao5JRkCn4NbFIW0vvFSO2h2HL5D6Vv+IIQ0BHgTp/TZhuP4riQcOPCdBZRaM8i6Tb0QuC4sO4Myptx8R8yx9dDBk8PSzGj4QI3cT4oS/Bzu2Jx6P9Cz09hJE/mKgECG2kJuGU69veRzdvou1BejlVkEjmSzkdbdTLCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TA47fgo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TA47fgo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA57C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738671353;
	bh=FSIcqixIQb/t44qIwaT5Re5dTlTBycoy6T7GC1Kno+w=;
	h=To:Subject:From:Date:From;
	b=TA47fgo+H8LmTCT2wY2G8gbfVGewwYBudtm6Oy3QCifD5PyBQNL3TbyqeAfOkG2Ul
	 Cn8MQu+iwfUh/+GRAztwWaKEqkLFtNM+0qbgBhqxb7/7PCP07PkhQGALByfsdh/ToL
	 +Hnzjkqmtk2C5VYi6Aq+cYxCdTScnWCsdQEIRY163dICHe5FwcIJcJfKJBQCSArrn4
	 g6jhpcjZldGCHqYOS8qG/iXaAq+OAluCEaHwz+kACzD5OgjdPJ6+GjUdf3c2Edx6gM
	 DtOcoY/GL33vQghoQ/dubB0LeQU738ZjgaCvJn2LSGf0UOShHUeRbZHzsS4bCU5T4F
	 uAztJR1/3G1Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97075C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867135359.17417.1252172399716206090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f41581cd9366dddeaee4934143dafae29e725b5d9a67adbc5410aa165820c2
Date: Tue, 04 Feb 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738671353
