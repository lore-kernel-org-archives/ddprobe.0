Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9BC3E7166
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772822694; cv=none; b=saNz9kvSSdjdCoPWjUsc7DRHfa9cjyf3s7lemgAta6T71qEFQpEEyjyUxnDuUd1jqUTINzNn8S1Jaetn4RbSrhvppcU8Cis3llay/wucLDxhbBFOvjLbPDsudo4spwstt1CJD2eCBlxhFpB2ZyJw8IQjyL+vzW7aj6/ZN4st5n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772822694; c=relaxed/simple;
	bh=EQMbDf051lAhnciAiLdorMe1PRRS4cQ2DCcX7vucny8=;
	h=To:Subject:From:Message-Id:Date; b=RjQg1mtIP802BXwQRs2zYQ5T2rudQP83rx4dngQyxoMzrLgPzsvH6mXAnFvXBCGjJRw8gvZYJi6lyN1gdD+/qb/UqoUBWzttwkY6uG4kfWOMVvZpVknJkh88FQUqlKP4OZ5Tots+CEsU9wbnUK8xlat1jk7xJIiesOvdfn4htkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2M42pOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2M42pOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4051C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772822693;
	bh=EQMbDf051lAhnciAiLdorMe1PRRS4cQ2DCcX7vucny8=;
	h=To:Subject:From:Date:From;
	b=T2M42pOTAkP7JmZjkv+VkonbRsLXVInbH+R2OBHS3s7Vwb7ZdOht4higchgC3dfbi
	 RSjpqteVDz1QJ2hIqv85Uo3JUpkNMo73tGG73c/0qhQGrF8MLo0beo2tT28LWaxupu
	 K8oIgjeBbq3Gqftz+aoYAeT3JYl5SMy0XxNi39jZJX+29a1NppjVhIBgVfeu3LZCdY
	 YjCNWOkjen59aq/VxI87tUXl+IpqN7cSmRkrCRPgoBbTEEkgLv1FvfMgQ0/xzfZRBr
	 UzWOISPmTdmrpmVhxtkY7vLsRGbCmCeFAn8+x2RK72+WZm3VUuhAk7kfgFCeQS1nul
	 dLHJKxcGB+omA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93925FCC05D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282269359.12942.11484867352870049046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff6f904da4d5914f95686de33132e957aadc1d6f665525a9c425ce3ba4d6c54
Date: Fri, 06 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772822693
