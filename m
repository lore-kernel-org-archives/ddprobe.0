Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9038F2E7635
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770910494; cv=none; b=IYX6Fh+ukNf6y85KxegOUxZjrixp6BKk4vTaAmcKatoSO3fhXFInabB+THkdiGkmyi4ZSjzM6hnAime+/EqSLix+EVqTOeAdw1c2z72G8lK0rSBx4ATaKUM0C3GvF3aZ+VHKbYSrFQ59uFAkOLCTxqxGGQhGUwth+M+Q/x5HRy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770910494; c=relaxed/simple;
	bh=fQ96iivvprvCedjxa8UKnFn3vQdbofNTa7wh/yErUog=;
	h=To:Subject:From:Message-Id:Date; b=TPFT5T/rDIlYe2zqsWjYuI1+LPUaH4Cye3dAhVxQkwDGveCocfwvZjYjBryzfIonsEK8dj8SDiVayaLQ+WtV1rQw5NFuGjpy30hgDi+QXuBmkad8oL0LpWYwm9j7kTPpNYx2lwRH67q0pf7Ex9cI+h749VUxeb1tohnK+G5U/Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8fgkvwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8fgkvwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2467DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770910494;
	bh=fQ96iivvprvCedjxa8UKnFn3vQdbofNTa7wh/yErUog=;
	h=To:Subject:From:Date:From;
	b=o8fgkvwiKGckCt6txqdCRLxHu8BMI0GbdmLX++UBj4LST2pl3OquBVLprEjeIjdIT
	 Yb1sFiSdZWnZG+nlFJlKrh3djnKUFS3xlrIryNd6IZEi+6oD2l9M27JeEDLznsLCln
	 g+2Bmkggtb3tVzDO+UIhqg1BDKODgm8zFRQCEYn6Rwf1ZE864T0ELQihP+c7MhLILK
	 aAJaHSY1+57KB6p0wto5tecHaXse8LZsLxxOqHxF3xBra+1+Hqs1yotxGO5dbr1Y+j
	 raz11FEc1iAV7zdZPxS8F1J+S7VQri82IbVJJ8qGuFwCDIHMfPFVNms/PaJnpgiiOE
	 SgzBxQh0jMwWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D60CCEE3695
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091049386.21613.12675452767071478690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c979b6b1b2ad465d5773d983fe2dcfe273f97357ca6b94b33a5f4207838a51
Date: Thu, 12 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770910493
