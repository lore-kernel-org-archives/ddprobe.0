Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43409D515
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742772594; cv=none; b=dN7grJRzlu8nifGTzAB2xayE7FA3nJbwnfdyIeVt7TGnmQsjcR4OJ3H/++sR/4Rv+edKKfkJHwang60hanch0l2yIyUy0pzPWoqvMk6SIfRSzeoc9CtLJfH9xANvx7O80axXvU0qi04mPY+Y/o8csEy8Gf/FzlPrMeU5/x4h00A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742772594; c=relaxed/simple;
	bh=1gTKrcjip9ynoFE9s15fZhS00sCirczpKCS7x3cA9LU=;
	h=To:Subject:From:Message-Id:Date; b=rTmHa4Ypn/37sCjkR8dTI/wY4/HsWQvhG2dG5dMNi0gDrqmPM1J7m5G1FZhIRp5JtVnGOUa3HSTSXSJ0ZbpVRVaYY43r9ijJ3xee4uPIOi5dl5ymb055XmReLlMRxtwhodH3DsFoaakJRHmuWEY/1/wOqKk6mOBQpWiea/PmY4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYy2be4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYy2be4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF034C4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742772593;
	bh=1gTKrcjip9ynoFE9s15fZhS00sCirczpKCS7x3cA9LU=;
	h=To:Subject:From:Date:From;
	b=UYy2be4IMVe2exuiNQD234kTTJ5/qYd1x63y7I2wuQmRc/RW5YqOlV4DfuSF1OXFg
	 p3qn08nrSxcuttYn/N4zx8UKrAWLipxt7tyNNKf2MlKuTG8GEbzEUIga0Ui8QUhCXb
	 g1uYHPz658+WG/gSqcqovtS+MlTzsKKmcmXq/DomoFxwWfAHphdY5obUffBr3AnR1i
	 CSDRHdoG75iVHJbrW0xN2xusfplrPEWKuKwfYiaD+eIfy9mLdCF+L3ABbSXxEmG/x9
	 o2YIfckEtbSCJIKWTKo0tdlu1S8BaPTx6KX9lmOMoXacSGkgQxvdPI0yhbz5wcT5fJ
	 WJR0PQhvzokgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99981C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277259362.19944.17432116740340339505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0052298567b836c42a940eab1e6a9533bd1c3e82b677d65fa4cb500a3083b8
Date: Sun, 23 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742772593
