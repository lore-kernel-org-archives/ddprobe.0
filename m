Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516D12627EC
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764205374; cv=none; b=krTIC+9pskKl33IUYmazJVsp6Rn6h3URd4w+cfuhLNiGV99BRgPF55z+dfsMVn3w++rC8OV36dwLgnGy+P4otprGEtIQ3Fy6Q/HPMNF48/uW/ZoTJ2FOwANi8DDp0K8XwDCqifGBPE1XphThSpSt6YF9HQS7EIJjJ8oKks/NeXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764205374; c=relaxed/simple;
	bh=V5It/ukt0R98iISPF6kwMXHsoFLQnrqH1iUqiZz6jHU=;
	h=To:Subject:From:Message-Id:Date; b=Gv9Fi6tTZURF8DYvn71D9gQv4jeSvtLsptnZIrSDxCoSFoNvg6spxXxwCp5ia4eY9UYAAtVQqIYTRyiwVfCO61avBHmHIJwfZEx6zZ47TazoomooRtReBAdxkZ9A5VzohGeuB7dHebne3O6584hyE9voIgWVQwdFpsxKiTp6FWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8pnqGTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8pnqGTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8235C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764205373;
	bh=V5It/ukt0R98iISPF6kwMXHsoFLQnrqH1iUqiZz6jHU=;
	h=To:Subject:From:Date:From;
	b=R8pnqGTeasQPMWVuH3dSqAqckThqdwMZWjiVqbRJOkHfdQ+4LR0dzZLmEkPFvf3xg
	 rBlNL1CVnlMTfT5MG/Q7IP5uJ5TaBE8mgBkeVRd1RFiKNtyqkWIBH72KaKgM2Fipip
	 SRvj8XUyd+qInxYKhgq8p1oyPVeUZLAUon1sX9k1nX3GqA/hwnVv0CMd2OmuyWK4T7
	 0BCJT1CZ/yEVskYdu7Ao/nsLK7KjTfJ92E2rQUrvbiHfFJmve0OKzvL0FwVIC+v5iK
	 jVGumoxe31wZydFtKtxfi6M/1JJXWWQbdvlEMMxcvunZfenm5BQ25HjS5fw50PjYKA
	 38tvlnqes98iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F35D116E3
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420537365.22650.7536557089761162678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2f260c8e3286782e5d3dd7525d9f11eedd4839d635ba0b1068f83914573b75
Date: Thu, 27 Nov 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764205373
