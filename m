Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A6D39B4AA
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770248634; cv=none; b=RgDko1XyneMg8J50t3RUcLijhcvp6AvzsQZNSGfbHO4+DEFtlA5zyMnZTfShLzTS363J2PqNuvGxYG6qxyGLhGZ81USzY/wiTcsGEYih/daejQpFlfCrT98N04wc1sk8yRCNSmUQu5lg/I8zWRTPdzpYfN+JvVjq9XYCbExjbV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770248634; c=relaxed/simple;
	bh=Rm045QBBNyGNmwzmKf/Dk9plBklLRBZx9MKUYdoG9Aw=;
	h=To:Subject:From:Message-Id:Date; b=SYbIiimLhh+5hNgP2fUFDv3UdWJZkLe2i9Tdd7zo/ilivsPAYLcD+SR5d8KqUosEKIVHwlEUFe1SVzkojLIENbsiA5raXS+IH8Yg+ioRspPfGLTNneMbIJIn7y7wqmjCK/rqLcbkX4ybVXsWby3wX/0Q2EIjrTlWcByTYKAI+Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYUzPSiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYUzPSiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB083C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770248633;
	bh=Rm045QBBNyGNmwzmKf/Dk9plBklLRBZx9MKUYdoG9Aw=;
	h=To:Subject:From:Date:From;
	b=dYUzPSiwYJL0tudG2zPmF1fE4ZebdL3G7tIlYBsoG3NE4R54kMQKUGXBL0hp7jkw2
	 Qhn30nT1JhmaSEWRkRjX0YCEJYa/+FWamIUncL3RF9/QeE21F0fvUmdfEHwZYSUNA+
	 X01pA8NnYZx1gNef18sHENbSPZ28oajS/hSaSFvSQTVFzcffn7PIcjZznR970BaLyE
	 a8VLvu0wxmGDl5Hn9aKNccopCv2WNakr1cJePYFx/UclwGsRnWjQQ+fbsWgrAtPaZE
	 hubESV34fmg/0manJy8/z0eUAOLAP7oqvvy/pgkKYftwplGCa++cO+G38Y+0cQ7PN7
	 hBjYb8RN0WEyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DCFEA794C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024863360.26902.8028831362139647416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa172dd3ab25667cb6dcda3cb37a2b7bf83662dd3167b341a2dd95219e828cd9
Date: Wed, 04 Feb 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770248633
