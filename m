Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DDE375F62
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780372474; cv=none; b=s3v6FN2SowB5v/0ZY9q8Qfw9btN/3B7+z3D3XVK157rweZB7UmLZ+7nZKu/wXoYIKWVmoRI1/s5HXpYIwbn5itvVuVEuV9Bzr3O0BId2t5Uct+GptqhpKhYShhnABwfVZXEo2nmXkyHWeD3m60FSic8T43D1TRpHeKnR9iRNOfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780372474; c=relaxed/simple;
	bh=dF713LNaz9psAUMAmkFWW3z+JExHwd7Nm/RP29VisqQ=;
	h=To:Subject:From:Message-Id:Date; b=lzKv+4Yu4MuWbiF8OkrnCK1oJ6lVPqsjIC+OxE7nod65GwY2f8p1qhjs2HcODKBLGVqQ9NRlmLN3Hoz35T0jdh1WSor2bMcUuRFwnk3ZtoYoKaiufowtP/6gVmuy3QddHK5lyRZ0YxJ6lwSGSWnY7s31nBfY6JWkz6oRbTW1ALs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICvLIMgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICvLIMgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFD2C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780372473;
	bh=dF713LNaz9psAUMAmkFWW3z+JExHwd7Nm/RP29VisqQ=;
	h=To:Subject:From:Date:From;
	b=ICvLIMgvQSm7jFSTfZPnySPl5NsHobh0hzEo1DXBxKrdT1z7nEkFxSw96H9iSJ75B
	 daz4hnC3gaN5F7+AtxTO7tH3aPiAoNRuwZ0z+V/IEDJHqvvgGAxjATLLG6uTEkkPLC
	 MKJuAXxN2tWYTdVpDq0r3sdfZJJcnpkhlvGoU3vxyXXuiE0IgY07InK7/je0hsXl25
	 DRmFQ5UjQgbhTFt5RLdgnd1y2T31KVPATh4/6KNmafygZ+sBTmjYGdNg2pd/JOS4b0
	 dTYpwK2BnnbfHnCVQ9gJvnSYwMGWYUxrtTgAdi4vwTSuqchceLrY9H69CePxyza5UK
	 IoovcSmqnLvYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4678C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037247373.18072.17815991503581688369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c79d1a1682ee742a01be6851555718ef553ee5b661d29ffd1a476fbbe08d0fd
Date: Tue, 02 Jun 2026 03:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780372473
