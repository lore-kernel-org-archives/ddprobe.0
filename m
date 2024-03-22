Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E504A8F44
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711078097; cv=none; b=akEeTKupxuDpc2AzcDpIU+eC5spFQJbQsA+ardopFlVbb4U1pJC5NGVVFnU5hT6LtQuireuYGbp1gjO0KYOC3/yOBdMcbXuFLlNP8SdRMHVvgM/PXvTnDAMJFQtYN60B0y/rIYhi9r9+gvdkz2ZEZoFO9eZx/lk2oU3jLOM/aH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711078097; c=relaxed/simple;
	bh=j/1INK1lDSB1ekvSy67UMK+3ML80XD06b9iY47oMW/U=;
	h=To:Subject:From:Message-Id:Date; b=s9SI6i5z+Idw3WDsaFS/CaWht61BmkF30x/3Nn4rwgqJuuFbUYZ4GKgPmZcW9SkOIjCLFO4MQ+B1ABFRodjf3wA1Wg7yx+zn2QJQOfSeR3nHg91Koa/1LjKjCqJuignGk8Kyr9jnVagoz7BUuP1k4ugzqd8khc8+VOLG5WREfsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+oh4f1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+oh4f1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A7BC433F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711078096;
	bh=j/1INK1lDSB1ekvSy67UMK+3ML80XD06b9iY47oMW/U=;
	h=To:Subject:From:Date:From;
	b=T+oh4f1evb5fDIj1C6d40jWRsvsaXI99PzHm/eRtCddMVk8VM+7TWaSedmBJTERrK
	 Uo/+B7uCZBFwPSLLg5aX3+BrybzVwfqxMveZ1vry2eVB1iJFao3dOpFFDXnwiHx4F/
	 Zq5ykx3XIVEyYx4LYeRvpaGABMholqfIHMWKF8vVjwDr6D8XkU0NKRvWl8NGdYeFYl
	 D3JFsOazxGhhm46XAMoIK0RK4I1Jus4O+nUcSPlCqxMe5RfP43WruM5KhbLM6pB69I
	 PtoHpZvXw7wxDAb72OrI4xOmSgJ53cVKaPK2MXBhQNp6NuatlH3qu4orOqbN/MFVNX
	 jKf8GjnYs/t6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6119BC47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171107809638.10205.15135368569130547250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ba107136380e72680f0a0761d322066958be0139ba8d8c4c48d59c2ba7bad0
Date: Fri, 22 Mar 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711078096
