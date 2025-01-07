Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DFF1DAC88
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736249754; cv=none; b=TiYC0RgmKp6A7Uv9PCS8yKR9AVqu1qoW+pjCfHYCk/YeZMzSh3TlI16b04nwrqKlGUvI5eBkaSlZBN6Whq87rPp+G4vAN05C7A0NbLS7EMe3PRtdX/wnyGrPYmkK6vZPWrj6sbuGPeI61ZAnsKYWg1a59GUuLN+tQR8yK0iuDf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736249754; c=relaxed/simple;
	bh=hUrY/B95EwQ3JWe3Tp1vRC7tUZJ2bKpP2ujoJSLLIn4=;
	h=To:Subject:From:Message-Id:Date; b=pKx8iOhZNrERuVWDeS3xdGPfNjxpHU6NA2QhPxNytcmfRK5ZieDTaa9kttAiWBFKsoYZB90fc9ZbLHkvRs/RAt/HzOKt11cPLMsUgEbe/+zaucxWcdtRijN4pJQ2c5QLKCwQ14805bRVjTwxmBmLAIcvSh2wZekhD7FDBNCzQSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tc5sbYhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tc5sbYhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A889BC4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736249753;
	bh=hUrY/B95EwQ3JWe3Tp1vRC7tUZJ2bKpP2ujoJSLLIn4=;
	h=To:Subject:From:Date:From;
	b=Tc5sbYhPJxtjCBauTxB2iyLgc4MIiSzxe9r9m+PzNNWTRHPR7Bc92T2eSFy8B3/LZ
	 M2wL77N+/9al3peF+xSnmQ0qhehEBb+tQOQOJhZtogcgGGOUE5XQR6Z1uKDiQ6LPtg
	 dNCG0ZxYnqC2JrTaZ7rylN7XCry2yudPX4TsQDXFueKUScOKFxIUHeQelEBZmGPT41
	 8RobPb1QbwlHbaOWjM5ne8C3kEGX9ThRtU4BbbIuID6mnTbWL8FIt/wF9YjnCwaTtP
	 zgWhB1HKWTdeQlNXyzBn5rmwS5IwWbO3wQyeCsaFeLp+YgqTxs68x3oQnx6OSG4EpG
	 T1R8krQKfWMFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954ECE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624975360.20227.12145524203855836854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52eedbc30c93aaec5e3fd257fb65b1c480382c8542df9d09bc2514e1de1259ba
Date: Tue, 07 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736249753
