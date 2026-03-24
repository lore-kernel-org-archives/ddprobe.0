Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E2D39F18F
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774372494; cv=none; b=ej5Pdc5UWhB44/SROAUxCSq+31TO7WFUxEpHGfFCZBZhbjkmCqv7cYUSVm8EP0d5SGVctmDXiNmBa/l6pI7ZtHPiZ086/WKJYAdkJYfbHpxSw0olipeOPWkLBp5ZSPkoJJvUXOGd/AH9Fm3tFvsXXKHAmtr3ofYrWDCsJ/qbRm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774372494; c=relaxed/simple;
	bh=GGYV78b1PJhwRdaliKVtaWGMQpof2x1nXFLwSBrasOc=;
	h=To:Subject:From:Message-Id:Date; b=ot/vQvZyz/J2tnBuSG6fxY0Y6CbVlvQCGwD43qYEeCbnhaaAR6nVdFOjNcjbvatJEdf8lfbSIIKg1myRuf73/T1jlKnENMeZshwlbB8ElZeWcWuN1IXz4K+9zeFuqR5VRnUL76Tm17yr+kymwlj9yomFat0vuFzvM8LPyAc4ALk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jke0zna2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jke0zna2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB952C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774372493;
	bh=GGYV78b1PJhwRdaliKVtaWGMQpof2x1nXFLwSBrasOc=;
	h=To:Subject:From:Date:From;
	b=Jke0zna2lxmRrVhat7LIyfIwudErlCRLnB4sHjhb8eI9ipHGG+KoBZtXd4no+Tlyh
	 rKyeG9Nk4eLekxBhEOCKNm63H5r08IcpaFdkwe6eW9cidAMNDVpkhqjtSA34nwRIJ0
	 xOpwS3zAkOM1IgOOdvH1AMuCaSDLscWehFFGgjNM8LPLCUNBzQTkOiyy0XD0oqMrlI
	 VAii73vyEIWB/x6/wz7DgwDYLZJyCKLD6lyxRY1SiZ2p9iUc3K+62kJIBp9AEtqYTp
	 SoVxZ3k19L2xyR3910W3pclthoK/SrIdF6eAlnQBc9UvdOeSSOVf1cEpJm6xvLClso
	 7MngvmZyyZEQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9576FE9A756
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437249360.17769.14677936549128851795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8fd25efdf4af3f4887b55bcadd6f556480e1150699884f01a28b8e8c5e276c4
Date: Tue, 24 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774372493
