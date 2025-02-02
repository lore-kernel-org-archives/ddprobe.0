Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2A01DD872
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738503954; cv=none; b=MBl6yzr14eVpWoyuVYX/ZzgEHkPF7s22o0ZJ8ivk3Tbf+4BICYAs3qUf9ciNV8z8GwtxbZLKgeAhwtiT9rwkURGm/jo7uJi3o0gI2fQiVL58uq06xpffNrXfLj5RhgK5cRBMYdPPZi1rxC5X7WkaUcikFgh3hglv92QAMfWlY6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738503954; c=relaxed/simple;
	bh=KjqsD18S3mk2Lyds4+Trd8TcjIZtlFrKjqTI7hguj2s=;
	h=To:Subject:From:Message-Id:Date; b=MWRVKcdh2nkzNk2LPzbz1p5ZCOs7fB9zMzYywLhP/A2E4lFWi0zfEWecwKgB51M2QxVLWyOrXq4xAiM3KtROVXlkXo+3w3siR5fPsf2WHg8qLNZaijtSPwFA4AnR56YVWppaI0zMKg8dQUL4GChTMO2wh0CmXsADN1tQMEAfaqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/CRalXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/CRalXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72B1C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738503953;
	bh=KjqsD18S3mk2Lyds4+Trd8TcjIZtlFrKjqTI7hguj2s=;
	h=To:Subject:From:Date:From;
	b=S/CRalXdq9biiej9rQ+fKaNNYkSmmFb+unUVq3XynXJghW0ArHzlngPkOZ+WIz2/J
	 YjKagEzRTZ22ex8Vw09Q2yuLxLdP4vi9B/oDGhacM/pX5StUxJy0tn+S/65Bx30gNr
	 ZUuvoi/9ct9KuaDvED8Ax51WFjlQJVBHH/UO8PCAWvDdhINK+TVL01UImhVhyOQOop
	 Mly+cNPTi0hM2DorVuwqmsTW1rN4s8/vCE2XKEBuXAbQ9ra0mC/s908/A0kXdSjIeJ
	 GGWeHY8wG4e77HLy75T4QzbN2s1TzWsOEN9ZnCwh73opc1gARr1hacojTRObiAXFKP
	 lrBDDOFnGJ6gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9324CC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173850395359.15991.8044293999927495013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7257a6f640760e72dd8f75808e56268b1ed7d3f11e1451d1e6286ff7ec2d5cf5
Date: Sun, 02 Feb 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738503953
