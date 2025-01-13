Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1F01CAA63
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736784354; cv=none; b=bloR7N4RmXzx5aBSnPk9novADSFJQVMhSa+0BZRAhy7xkUeAJGM00rJyz1ZBb5akDoXwPGWvsqM4QtJGUJTNymnRzyMUa5bb9EP9a7+iYpNXrn6FVKtbRM4lEM4fuFI0vxikIbV6eLx7Jv0g7y+Qmk8e2TVySuli/9lLtqxOD8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736784354; c=relaxed/simple;
	bh=5dhRbqElsCcOrIvKqXdtY7M0HKt2WFVAz/wyzwo1kYE=;
	h=To:Subject:From:Message-Id:Date; b=IS/nnIUCxw8RAYTWLBESs6DCbjf9S9qP34tyYIi2vgLlC/N83EMw5J2tIxwLD2JxOtmGLstmrnrTf9bQ2DR2ycy2Ic0gy3r8bg2edVIdY5aAm3JrC03dZ5QkbxxeRDvto0PwaOwVWeml/d23hdjHk9r1SXqD1HMhHi7NMQYcFNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZH9wTPbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZH9wTPbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA30C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736784353;
	bh=5dhRbqElsCcOrIvKqXdtY7M0HKt2WFVAz/wyzwo1kYE=;
	h=To:Subject:From:Date:From;
	b=ZH9wTPbF+Y5b9mWnoNXCl6ETTMF0VialAsIRkQXlug6s43GORxJ3jFjAnW33tlAxz
	 NznR7rMYnBI8S9bL6wir9ZgfQgea5ghiHGskMjdz2IMMAHNp0Dj4yT4CPtAkNJL8rw
	 OAMFMCEgcnJlHFDTGWaqgSwBcxaxA6WkkcV1des/OgKmyzovliExpsar9g+R+ogxvg
	 LlwU5ur1WYTXmBCsR4i19X2U3BRFAob7T4WCwgxEbvSqZTFCzSRy9LgQAvBrMB6z3v
	 UPjui6Y7RBBXkOa82/K+l/NNxh05O52X+mHGrSUddqvrd01jjBU2+DGXwkMJ2tHcyA
	 +DDhh5WavVLKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A459C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678435362.14321.11833257133316234433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63c4f340b6810221cf935c84f8f24ce927d8041c4f08973dc762a60b0c15518
Date: Mon, 13 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736784353
