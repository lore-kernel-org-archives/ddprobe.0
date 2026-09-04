Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675D43C0A17
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788556234; cv=none; b=IXmUwuhQtssSa59+8qPovRUyJ20wMeSMImcQKETuTOcdJMLvSJen7oQF8+DZvg6RlG7q3WH8PTvIEdimOhz7/6RreVSl95GR3/XorHF/3zpknmp9mnNK+mKwzoeyQ1qXEYUI+k6xTAjI1PkE0fiGEXNQe0ps4+LbpNAzeHfpJ/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788556234; c=relaxed/simple;
	bh=YqGwPuav74ouLzDke2vhnJb/LioyUxAxDABUeNoCrtw=;
	h=To:Subject:From:Message-Id:Date; b=qt/HoTIoJALLGwcXq1FB2L4leAQMF1iPLhv48LoiRFQlfwz52gEwynDi2Qos/3aQz5AbKuq0fiiyJd8a3x2GHcrqApWR9hYdQA2tz2RtWQMdWsygTz5JLiLBnTWPntD5c9votKgsynNpwiwvswoJbZYrugU/qmbp+VHBweYwHgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dfe1YoWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dfe1YoWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D940CC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788556233;
	bh=YqGwPuav74ouLzDke2vhnJb/LioyUxAxDABUeNoCrtw=;
	h=To:Subject:From:Date:From;
	b=Dfe1YoWtFOIykSSh4eotn5Cc9qGQ84ErpzHUfaIWWDl2yl9/aXfTY9wC4qU6MsQ/l
	 UwzgX94srqD7/gd3RdJDaNoXKmHhWsslh6Yuj5QujtwBOl3wY9spOgW9qXnSq/j2ng
	 X3Mz8EShYHAXblcRV4T2xFhhFGAuUfwB3inWwiCmcLcTpajmOsCFliq3tuuNBQUKxU
	 qcn5QJR5+Z6g6A6F+cP2m8FmmXvhHMiU6TuyxFoCLHVB6ibuiD+wrh2MBVDA5pYrHd
	 DXfrcN/PrqvsJsshS7+6o9HMecxY92ZIeEGwG9p8F5uxrQ46J8kiiC9SrqxzXhOOF+
	 x+Nm1rDhKESTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AB4C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855623370.9219.17565286725654122638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d13ea3331076a72aa2eab0628c2d43ebb6e1eda4c70ec73e5df17ab7413d15
Date: Fri, 04 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788556233
