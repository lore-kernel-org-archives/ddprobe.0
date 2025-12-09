Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C632BD11
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765319573; cv=none; b=cEOSX68wZW6/WLw6U5Eh9+x+vBhT8DsBTQUGn4+mQncrF9eZLr/t3NjS37+4AMYukB5jCa7YnDc/BmOUQwjn6z9s3XKW0GZUsNN5e68UcEStIzdUECPDPBLxIWyTiPCnlSNi87QztEUPOjRK5w8RZ3uiG9LZalAGTSLBleeb42A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765319573; c=relaxed/simple;
	bh=DJc2e23fYubziCI5UNv144b2O+bIy9XSK9X0lL3D5+w=;
	h=To:Subject:From:Message-Id:Date; b=qDNGgJRM0aVfOgUInhJtTy1oxHjozrEI6scgOD64TFYPE0j9hvt/1YEqt/aojAwZe+Yeb15ZIx9ozANCKpG1PHGtjOveLSVQhDV2hb1Yy7a+6EmQ2XGIaAdai9l8BghUcjOXiYVuI3ZwQ41c+WxSvMkm1JCnGU3SOidaDBLQ09E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcBOTfvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcBOTfvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4569C113D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765319573;
	bh=DJc2e23fYubziCI5UNv144b2O+bIy9XSK9X0lL3D5+w=;
	h=To:Subject:From:Date:From;
	b=OcBOTfvQsO2L3MWWpwv+3Pp81z7P6vtqw8YJHB0he31j+/ZZF89hOQSRgnQEs7Uy1
	 acwTaRzIfa4tnmSSGJz668AgJCrYeCe1L4N5Cz6x1rcyUHqX89+eb91y69K2QAofK/
	 4dcET/sZLkR7r3XrB7To7bICw/HrRdSuokZBJ/meb5COH4xfFQmHcpyU7paXUgwI9K
	 +5E5+PUaiQ+1MNF8wS+7jK4NcdHQz4s4wX0YbZ6Bn53Arz5zwAWiotIz5eS+F7TgLj
	 xKDH115oJpLjOOUBpU3Aw9z5hCfZiyFtOEFkXeED74o9gUEoxbUPmaT2lrKbltEOLB
	 ZQl/eNeOVaeyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960D0D3B982
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531957358.14361.7107380282190533594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1500dd23e9557020f101efefbf4bc4a742577659e7f7b7690fc6bbd0115775c5
Date: Tue, 09 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765319573
