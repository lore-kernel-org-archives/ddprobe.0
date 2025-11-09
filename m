Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296A47483
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762679394; cv=none; b=hwDqUtNrBdOlGWTxLE0FE2R4zTF+3IdikgrA4trWNNOLCJ0agj0nud+X/AVXsfZKOV2OJf9e6+CjdBKW4jPmt2E99mtRwicNvo33bE6kgvvG7cb+afzGf+8BFAQf6BBgF3ADM1rkR6oXOUAyIGPBa4Y3ivhEjhCScoZJd8AdGhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762679394; c=relaxed/simple;
	bh=FhTO1MMuQP04SHOWzk44ZbYCzy3gNGf+VZ8Ghl1VGv4=;
	h=To:Subject:From:Message-Id:Date; b=ep4cNbmE3tOJPysrKCp/AJyeIA7QgaKEHWmRt3RQdYKEZWR1ugXnOTnuyt2CNMdY4GFvXLhs8oHlqlBaJTyuQnN7Yjp4LOW8xPkKv/Y5cZ8Q9LGnfvHQf29aR8lD6kzklifvid8v27AZXON/o+zHxEbCljeuPcQ0X8SARYm+QtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtCuNvmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtCuNvmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE10C2BC87
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762679393;
	bh=FhTO1MMuQP04SHOWzk44ZbYCzy3gNGf+VZ8Ghl1VGv4=;
	h=To:Subject:From:Date:From;
	b=gtCuNvmArK/0yvr5nnLM0IoyUIWjUS1WAdvv/3wATHTCuc9QubhGFgXSrmsFOZM8t
	 idonpFA+AcUx9f/DsfinTehqT1EvEgOXII/nASc1Vje26ED1pQXVa42iZ6jJBkpqCj
	 lqGe61ZXe8r1YCe7giCPcwU7FDoqxkf9gwt/O8wzzr4htF3lYqvgJBr2IXF72z8c5l
	 9kjpOytnIqGiGpL1RHg2wNjbA0KFarCnS2vc2FQ3D+v+5WOv36JOAdj7F8ky6RCT0A
	 giDX2ALQGGawr/Mcc3KCcfd/pqcZpSvl3dQKwntDMhktwRilYxpbOfiLZByVdnk8xK
	 JX0VE6FhyDgEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9472CCCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267939357.17539.1120832590410981245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3d56f38932b47e4eebdd36f36e015802ba9fdd228ed4e8cd311365320e6809
Date: Sun, 09 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762679393
