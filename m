Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC5417624F
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718887223; cv=none; b=Lp0uyGM+VWEDjpz7UK1bqGdWpaitz/+vXtkUI8DMLC71IRpR2c5MyPUUlgK6TtqdkSUnaQsPVei6lmz8zg+VgvVBoZ6+FfR84uy60UXAVa8Zuf9FV9UYLk+zo2kRhT0YeI1eh1O4BaY5qxP+SQguDMwxb/VutptDx1AUTKRXizk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718887223; c=relaxed/simple;
	bh=G/IUeRXBgObjr2HkUhUpahJ+WY9TCEsXuhZJPuXGCZQ=;
	h=To:Subject:From:Message-Id:Date; b=uxfC7M7e9gux8+AGQIooNBPX+fNvpRu7JVilIYmiT3vi1ldg+NqGgVp1PgpXDX3MB+ZNTbK1610xzAm3vvjXitk9F9H/mY6E1h6ruCXWhSMZLIFfLUTVKgvTXCE3dAv7CsRTn9lg9sDXH105kKQ+79NZtJEMIvG6U5eixLUQn5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHIeOJEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHIeOJEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5FEC32786
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718887222;
	bh=G/IUeRXBgObjr2HkUhUpahJ+WY9TCEsXuhZJPuXGCZQ=;
	h=To:Subject:From:Date:From;
	b=fHIeOJEIil5+majnsR7FvMI+XGqPLeHCOlJEF1+xzdc2CxTv3JXHskOIuWU+5zj/B
	 24D1PIHqzBMlEyzcPfsU+UfC4EX63PRUxrNmj0MGbQFynRT77djilejBykmoAHpF7j
	 AsY1bA1EnX358nLjYGx6BgsE6Hkw4vt0gjX/al7G63BQi4NaoEfb+CAxhXUh6eRx7P
	 Y2JBlgCSmngsum/TlX4Ba7dy6hz0aUdP9hsQx2bGARzgCDiWb9Z7moWuDyjng05VxF
	 p+i1UVXZma+9pe04oizgv22QWR2Yy8DyhSpOENGWuDKMUt6SiwL/cZVtcDwIR4onR1
	 MIaN+JHTVyYRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8652C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888722280.3813.9150636643226004867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41fa66d030f2971b8d9020f2bbf52e12e1a8a8490371d99d1fb743cc0be06507
Date: Thu, 20 Jun 2024 12:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718887222
