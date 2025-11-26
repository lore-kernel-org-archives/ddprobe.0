Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2643922339
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764124974; cv=none; b=q/2ubh4DzAs5bRZMuBM/YZRqttHzI41InbG8enjSc09oyjydpOrjW+KILDT4SRlVIF9QtWU9dzHhMIu0cSmTQW9bYazmziW4VMpCR+5kc2rdnzfkmJ6kqAryQLnn9UFsK308bBQsj4QOcco75wx1pkwVW9TpZ3LhhhvLboeD9ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764124974; c=relaxed/simple;
	bh=LTiamHWZnbalfH+70/R537L0MRPwSwOoQVf6pS3jkX0=;
	h=To:Subject:From:Message-Id:Date; b=Pb4atl0c/WvQf8dtMIDJK1ofJ89pbTyIyBcsfQSi9vBHdvH0cRSfavoZq3RXWbkZ+uxTEI4+V4Ei17Fhoxrd7TpnRjxfFW+ieMgwNWBjhgfdIKVBYkq2QNN1hfwVy65iTnoMkswNMquB8iJx6Dd3Sp0UHfkj4E6eTiJGt4MEBHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZV7kgkam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZV7kgkam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84E8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764124973;
	bh=LTiamHWZnbalfH+70/R537L0MRPwSwOoQVf6pS3jkX0=;
	h=To:Subject:From:Date:From;
	b=ZV7kgkamp4MgZgMyCbU6/qDNP1M5F8QXGU5GJcoXhkxTM1XsC63z17tKyRzFuXdGk
	 DA/Ev6/lCk8En4Fbu8NZFMOM+Qm5gNwRNN2LctycCEexU9xa9du8aBXw+LBJJiAgsS
	 z+xLOwvpKeyGlV7btjWFroLmtFRW7VD0FCNeQVTLvcc/HGypVIp35hfYoQ7+Qfpwlu
	 2yKB5YLaMnuGXPwqETJDtSwT8kngyNMh2q2CXNgF2dVSwes6OWSlO0iB2ODtqKsdh2
	 VUPzjt0rx9D+o3V+cSYMmhGDNAhlQU9NMkJyeCqPm6FGLWjh8boiYaCNVIHZi5U2DT
	 0IDXR8SOQEvIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9496AD10373
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412497359.1878.12250800513219572333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa782541a2b61485fd45c6e6798bc1f10850c46af0c196e60dfa9a3070fb6a7
Date: Wed, 26 Nov 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764124973
