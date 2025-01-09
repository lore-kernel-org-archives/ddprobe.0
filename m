Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCB8202C43
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421354; cv=none; b=fedKjmJOJkPWDxXlmW+w7oh58rC3gMlsJcnWcOf0jcPVCPiIhoIH/YqX4E7IJzq+5okyby/NysNOmYH7ycdw4I236fWpKEw6cQjoK5531YcMdPbsnwFNc/ig+TZVRJTzTsYL5z0QkNqLxlvocY83EgHUBqTP1SlkKIRrKylNDqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421354; c=relaxed/simple;
	bh=l869YBt6lwV1IjL1htEjLjddPmQbyrjEWGvgwI4HjdA=;
	h=To:Subject:From:Message-Id:Date; b=DkTlVpvJ9X6D+/xwO00dlTY/2K3YWaiFczrg6kWBJEqpbWHWhgTROApPyF5iAn763/nPbLJfWPmhYnTp7tMyIGhjp2x4N/WUeK05kiZqaYiJnhI779+7peVDqqquADgA5y7e/7Jfk2+nbDo9nbUwv10l9NDBBKblPpcim0duZA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijDi5pnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijDi5pnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D1C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736421353;
	bh=l869YBt6lwV1IjL1htEjLjddPmQbyrjEWGvgwI4HjdA=;
	h=To:Subject:From:Date:From;
	b=ijDi5pnctnZqpe+REqq+lKZhuT355etPk99MmAESZSLHnCdWjCggtGUhk55ESmF+W
	 z66EcDJF0spniF5ldpcU/9ihLROd7ATR//94Mn5fx7ZZ7Aody1FRIjsZWJmk+LW4iQ
	 zYhz7DBnRyH1lY1CHWuQEdZ742TbQ4OGUKPF0KUEjCux1JWs8nwrbO9xDKO02P5g97
	 l64HdATosChODlyC/CgXsO34Jai9RPdnMQB09jlmZSKi1WCbJ4DO0GyrXn1LzTn3vD
	 PrQeCDzEhdP3Xyj4iplWm51OyiHIyP5IbrJXCvNlPag44QlgyzmAJQL8PUvOqLSkG9
	 sv6RZVwFY2WiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A14E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642135358.31374.5222868252476955358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d61ec9b5dbccdb3f0a22e91f1a8af246e8e82e2253520fc40bc9741e5e29ca
Date: Thu, 09 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736421353
