Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278BB4A3C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751258994; cv=none; b=ZjW79TnLVa820Q8F6xLFswomfilGJFQuJjz0avrhgOoB2etxQCmuZig1VncLJM4OmzLN6hAY02mp+4ZbnN5DLnZs+3+n6OWlgbn9kaPH/DNv0F6/WG99gjYhKbfB4Q12wVAebRIGSg47g9lD76edm/TQnHOYtcnsoD5h5TVHrJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751258994; c=relaxed/simple;
	bh=6qU0RPEmbnIQ7vqjy/q9TYLyz895XiQ5h2siikVgnY4=;
	h=To:Subject:From:Message-Id:Date; b=t9kVUOjCSCRT8EMP8JPXktRECwtX1u63/Nu3UzZ1DOvF64yADzE3wugtW7OqB91Xu7LRL3B4tno0R3mwCgulGB8/UFqi6B1uB/qxzQDqAOlLcCnd4E6GbDndh4Z1T9WmT0AocfBnk9A6VaOGgceYpgRxNKzCNW93EHjJOqeH8zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuJDwyAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuJDwyAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1956C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751258993;
	bh=6qU0RPEmbnIQ7vqjy/q9TYLyz895XiQ5h2siikVgnY4=;
	h=To:Subject:From:Date:From;
	b=NuJDwyAzGM941Q2UgfKHeB5NrLCXuE9oON9RAYPFUY8FG8/FRZUbeDLJOv63WV9rq
	 F+NJILor+e++XIlOpKC+U/WF+gwVM93EnBYgdyJhcZcY/TVnqJ8xX3KYhIOsilw0F1
	 MJvKHPw+Zj55XfdzM7g4lOapLSVAqO78PKSV88e35fJ8tK5wZGEyI+rqkSf/ZZ4c4q
	 1ygMjvfw98Bykn8d4Vi+aXgsKz38FS9L4AQb5wAvaE/Fm/up1BPOuD6rg9ayLg8eWk
	 A3T7bZEuA1fQsnxhP8a8eWvBhlA0PskKe1QRYtBfML3BsN1CQ+90X1YPN3PsSdArxL
	 4P5Cvaju3YGug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82BC7EE2A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125899358.22622.8582512458132888773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1777f854fe0882e0a0f256b4ef8ef23062e21431e91e01562c3cba6135e988a
Date: Mon, 30 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751258993
