Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCF32F2E
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726668354; cv=none; b=XblsrveEgAnzA2ilsKKYWfzzbe3KieQ7LC0kb2xi0SS7rMvE2lNimAlFtTONZuQhuzu0aMuUMSRB9aFU7+sY7k9rxRXohgA/cq2vtEMP4VvrGO1EORGYOah9POXQJso4VHDgLK7xInRcPFtwEZv/CswPA0y/w/DLMpk2YnyGq6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726668354; c=relaxed/simple;
	bh=YEdUHZaYzEj8GIllW+dvfGSal47naW+vA5m90H98574=;
	h=To:Subject:From:Message-Id:Date; b=rbW3wdtHzx49vOjAy/ZbYp+27i5PklZlehIsnkxqU36c+KCO3O2ULTPsCOF6KmLX0eaihowMuzBPFEKVhAvwym8bSwwMJniDo7Gdrr2e+8npNu7J7dseFfleyjoRgT795Ynw5F7tnhINqzGkLg7G6MPSVza+5UQ8JRXPPXLZ3yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fpq3ogo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fpq3ogo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53ABC4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726668353;
	bh=YEdUHZaYzEj8GIllW+dvfGSal47naW+vA5m90H98574=;
	h=To:Subject:From:Date:From;
	b=Fpq3ogo30OaaQx9YkRvgNIfYqxLzMPCwd2t93XD70TsUbVzdiIGnEyjCHAMhHJFE/
	 CossgsAsoQoxiP5oJegKS8qcDWi5dD8kaYBKYV7beID01pYXcxrpaNH2PXDRwqC1el
	 +JAUJjErAfs7t2K5q8ZIBLogT1dGPTg+DT4mvVKCZ/0aWc0hUl/MN4lsZHHx2GD2lc
	 5jcHiJFp1ZKnjIMDaLa+iSRF78o7KGNCdBWT2b4EJdaSD67q8jnGjYtlGarOTUqEpM
	 /R94uuYltRW83XaAVK+xo0Zr7m9GKsR/aUdXQCHGvOrJSGHb6Vk87+RNNsbc4IhsiM
	 4sE69SjgAcKJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A38CCD1AA
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666835360.11662.874130911750856137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560038740f86a19d06641fdd3cd74588ea9253f5fb5076a0bfbe3c7af4d14cf2
Date: Wed, 18 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726668353
