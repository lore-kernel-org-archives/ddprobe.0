Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E790354BC8
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707817097; cv=none; b=lKSPaIt66edzHniYKxZCAugWTlEzW9m9STGN/Nfpxf5q6H5QNTiEMVX+erofFfVr5GGqLUgIeOiDwzY4DrPDAKd/qK+WFwdvhPA3ATiubIxgcQkKdiWhO60XZyzpAd5Nbfpt7+rUOeF/bAqGjVgAMyuxWLIKuzxYXQ8n1VCZVjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707817097; c=relaxed/simple;
	bh=GDBA5OanyKSy2SfuygzqQC8e9ja76EBLCOWhDR4bwSs=;
	h=To:Subject:From:Message-Id:Date; b=qrvNptuugtJxA6lbAo1gEbNUU4eJEuEXKmeXFaNhzbqP7PkeTZW6pnrCDgH1eitE0vdAB6Xo75pHZax3hMwvJ5zMR2YV1tH0TaIgCz/k6Oueq+n8tnz+9D7qpgHwCi+roSllT5qF/UJdO3jtlEqHVLgXooXXSZvPLdNmx3k6Lxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UysvSDr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UysvSDr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750BDC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707817096;
	bh=GDBA5OanyKSy2SfuygzqQC8e9ja76EBLCOWhDR4bwSs=;
	h=To:Subject:From:Date:From;
	b=UysvSDr297DHk3ucLnENvOGJSsaL2mXznkg/OVjG2O1fvArlUKuJ5yG7gprqLdy44
	 PAMNKWfsoBRYfUFZmhDxNm9OAu4DLeqJAE4K20hit+QYScW856BZaaFPgI/IbgUP3y
	 80YsufSZS1V/gt0lmXRjUwiBgm3pvwwL5dvEIT22/INAiM2aPgOd5GCYlRP2tPLurw
	 9hLywNDSKqJNfN3D+jvI04Or/iMe91mWWLzm7w3ZZv4tU4j/IPBjokwTC9gA+74Nq4
	 PfLaNsNlzjoMK+UzG0Gwx+cx6laYV6BTkFQyfPcfv8G4j+qiew7d4OVfG9LSRocJEG
	 3W0SDEHPeRKRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B65FC48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170781709636.22218.10729696018529071132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff3f4bfb68e65ed2e73614fcbafa05bdf63e33662d1700b40d3c80a3690dcac
Date: Tue, 13 Feb 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707817096
