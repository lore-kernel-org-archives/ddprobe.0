Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1485543AA4
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768414434; cv=none; b=IHSmdmfO3xEpBUDlGETSFHSZ0EHqFkqLiiN+jb0G2wDkdTOm22t6Unfx0GY4nFlPDDUihDHnJLGAcVpVxsn8yx6blDjGYTr19eRRAyqwlOyS6LgybPw1NcCgbI8+vWgPgslKjaK38x2v3GBglIkWZcQAz/MYAXdYZSG/vk+rGyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768414434; c=relaxed/simple;
	bh=6xiG/UrZLH2t5Vtf+wA3PHmBmJGGUmtnK1o0jyMGSps=;
	h=To:Subject:From:Message-Id:Date; b=SdIe8tzwN0AJR+6qwvNHx1OpCBhpCbv9siIMoN4MrqnPPnKDpHrl75j0jahLPVCvl/qin7WuPBRrLXi8iuzVBl01AJZG4SJNt8qJgWw5SGWwY5wj+vyjsIYWRkjQqQbKvf+y3fv0i0abzb7rcJWreGnDaKrzfjLFWwl8gYTsxdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtBqPxv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtBqPxv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5289C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768414433;
	bh=6xiG/UrZLH2t5Vtf+wA3PHmBmJGGUmtnK1o0jyMGSps=;
	h=To:Subject:From:Date:From;
	b=QtBqPxv9IjfDbIkb/Kvay64Q2ZmKyDqrevq8UP1u8QQF8o7fk6tcE/wJK1teEdghC
	 dKoPOaCkwZENe20W1SD21xMXn1WlQmpH7rdUHWfTm3NJbsk6K3F4hyUW9PC2ybJWsp
	 vBm2qQhcdSVBaCgcxAX5IDvXKbpnm//r8YDrmwVAHWYAigR6/07oiG5IVaAx+fndtz
	 TY5zsAGNi/8qN7HU2DCYA4oOEJcAcI8HfTh5FO5p9p9t966xVI+scoZ9WnR6z5ayOb
	 cAHHIaFC4G0iX4bQOZ0hBRcjUq/OBbjhclw2d0b4PHZQulqeGZEQr2/kWJMdgWWGxi
	 As7M/r8kyvDgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9687FD39003
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841443360.19589.1856514545405419741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078fe8a6feb2b0ade39ac595c0b038bfb7a76cb1d548a0b39dccba328f380abb
Date: Wed, 14 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768414433
