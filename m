Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBF03358B0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778611234; cv=none; b=HgPHKQWC00yMq8Pp6digzaAEHllgdCm7POlAaOnsxNSgyua+BZddmcsLdJolNwBfo2VTbdINXsJH9ynu8TUJuZ9txG2Z/virAYq2JDDtZkxallfj3c7aKbLVLCTJVjzRLXxQ5Mxy5A/GWC+RB9CVIe+axQses9T5wdcvv27VvJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778611234; c=relaxed/simple;
	bh=69S1XJglam95vnBv7hnuaqQPq3YKVzVkW+LsW3keWPw=;
	h=To:Subject:From:Message-Id:Date; b=eGz5PNAN4BZhVNINqQ0Td4lHFjq9hSyjDKD/Q6OaGKdcBQ6m3ThgKGhuceVEACTlOHbKzIoY9JUBcqqRKO3DGrV63vwJWhBga9TLvve+4v4NqrBBhxiVG0E1nmIaCFv0wBaZLRoBu8DOdK0bet0go2xCifSfQ6lAwJ5BJwQnRNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGKeU5Oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGKeU5Oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED3AC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778611233;
	bh=69S1XJglam95vnBv7hnuaqQPq3YKVzVkW+LsW3keWPw=;
	h=To:Subject:From:Date:From;
	b=WGKeU5OyVHKLXNagv7aOnacaNXBzZf9ZCau4+PLpmSiO9MNm9UI7k3Fyob1cltXN3
	 0lfR9l5BgzB8WJ3MSXabuTF/H9SaQTw7woit0fv1bFVWQU+Kl8xdHkLW+qdxoHT/BT
	 CRd4QTssimNMfH+dNhIUcRIge+x6+QK80HPNXD9Facu1CNn8ePNL8+E5LEwuCl1Rbk
	 eqYnkl3zhRJ+iFlcx63lIVD3K34xddcblk0e+qTrZ7dAqLXZ8NaROZtclwpQW50PhW
	 qsfse/jkiYT7z/OAbqkBsgGXChejzc57c9nMskBChpPWb/YcnbTS78rXb2+n5L2s6v
	 z3M7lV/8VmmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC392CD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861123369.11011.14488083260656227811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1630cb50588ef0308f447e2a7dcf5f81af76bf6a4a1447f96dec3c00bda2dd59
Date: Tue, 12 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778611233
