Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8571FB2
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717036463; cv=none; b=SZXq6I2i5EWm69Jrqu/j8Hmg8vNLbMH0PsGOh2K6rEC/v51wundRpD3GMny7mk/mhOkYzVYpwpsstAUi2NLP+DwX1pA1junENvKlwUf/71pd3j2S5XQlftRjN/o3RnCG4tNBh8mbD2K3zXhKepUT7hPFkrbFU31LqxPYm/WymPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717036463; c=relaxed/simple;
	bh=dUZHWJLUbJlVOreh7q/5b1Tr4yW1iHR+nJ5B35OBO2I=;
	h=To:Subject:From:Message-Id:Date; b=lfLqvk/iJ2OoCttuUMLEqaNrK04cuiFbNIpFIiPdehyBj8f+K27ODHWDPN7v34nt9aVDIE6mTZdu3bsvnqcQ0NK/+bYeMzfDXY0L7aUPz2e+TbZJXh6BH3KUe9vddaB4/FI6ppXwV+8rfEtsWSm+bDBGDyMlWUMCeU2TYg0SPpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcyZe+GF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcyZe+GF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DB8C116B1
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717036462;
	bh=dUZHWJLUbJlVOreh7q/5b1Tr4yW1iHR+nJ5B35OBO2I=;
	h=To:Subject:From:Date:From;
	b=LcyZe+GF76h90KaiUtNe+KQx9x6MDViusBdUPJgIdEzA6QM/ssB7E/DiWwuqktCTx
	 JNxPsEmVPsWKBkUARZcsmZ2HX3I66lcX9frw2Sr2+UF/nNCT4X+NO7ItdD75toIF2G
	 etWFkuoiZ+ErJjGcKcJayukZ7CCfLXz4+3OcVhi5+CIt9TEPOKHri2t1hDgTqOFcdF
	 TaorsNXnZ5wuAJQO13bWp1+KqoCz2FP1dpjMSZDwV9/l+y3fpw2aVsspldjLOHLCRo
	 ZWFMNomRnjidnBNhC1lErRPQalTcIukm0/CAClJEkYKxYLuNOI2TEPP2FVAuFDWwhV
	 pwP//l3urBFWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7A8C25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171703646276.18786.11423942212654493101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8b421616379142e6068859f7e9c810f5192c18a94a863573d77ad3b4b9fc61
Date: Thu, 30 May 2024 02:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717036462
