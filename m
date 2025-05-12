Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4377F1C84DE
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747068594; cv=none; b=ZO90poYV5bkat0p+rP2DfzSBd5IBG07tVbxITiajJ3O4HVpoLCsejoBE3foIgUUumhmZzb27PZtbPSqRg3oPzt4vhDFAa7R7O2iUMbA4XZHnco5dafJ++4AolajZnwwJjs5jv0+iXEuvUJ7voKk8KfDNpZYafA58uDCE5mFXLk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747068594; c=relaxed/simple;
	bh=Dh1f4HfWm/U6Lmk7WZ6Llg8Dfl2BzaQpmX1RsokdFyM=;
	h=To:Subject:From:Message-Id:Date; b=R8QhR7bezdCr5tnmfYJYsqZtQbqrduu+Vwv+f+uWS6nhYAYKMnAXwmPl+XblGiRCbV8JGeOyXu2AgSqyT/45+LzSOA0Tf1pdoJ8c5GBqFycwJNV54QbivWEGIWjkDY1YENKRnGx17J0jpFhotWEuSqDcMPDWrkJ7I//Cg4BwIs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDzjRUrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDzjRUrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9CEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747068593;
	bh=Dh1f4HfWm/U6Lmk7WZ6Llg8Dfl2BzaQpmX1RsokdFyM=;
	h=To:Subject:From:Date:From;
	b=iDzjRUrzCF8Pccqk5ELf2cBxEB1k7c1UexxIE/c7IzTF8yko6cAwqvVp4XiXW+aXb
	 As6B1pAv1qV0GCuCTU8iy4TTBcxSDIih1XPeQCuewEpe6OCtpNg1ow6oh1A35CLXEp
	 nWWS137oWEtq2DiHBOdoOUwCZr9k11XsB7s+lHCZDugwJopG1ZIsF0nAYhz1X6w9OD
	 jX8cXRwIbhJ3Gk95kiQlQMSt44/Eb/8aiNdYXsyTACdT4sApXIdvhPf7FxprLJTKAx
	 JFHQHQclAOXH+5jrEpYO/r3LBR9XpPVPsyNIh2yfNFB+WOPgK4PCgTvtOvAJvrwnyu
	 91S59AjvgTj2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90828C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706859358.8302.14531212911215879049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8dd2fbfd6e7c9208105fec2fdfc6c0a969716be874c9c567948db3ce331810
Date: Mon, 12 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747068593
