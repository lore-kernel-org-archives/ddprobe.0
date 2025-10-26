Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88D32E92DD
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761490194; cv=none; b=nyaEVVH6YLgeaX0xIFz2zD61QHecYfEjdVMLTvAd7PHUwHH2PIkCbnOYN1jggZZlG/MdifwXph/WHdsNomorxlohCc8sntNIHeoUrnkofF19DIcPuHfwcd55a0XFrYJEl0If3hMJj1BZ2svkySvxOQ7ox2izqtVlnJ1HcR7PKdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761490194; c=relaxed/simple;
	bh=vAvq39m4ueWjH9BdSFeX4VFcaBdFtw04Q5a6BlONRGA=;
	h=To:Subject:From:Message-Id:Date; b=KjjEOQOb8cz5OmUM99chpWvVOItqSGMxl+OGSzuMTm6tOqKupwZkBkFKkxz2fHAaHNRBpjgIJoLU5PfAQBXSX7r031A7Lj151jrA9Ho+NTOeZ9HRaNZVJyuEh8mfwAuXVnrDnDjo/UNua02+OV51A5FmjT42Kc4MqbWAHt+fk0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MW9pAstJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MW9pAstJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6447C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761490193;
	bh=vAvq39m4ueWjH9BdSFeX4VFcaBdFtw04Q5a6BlONRGA=;
	h=To:Subject:From:Date:From;
	b=MW9pAstJ8uzbfHWtEnHWDMZBpJubO4YMR7ZyDQ19m77CdDqb7jz9IbqUDpvfHNz0Y
	 feP2uHd5ADIEUJHLMaDcvgbY5ofuTD/TMaN25Yc1hy6ve92FtqBUWwG/tRzfuFLrn/
	 FRX0R7V/MvYaclZveiW8qBUKjaFtIEKEIdDRVM8rrlofQk8paN8fZrjRF0rTtKa461
	 k1cvY1KQAPXJURiAr/OYkfO9QjLBFnwBEhFtjO4OKDBuuTZJRF/qVIBwq0BEd9TvBH
	 Xl9CIoKef2drfsjezWveXxyHv8rnH2sFGMjaFhOIuPa2YJbRdb+vXAtqAvVFld8jVo
	 IEZVrO6jOrn5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D3CCCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149019358.8258.12131015881881172053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6af0eb9008f4d457de4bf73a8012bf58ae8e2ae684268fe426133cf40c81207
Date: Sun, 26 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761490193
