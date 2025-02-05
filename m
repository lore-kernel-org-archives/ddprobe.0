Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA7B81ACA
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738737954; cv=none; b=nDohOodExbQiLd/jcY7icGHHorEQbQI+DFTuQlHH9YvBWOxN1hFprG8s9hCA+8qT3YnGxCmvG/wIiE6738LnFI1c9vSMOrnb290EfUJr5KUrk2BKyHlowFv9ngaDfH8sZH4eVxmsUzgCJ/REc2qA4fQU23s1MA4UZ0I1OSVArBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738737954; c=relaxed/simple;
	bh=19BP8UQEYwXnEgmdzHiZ0QuttHGGQd4jObN9gF+Wef8=;
	h=To:Subject:From:Message-Id:Date; b=uSbBPNUlA36o4n7Qy0Gf6qD5GWdS77xIIRrkNV/YRYbiMxC4fukZgD1SMAao7Xm/5O3zMsouM2wwK/LjNLbH8rxDevJmmg/sUvwhnurQKPnwSc43VuZgtU1CrGoeBDYErek9XXy96D8AkND6r6BZYcTG06pLPJzqKl22NnYZuJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoJyPTPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoJyPTPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0F0C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738737953;
	bh=19BP8UQEYwXnEgmdzHiZ0QuttHGGQd4jObN9gF+Wef8=;
	h=To:Subject:From:Date:From;
	b=aoJyPTPUzMD3rwA+k7Q+prahXmOF0XH02QrofSaLpUBdsVC8sB+NbmY/cthbUr7/O
	 UuS1K9DtVbCV+TpiEjVvhffdLkRrTL4Y87PWwSl8/4b2wyP1sWEa8K0INlqfcIi0W5
	 UclbdadYDwIH51fOoqJ8zTyRrlPGYWozVUW0tnNSCMSnYjgLHaazxINAlkKJFvFeSS
	 G2ylr/BixHjkzU1T0Ryd/5X2IpmsztGU3Lmb7alDQa0EScZKs40w8NRikrf3j9m08b
	 aySvaPQi322MrY+OH3LPXmPiJ5mXv9qrPvs8KSJVubMKxu59EVrcjeMx9trKSx1ZJ8
	 pSRv7ZQW9QaXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97985C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173873795361.17413.15138897416710178817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcc6d3c4c24726497dc316d9c08be875695746ca299c83761b69267d6e1c4bb
Date: Wed, 05 Feb 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738737953
