Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EED479C0
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746090594; cv=none; b=knqDF9Nrdg+GoSqdOr/9w5H029mIcO6zZlQQKO1yhjh76andBHT96VuUxNVHDe2uv+hkr7+z03cNt4gCBD2jC/Cd/jtaa8xcbNPXhUTXi1OeqoOOpjf6yvz+JhLNKwtPJiNp5mf7v2z7HNMDXxf7Te+QJVo2GbYE3hXGMQxw0Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746090594; c=relaxed/simple;
	bh=CZfoWEi0K9FmziAJUZRtHvyWQDouyJCsVcAMXoCZJCI=;
	h=To:Subject:From:Message-Id:Date; b=jy8hSuG0srOrXFbSL/ckp90M48DoccjXQPuZynwVD7MvFmuy4wrr2lMX/8aXHFsroF5pp6sTbWJNTtpd21wKtvSdvrwAyFZO+aJZPRoe6vioyieUm4me7uxVFQIPeD2gc+SOZvZhAnqrIdDd6262Y6E7GPUazpO+ACuhFIlppV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AChk8OBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AChk8OBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B940C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746090593;
	bh=CZfoWEi0K9FmziAJUZRtHvyWQDouyJCsVcAMXoCZJCI=;
	h=To:Subject:From:Date:From;
	b=AChk8OBoK2By9O+SXg81IOUnKlv23BV5t7hScZZh5TYvGUcXUlelhPbHivHeeppJJ
	 LIVIdsiW2znICtE7E8tqYHwjRbxbp0o6WMnx29epVRADWVqhLHhKWWbhzlcZ7JvMpi
	 uBc8tynZmRSiDRiYjoWHeZysyTojZD24DkME0NimHm4OVV36RNo7k09mXZDCYA7Puf
	 jyOZ4o7hnel7aLJ9GdyytasSIwlbMPaRu7VK73WbHm/zhK4uAvWE278GxWNDJGXhsM
	 bvQ0Vn5JcR5XF57Cqv68l9mn6MPN7C+x/YkDPMH70/onJltqbMzyiF4TYKgdHg7Gbc
	 qr57+w9SYTuNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E79AC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609059357.18474.6328657071360534430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf31f5be22e0759630171d52e91ad29c15f30501613076463576b633729beb9
Date: Thu, 01 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746090593
