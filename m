Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332453F0AB8
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777378055; cv=none; b=XX2i6g5tWUChCC+q43UScEZXWDpq+ulcrDDuIOpt23Lqw57ZFD6fH+HXuI7FrNvQXZ8nHo0D77XR7KMdYMduwx1ke/yVicDFPixOcFt5h14fkzBDqJyUFnTxrjHyQ6MHnqVZaxiU1b2hY/5kQn7o5m/ea/yKBkNmHMbHWbpdWRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777378055; c=relaxed/simple;
	bh=DS5FvV464fPj4hSaK14G3tCVnd83T9AbnhM3V7bzTO0=;
	h=To:Subject:From:Message-Id:Date; b=UdJ+3Z7Hla6NzReb+tFBVWUmji9/GI83uE3nvpMJBZQ2WU2MbuQ8ruLfV2nsxVy1+5PJFDwwsL4ORANxPuWyp3z0M1Xh8Dw9PFz+KdZFPLlFOTkAo9xYndeIyM/Xa4wnceK+CGXYlQqOpv6B9gCCvsSv2zAHVKSTQgJ2XIiwHuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNETCRKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNETCRKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B801FC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777378053;
	bh=DS5FvV464fPj4hSaK14G3tCVnd83T9AbnhM3V7bzTO0=;
	h=To:Subject:From:Date:From;
	b=PNETCRKPkMVDSo5Vl/yCsdm2O7Q5cV1V0g7lZmVDXoM1ymHLVXrZpZE/cLshUr3EE
	 ekTHnzrd9v9W1UxUHOuAcN1xcO2BwwhvpGehkh79ICvYBmn+rQBWCPHkyi3GL8at3w
	 DRnrnub9jeps25MSRd0uvkJqHT11JhC7haTX9BnvQVfHOymTPar+Geg1DYaJ4N3WEz
	 28ff+G7WkrqNA+Yu3KiWGp/1J1jV4gdKWI+jZp+oyzsUJftxgY9XFJkxeHLmFoKyLA
	 MMJ5lgDawb8MQvCGt1t1fgUpUjKm3K1zXCqKGZxtpzac6g+FV08y75TaSVAFCAb3SQ
	 s5KhbkSy2jjmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A4FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737805368.5281.13807763219478933793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11f89118224c19b046787f284ef6ec450d89062f094c2f3e939c6339a20b695
Date: Tue, 28 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777378053
