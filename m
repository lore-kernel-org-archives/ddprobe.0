Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541F31FFC5D
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742291994; cv=none; b=eNbgtSEkypnb/66Zfcs4boaKLjaM26uMALaVKzDDahmh4gU+foc6R2QlkGHkeRfLbcNSjEA6KUt8PwjarE1q6JWPiqbZQmGdbRjvYFpzh/7Zz84fiZ2nTf21PbNgrER/31GV+rZPAPNLrL1GlR51qyRqD9to15d2nS259W+qMQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742291994; c=relaxed/simple;
	bh=aeuv0sRVuwMH1WdA4dBFA23IiBqdyyV2ALJKj6Upqn8=;
	h=To:Subject:From:Message-Id:Date; b=IxppjPhuRRzLB0Pk6QeyTXWh3QVEazFDMfo3icABCdblnBWIPV+Se9WsUc//63z1JyZqH8MfOE6XodLHYvnO3avTGgLXEorCTI+11ASHWXEzGE5AlPC8mop4GjdbxFpP1Hr+C7k7yIOsplPZRWmGeMfxh9dPvKd06lkoOXJ3PLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/QlRC1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/QlRC1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2775C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742291993;
	bh=aeuv0sRVuwMH1WdA4dBFA23IiBqdyyV2ALJKj6Upqn8=;
	h=To:Subject:From:Date:From;
	b=E/QlRC1Rhgd8wKZwryDBrSuFLr2mnen5kdoX7Yu9/YV32lhKEd7UEyjCdcTZxxsuU
	 jmhLkkQfxXb6QeEy8ngoWw+M1hE0MqkRLZFU4RjCY90bbAK2WMJLR2qRVT++wRNm3Q
	 D+YhpNzDXfiWW8hkjIjODM/oDTu/L25/3U2njCHrIqF4U9TUQWCe0jxgw/7ZymhWH/
	 xtMSbaC0obWh9OQqVVgtSm9mJpaoL/0TOGTYT+AIHRb6/N5R5y2SNsVSB2rQgyfqtc
	 i/ePdWxf8JnoMOTCRSGac0eXe8gKZDwFiU1D8ZMjKUbaNSQpX1Kydoj3sgDKbOqty+
	 SzMp78iHdxvpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3537C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229199365.26505.9947518942087674512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e435d4e5187cfab3e51913eac6f075de39091495410a596ffda5edae250278d5
Date: Tue, 18 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742291993
