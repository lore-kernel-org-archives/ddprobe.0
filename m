Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311B5261595
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739532534; cv=none; b=PMGmwSh578V4NOQybYJI6kS165kIIBPx3kGi9WbFRSWY7kk0EldM4F51LsElVt9LY0OVSLlxAc3CvhGXZ+FPFiX2kRumpqP7HgEJ85ciAAC1dPjAKq7v8t4PoUhK73dAi0jHZAwjnfCVEDK+fobTVZ2YdcxKzeNkjCYG7GNt9Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739532534; c=relaxed/simple;
	bh=T9xf8v8lPHRJIAI6tlWr1gZPFQluuv4tz9mlCWNJL2Q=;
	h=To:Subject:From:Message-Id:Date; b=qHBuk/sp69302T5nNq5qOcEHVsJWoF+msCkg/Y5S9n7Km9xUx2ejSGLIN9v70uEdXVN4uv8AlbMEug7Q+rSF2s4z9HDj+f4NAbUfhXcGc23l8uVSFSc4zZoxhcfLNqJxtNEJHfKU3M2a3s9wXjwjFyExWxMBNKyXjhrmUuoiVRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFphfSN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFphfSN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A1EC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739532533;
	bh=T9xf8v8lPHRJIAI6tlWr1gZPFQluuv4tz9mlCWNJL2Q=;
	h=To:Subject:From:Date:From;
	b=QFphfSN71yWhbCXYsHdO9UVgL5QE8SQHOBdghpks1oNQXiH/09DqD3n5TY9OjnT8e
	 friNAqP6KTpph5ojNSBNfH66xYgBKx2cvnW0BelQfITeRa4Jze1Azf3Zxlzko2YVvR
	 1nyu7yFr8RlSd+3+jYxxYObYlxnJULJscXbzYKbkWZpdAgaa6Mw0xQNL1M/DHRqbB6
	 VJ3PXL/eD4pMtnXegCZiu3M4uiU0BDxqjAU5JsC9HOlWtOtqDEer7PezfhGlHHiPsA
	 h89HrIaAQUML0PTgap9Z1z7/TZgKM17kdwutATlDd57qolRwvcMtKpGONn3CzsJ7nl
	 QYptAXYDjs7PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955DAC021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173953253359.28938.17099626554525031902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9021bc6a04909e415f85ec3c9a1ad336c4cc9003488d6520f320bab1e04a7d
Date: Fri, 14 Feb 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739532533
