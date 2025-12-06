Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBCB2E7F29
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765008774; cv=none; b=O7cpnesAquDdeF1cEZvOfor2y3wUuaPLrPRFrRfoeuTeFCT9trKOSZUfb3ODp6+8+dqjUTyunjnfDncgnkUQRCLLvuVpgiXQ1h3NDT6OtkWNnV7PbZlkV+ND5osDcdisOOYm1evtdGZFf6nGPefxZWaUochlWW1xeqBsINnIdAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765008774; c=relaxed/simple;
	bh=pbhfScwE5u9Hb32jwIW9dd4xn2tzj8uRO3VKbRP0vtk=;
	h=To:Subject:From:Message-Id:Date; b=evPhk+cZT9fg3c2AiDD9JeFzfJ8PLzRyJuJjjpONHK/mBTjyPv4m2uggf1JEf6EdPRdrMIvvaeCIMkNsMzP8fYN9GqAh17/E38OyRESbuzmbG08EBCg6OGG5LnsZZJox34XZS4C0XxCGuSf9pbncCPrvtRhApCk6nIVl6LDEd2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNuKApRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNuKApRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8428C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765008773;
	bh=pbhfScwE5u9Hb32jwIW9dd4xn2tzj8uRO3VKbRP0vtk=;
	h=To:Subject:From:Date:From;
	b=MNuKApRdC9hkKpjjuM3aQeFc1WHp2yrr5yVUysZHf055U0Q+2haUFkoHzdouvflDq
	 LbinKVieSgYZHMnXR6X8Lw6IzYftOxh1lZAeOJT6cBdEFKL9NRSGhTgAsVFVg948XI
	 QBUV6ER4YiQ5ag8fUQOSwp2gsRQ4ioSs2ibH0z8/7g8Hisa8fs2xV4BIVK29fKoWte
	 hcKc9eb+fQ+yE8vPamf/xB+xAMLEl0nXHDSJN/IhvzqFWNTyC6brYWbGU4FzCVPqv3
	 I/WQ/b5DksFA05Pf5DM5u97kuSyhoRQ+M99EtiegIhrIsezaODpJ4jSTx+HQEeNEpd
	 GI5OUDcWZemHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C71D374BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500877358.16766.2358390945519243087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea45fd2f1c1aa0c9268b383cb92e483373b4f6bae993de0214241cf7460b81e7
Date: Sat, 06 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765008773
