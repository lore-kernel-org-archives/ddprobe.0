Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F3D1BE871
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762045194; cv=none; b=SW7B0wmQ/IKYrvcbgAUBkGGS6FfNx+BmXlAHmQyqZhYBsVGIbN3EKuap+o2uOaxo1F0uEM8W1ZUv19ELo0+/PeB2FUL75jc9XoqAZixpTwQaql6qTzSgpdkllAvx5OCKUiOBERQjsmQ868bx9W14+neBL9Ek7V9VrkFoQBteVYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762045194; c=relaxed/simple;
	bh=pdunu5ZfmBEgRy/D9k0HOxFzvihIsXxL9YGBQtw0EVM=;
	h=To:Subject:From:Message-Id:Date; b=cwPwd0zv8VwJMUnChLBDqdPcE+6flToh+GpHQ8VZ+4DIAl8T+BcS0H/7DHPPv1V2nBi259A8/oY62MLtp9czBn/F2Nau7vz7l4wWzEFnXchLmck6OjyXcKB0gFjnRZ3mALYRB1X/mBuW8GFPey2+V5fInmeTqKUjeZNEIecNwxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIKGCoWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIKGCoWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBA1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762045193;
	bh=pdunu5ZfmBEgRy/D9k0HOxFzvihIsXxL9YGBQtw0EVM=;
	h=To:Subject:From:Date:From;
	b=GIKGCoWnaAKQ6Y+0Lzf2OejKNa361YDmeKAHhDbpJnPT5QuHZRTBO9MYYTK4YpJVG
	 x8TWsw/IAL0CvDQNJZGA/gTyNOcWrBXxOctahJfLrPi8eG6kgqcaaIqrqFhqHChGQD
	 l+CDTJVPferYvqgf/4sI4g0bei49/HZz4alWV9cXBCmN5PUzYSU5LArMHdXERia29A
	 9nTc7Jc3KTLoJd6Tc9fV+R6UCCWT3KqTlSnmkSSQpcbUHR/UFaPA/+9NDqllwVe5/2
	 Ee4Adk99qXkGmpElmK5+XCR8K30hs3xsLiMSiCV4XqaRhHoqNnEpV6VjNF4FpHNeLi
	 6cvlqepFpYWSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F22CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204519358.14632.11174140293827034109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3fb631c902ff59bc4883fe7878093026ca1710ee9a01e5372d59fd4e803740
Date: Sun, 02 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762045193
