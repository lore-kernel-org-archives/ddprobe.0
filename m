Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A89543E9C9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769039634; cv=none; b=IbV2dNVBgY109/4GwhibAQHwBy48f1d/pfsSrfXW8JzubugQcAOMMB09xMHbVX/wEnJ+JEnwa/hJud+LlwsR/DYQzDUWtEwlR2BWJk4dWSu/De1Y7nWMH8OpMUkayoBI5sedDGkpbaei6weXqiVYdQWbaRiO1UZ2kczaThH7LG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769039634; c=relaxed/simple;
	bh=M8kHaw6VDm/cPO/En/t/oZob60qmk4PZcftfpAQVJu4=;
	h=To:Subject:From:Message-Id:Date; b=HNTwuW8Y3PHq7BZ8Afim2Sv3uYzWIz63lwR/B3dusGX2dmHurJpJtAnSaHC37VSSq/ZBOw9TwZD18hUy0e2cYYVOybLQ8d4zBKS00QVLGIkwj6w7Ts+1l10Mql6M4BXQtu2bTd29AFDKnGIstCeiEA+MS1PQnZYpAXF6gqqyJeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPO0jEHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPO0jEHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC14DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769039633;
	bh=M8kHaw6VDm/cPO/En/t/oZob60qmk4PZcftfpAQVJu4=;
	h=To:Subject:From:Date:From;
	b=SPO0jEHlrZL+utaKzhX+350VGuzuq++0yk2sBnnOmdrM+LWvmXgX2xzTSRzNjoWts
	 W6p20UmKdPeF0oz8cVyTd4EuPwlAX/4uvJUrl2FJhHIVmvrcjTYG8nPzzlMzavDlQJ
	 NmFyvgMD6/i67IRiDGkpscMFYrGv4FrcWUwxXqGU/hzwbEsEnLQAD2bxMPE/hkRzBp
	 PYdpqtfHltkUQWHBxDcrDRqD5I1WzvYAaiLXtRYZYEoBxKqgRsUEcRoupj7PJN+sg7
	 G8s78jq/9K8gRyC+r7s8YTaL9Uo/0K0v9GwKJrcYyDXSKp7NCskWzmAJ6w8TyK5eWR
	 srpEKFVb7QT+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAF2C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903963363.22673.10571867278029590705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7efd1d50d840e74af554e9bcb19f77fd4cc440d8d3780779e536b70c2ce5b3
Date: Wed, 21 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769039633
