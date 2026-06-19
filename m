Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE4C1E5B63
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781876794; cv=none; b=Wfdj41ITjyOhz0zxkEU91kvB6xRTePKtD+vC33aCyfY5wNhPAdWdp3WDVYVGMDCm4nKZ3V9+iLmM3csvtDgLm6uxib9F8IYqrvmvsknXKbJKp4l2rJPQIYWuvoilmFL7saR/nDdNhjjoTU0uRJnD1Ik30xJjYJcENEdrB5KHTDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781876794; c=relaxed/simple;
	bh=ovXmoD7Rd3aqmbfG3tChU9NSfNcQE6WBbut/JZ28fqE=;
	h=To:Subject:From:Message-Id:Date; b=R0PJa5rb3Lixogm1pZmtDC3Cy/vKzZiiQU8F1ha92GB5kjcoz6woXI5utgfZQ1/VI+qpjO/cYEq2onQkoWOu3x6BdOt7ySmtsgAClhjmw/iJhwxK5FDr72v7adP2QajqVPLA2uxfdIOxCDoO9p1cP+CUip9LMToaqY6RdRsgBjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuZxuXGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuZxuXGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D418FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781876793;
	bh=ovXmoD7Rd3aqmbfG3tChU9NSfNcQE6WBbut/JZ28fqE=;
	h=To:Subject:From:Date:From;
	b=IuZxuXGb64TBKBq1VS+Ro36FRk/1CnFlwrjKpQCVHkc4+nvCWUFPA5V+pQ+3d43f8
	 diCPc1iAhSLpxBBboFUex6eESnGADiJX9zv68JN8mKCR/zGs0J2AmIdYGaGSHTatsI
	 149qoFLXCeDPifYfUG0nNFGX+wVtRF0734dZ2lObJyP2gckZGLWvobnFOTOtZLXHo5
	 MvP92n8HCQef5RSI5bsNKBUusnV6TCCesCZtxnpyLVQh3HBudRdAzC4z4xMIuUkfxe
	 Re7qaLVAA5dGa435l2ztD1Jk93xi54/9eJfldtINdqLz7AqJ837QvvfzZhf/DRPHgD
	 XnX4iWPglFqNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0701CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187679371.19385.14097961797490897098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f667c2ae2800a36c04065dd5b6a6ec374eb5b079b427fe8f058e4e7ad5989d9
Date: Fri, 19 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781876793
