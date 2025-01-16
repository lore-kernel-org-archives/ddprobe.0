Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ADF1DE2B9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737037554; cv=none; b=sP9+/wsMgrJeKBAnpAQLslE15EJvOMi79Q/5FBvExjeuuf7njnDQDH0wCCLtuU30lxgxFSk8+XL6qCVvp6u/+omGwka3b/n6ErX+n4lVefyjtqOb2fg33wxI+QS9UkIKx26MhI3Y++iI3gTFBoKx79Ea2MmzPxsfIz/h8IYa2+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737037554; c=relaxed/simple;
	bh=Y4C+PRgawwHT0nqn+pvfS3fKdyY6RocSSMEIRNzzBp4=;
	h=To:Subject:From:Message-Id:Date; b=ueZOTAtZd5xwYlweO45Cuxkh9Yh5xCu78YezWDfwH7+rUlOrxoFdXoUgILDDxTAWstt3fEhQ7FoxKoVh/Fdz+er+9W1pwW/aS04o1vcNV0byyM3X3N46VeyVYUlwPTHGcpj4RFAye2FZz0FjdjdZXUseZCkTno7uiBMv2iUdlFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1BgHXF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1BgHXF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D25C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737037553;
	bh=Y4C+PRgawwHT0nqn+pvfS3fKdyY6RocSSMEIRNzzBp4=;
	h=To:Subject:From:Date:From;
	b=d1BgHXF0+J3yib8axZXDGFqZb2ZVrZPslVvsMTHI1V2tm2RTagfj6GXUqQFbalSSs
	 3qLS49PibNmNL2Wdzpra3/s17QnImTTD1BpOjBnAnPjv8Jh5IutvTcJtnb9lvdMWn4
	 k6RjPLMNtvmxljFjD3+2jm2g0c5rF+HxhkhOfG48SN2OaRdYERSPye877WYSrtGSL0
	 QJSL82cyeT1SNB9wpbmumU6O4oHhEXZVHeH/0tWj5oPny9ljrixnmp0GR17e6HUe/h
	 NqUefhHcXdEU2g6Tp8+t/eeE/LvMboJOvBkAn/KGSRPaEPXNKTjwVbRmbFVfA25+j8
	 yK72pIh02jpYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9575CC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703755360.21128.8058328801018369506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4323a54b7a19908330ed11832b68d2429c70e321532e089090e3ad2e356ac85e
Date: Thu, 16 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737037553
