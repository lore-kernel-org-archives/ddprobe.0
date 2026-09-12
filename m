Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0C34BEE3C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789173034; cv=none; b=KtPmZFJfwvIR5Icj41hbn8gsDtgPp5PMzpB/BxqdAxVR1YrU28TIzNXZlVS4tvdkS8A2xRBXnlzHIruLHyMKyUMybPCL1oH+qkvnZQ+h4vvWXNlVmlxDeRa0YaeX8JFvWEz6genOlvhCOzHhZ7tiaO5yem6COZIuXESyS9gEMB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789173034; c=relaxed/simple;
	bh=LZpeSDrGQBw6GHSTNA82xUcw2pLSYsQ4PVEdetf7fIY=;
	h=To:Subject:From:Message-Id:Date; b=JXtz1z2krHFn6T9UE56UtcH+VplTpo4AedeyQH53XH1xaEBPKW1i1tPo12v3Vg3E9TE+xiI3B05wSa/TOvutU6Kns0dhz5/FYAStRQA8MNyBagMahAbU4Ul5hWVlwSdz8ZtXQBbAm3n8+mdc5UXCLGvgCI+oxRDBaAD1SLzjs9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qT1EehAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qT1EehAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39F5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789173033;
	bh=LZpeSDrGQBw6GHSTNA82xUcw2pLSYsQ4PVEdetf7fIY=;
	h=To:Subject:From:Date:From;
	b=qT1EehAAdWlFZYp95N5Eb6fjJ5o6xQRRtFdqnRQzn306xOBpDSDGc6LlCiFEwovO7
	 Q0Q8U2Y4jjRK72oXr8ouOmPBKEppxXCXxC4Crku6+wS9llqeWAP8mXgEuqdyYB0foD
	 9szdQ9T6dq9nZWay4ClSKLRGd8rFQyC/eKhd4h5iDiZNWOdKy5pSRfS5K4spLWepWD
	 ZdBI+muZYEihT+bgWsT0OYo0a//KDOsjSf8Ao0GdODgFFqPmzC4/EK61ZK8eTvhYPW
	 Nerq9xqSkP3j/Mx1ollPCYQ+S3IHLH1SxU2v2BZoEwjexD9qISB3MV6OjqfCVjXjbl
	 Y6jNgn648ollw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7EAC88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917303368.6091.2641215716476481016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec3d03216f5b42e310f7d1ea539d5159ca550b76038e6172b290846daf1efe9
Date: Sat, 12 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789173033
