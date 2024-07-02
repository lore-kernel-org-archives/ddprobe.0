Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ABF154449
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719915923; cv=none; b=cFz3tuZJszurMel0ydciUReK1gJTvm/EDDCseL52IY/lgTnIpuDmzpfsnFcv4g9Xsim/eqTa8XSqMJedeGHVl954SPSQLLXtaF3ASYA9ghA/MhM+VJjvmaB9WM54frx8KRsHdxH/Kz1b6uLjPeNF5+PTso05wxjlC5eQkpJjejA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719915923; c=relaxed/simple;
	bh=nbsPELUNd1dItzI6jNMykyG86AnHrkfCafGZc19djbw=;
	h=To:Subject:From:Message-Id:Date; b=csamJFcoLTNO++rXYPZGfuMzclYQsU0GNoGB8JK29FH37uVTAxPtkrfKRleTtabrsWQM4f9xXzhAonE68U9sm5AlOnCslSnFcWKsaB1AxzAyy3M53xHcFwyyaXf+SDhpyt3oiNc2vfu3mCd/5eVB65ABoJt8H2Pq2CiV7Kn+lFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoemKm0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoemKm0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E574EC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719915922;
	bh=nbsPELUNd1dItzI6jNMykyG86AnHrkfCafGZc19djbw=;
	h=To:Subject:From:Date:From;
	b=UoemKm0KYIzl/UCpqZv6+SK+B5ttPDUekdKCpiuwx75scrHtyOq3imLlOGOvM/oxj
	 AfbKX8CFWmfoU54H1twU84Qn6u6+QH3HCodCXZ2xJk9e9CkBPmzLuS3jwKM+YbjzWK
	 Q6EKiGVeNXeG9kstwVuo9GycnictbEYRYYSBXweDZMP6UHBj3aEXNry5fl7Xmyswk6
	 tveO1/IdNC6dkalOSEEKreQ+k48A8GnkowrdI5O8uOVaSRiKvcd+6hRh71oIXWofUT
	 RgfGogE/t9TAuKNTjZ50TeXlS9oaY5xXq/8yp6VHOznPHevHutJQ3QpikuPD6doXoh
	 Xsh+Fldyk89NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8253C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991592280.7758.483394824898607145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578b9ef1375e8e815f21c1a0e8cab8ef4b9f3e7a73cf023402c0d994709326e1
Date: Tue, 02 Jul 2024 10:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719915922
