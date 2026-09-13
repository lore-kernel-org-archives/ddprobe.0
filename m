Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E952FE060
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789284034; cv=none; b=rpteIe7RdoiXkxZFPPGHYP2n8XyOl3g2bM+SjzgWEuAuIBKV0KmFe3aNiw3UPlh9AV+lepIMgUDI75g4S74YR6Ud2c3REbEDmuEwsKgCTkw346QPwqHdygtZBAzItxBFDa8NxRDrwNu9orChxRjfX7v80H41lWuQXuHX9tBAeAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789284034; c=relaxed/simple;
	bh=Swh48jpWC6pKF27Ek3QsT9xIj8TwWpMslyACJt1FDlM=;
	h=To:Subject:From:Message-Id:Date; b=YgnWGVtetG/pdzBbsAdmtL5iB7nQGUVstPLM5j9Z5J1bLJuWwbHu/q9YuNtI8V5HVx1XgA1zkUXqb2TGUDPG8l5ay/nvJUDj/vEQEDevwfVB6tbQ+J/Dbk7COOCpbCcPLA5ziqYdVGtStzgzItlcdKM4fXn01iTSZmdZsv+Zhhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMOcwqxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMOcwqxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87CCC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789284033;
	bh=Swh48jpWC6pKF27Ek3QsT9xIj8TwWpMslyACJt1FDlM=;
	h=To:Subject:From:Date:From;
	b=jMOcwqxs0/OuybjkxdxCDpKV/RQNm8Aam6AaWIsJID8DIfrzWd6KWR9BZDxI2Zdt0
	 n/jB7jkuQOElWxTyn4BjuKhNb1PYBposXs8Y6sKSwKg6NTA8Qs7aCxZO4vBPFtpAHa
	 UySswL1JYaWeCOFnXrkmCPBUk3i+lsuVYkYiSR9puJAg1Q4j97f5SZt/lGx1kF9GIK
	 OlFfD8XGWY8Os84yblzcA55z27qK8OkVevtK3CzCTRjJkZtPcH0O7Tfn4UgSFlwlNX
	 Lf3WqAWb5f18S6QFljlCnefiqjEY+JA6Zx7zAnqHbYDICN0svPSJ4TCnkiNYqenuYo
	 0zHeNoVGUgNCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD155C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928403368.20338.9156427808326163007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4375c63d8e352f84626c815f11e92684df0a0ba994e86f1248986b21fc35b50a
Date: Sun, 13 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789284033
