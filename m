Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D971364AE
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733196354; cv=none; b=eZ5ClkP0XX2mf+78zLbVW7RB+GAkqWD2qZEEWPoy6Qsv1l2kRhbviBFf6nGbwQ+GTCIF4ZFbMRuJhftNnnS2FEoSK6j5paxbQRUMvKPdamGjYUphQuYmMMB6i8WHZ325ht4kZKTS403bjZBZoyn90AsXhdxgOqhFpndQlybeHRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733196354; c=relaxed/simple;
	bh=JDX+oJy7O0Q6NXlH1Z2hLNE5n7gBHrHg/eoKk5xIbAg=;
	h=To:Subject:From:Message-Id:Date; b=CIMmY2kzfCyTtZsguYtapiD1cEqspoozktYhd7rioXlGTy/IAuZQgMkEyTybMkyaSy+Jf29Ewq6JCCZDTUsBoNYthGYLW9b5jXoHQx4hqNde2GdYPgZ9BnnPd/bbSeuFE1HXm0G/ypoo6GFexUwu5w/+EH6hFrnNU5cSuTHNwnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+lBHrJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+lBHrJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD271C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733196353;
	bh=JDX+oJy7O0Q6NXlH1Z2hLNE5n7gBHrHg/eoKk5xIbAg=;
	h=To:Subject:From:Date:From;
	b=m+lBHrJO1lzQ/1a/Qtspg/xTfBkqUVMgnSzj3oTdKr+95Z76qJ3gva6A82xO8cgF8
	 Y9WdEMEa393cA08L8upR7oT0gQp6iYLUO5ICYgD2amPKfaSekouvQSvC2TBkYxBCNw
	 w9fC7UuuKYVOE9I5jpzcdLQBEXM4CJvVe2rnas2nZANXPziZV52HZ+Psbh7M7MNxx1
	 pkudDbzvrAOrEc1fSYPBuDHBMTguB42T+Bxq+TbQuCrlDwSFleyPNs+Ns7ke7Sxqa3
	 1eigNihdYOBmTfYDP1bWOnDOa82lfB++AociG/CRbrTIqnDtgdHIh1PVytdhuJePeC
	 B0/Uy7m33MbAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8127E6C5F5
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173319635364.26888.11006486388936037800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c8ed10f7ae399cc2e636e59efdb38403ddd03e629777666f4fc86446b321b5
Date: Tue, 03 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733196353
