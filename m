Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377FE19883C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737026154; cv=none; b=TA8a2sDKPmWFBxrQUs0AcesAYHdKNcZWELnh9aux8YaItEJiUyX7Zkj/4fKOu3QY3kOWf57TVeM32bxCQbVx6RlNHKfyEg6czFausNP1+yRJhnFTFMHM3cVvVpM+V7k9hRqExQokHC3lkjq8xXub+2rDkh1roPfXirxnESBv5wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737026154; c=relaxed/simple;
	bh=Qe8gDKEWwH/FBCi8qNCEoNm3ByBptWA1m5mlgZRPcaI=;
	h=To:Subject:From:Message-Id:Date; b=bZUTj0CJI6uT2iFmmLZ/b7h5MNV9Eqgu21tjiv+eyt4G1pBajDGjr493UfXkpoRGXDpo1TmzOf2yeB/hcrSTajgROQ4pmVnYzwjNsqtQ6ohzNIhpzb7PRSijt9vFC6OazwfBA1eG9bNuZq0/YtSfDMiidtBmOkocd5lEttmAflI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiYZgesE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiYZgesE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8E4C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737026153;
	bh=Qe8gDKEWwH/FBCi8qNCEoNm3ByBptWA1m5mlgZRPcaI=;
	h=To:Subject:From:Date:From;
	b=CiYZgesEQkbpd7CafOEE9NGHoa7qF8GfbOZxtAovPPhPULiKZheVOrTiTiKuqWhxl
	 2N/F6eN+SzGScpN1qFay5jYzyHitVwkscfyuFNoYbWrCNt+LNSaq9G7Xu90xac8p+n
	 WXOWavn56PsgGrbPYc59sm9hFkvlwZVDJnKSg6IszG+NrybqULUfaqjL1dejni/DAV
	 NvgiRffXjkw0QyPXmBz0+POSnkNRcH7nUxW92irqwOikYMr9uZlKQMQpldFaMK1ZBK
	 c3ZvZ/aOUPNEyaGI3Lw0K3HLZLNYG8D+wBoM1u5NXiIxp/Wd20cRX5CbXj2V+omVDK
	 m5HEXmHhXlRsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A17C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702615360.32644.8084461834289699042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa896d5298516056b230afdb25f1129391babe0499e549ff39b18e18764e61f
Date: Thu, 16 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737026153
