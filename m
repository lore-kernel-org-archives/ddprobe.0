Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED0832B13A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782255994; cv=none; b=gksyfYMGXU0dYiXf1i193nozSDUtsnmU5EELYPQIBiD6s7TiFqmAtjRbz6YJ6tCZtU6Tu1UnyIwAZlzQ0tMedCTMDfA5X3LpmfuYYR3DFQ52P0sEb4KOVyNfbbhAeVhomkblqwB2Rp8uqd7P7urVv4zq4ZE9ZNwZthWx8+Lx22w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782255994; c=relaxed/simple;
	bh=gMK2ofIvyZq3XR0ciM6058Wb3JU25REpWstrbPT2FDo=;
	h=To:Subject:From:Message-Id:Date; b=lsxgPpvi32nerE/q0TdZp9RgB9HcFdv83KW5yUjoUBe2ThuTQl9Agqluu8MAXjRLpNgEUNy/oiN3V4d00POmjAobh+1sNOKKy6AW8dggDiDQk6N6Y10RoTDmAu/QknIYZoxdIrT2FQCMO2NIFDxS7Zd1SwJ2wHpXrt3ZhTu60Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCqIvwOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCqIvwOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87ACC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782255993;
	bh=gMK2ofIvyZq3XR0ciM6058Wb3JU25REpWstrbPT2FDo=;
	h=To:Subject:From:Date:From;
	b=rCqIvwOiybU0h9Dx3CzVD85V4wbgNiOS+OxaALtP1VmdGdIq1g+aSycz78mn3iEjq
	 F6ldUWi/ZdVWx98VQ50MLtK5M2nAoPdmGhMZ3a2C9LYKkw+UwLVxzKeg1hjz8V+1vv
	 hB/mGKQJfxVsr6VPqfzBUgV//ejKN5c3VUf+StilApSnjNq91SB+5k59hWva2B0fLL
	 K6S14cI13vMz4U3aLjq2aHnESyErovTbgfvy/NxnS8z+vNOhzospaYnc4YUmv7qGjE
	 tNAib4ZMj0HCW3Yo9QASTZQvSXQQ1c57fjL6xlhEZ+R+NFEBrVGtFNLvFauYdni8x9
	 81uZTyeiWjX3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5D8CDB479
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225599368.15373.2160660680975056948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a9c89f661f6e856f9db680fba74672fa876c9fa34238477586cda7f17727e2
Date: Tue, 23 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782255993
