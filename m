Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C892248AC
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750331994; cv=none; b=JwVavNauY96UosFmCyXpuqb0xeSuKlwWHyRGeD1rSH0ga6N3rYRg9fc5F0oxJcGICsJMODo8vCp1P997idA2aH+gp6jEBRoXTH9qWsHBl7H8OGgKYOLAo+DEAxKcN6mawbJGDEh/qnVCrDtL2VkPipK9wmAO7LvKDlC7hzog2R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750331994; c=relaxed/simple;
	bh=IeWx5pYGqlgH5ktZP5A3vDoWOI3rWPsaPlupMcSvjKo=;
	h=To:Subject:From:Message-Id:Date; b=XhdReDUq+aHUIlePxZJv13pteGgfD6eb7f8atupIVNrY6OeDzwf+aOTrhHxy/kj2axi73zSfEExnVa/8ps10Tb5LPlT9kYbl5chJW+qLGaZOCh+aSt7rJOUY0WFvV1cBAvL2QEdMjzBhpHC5WGaiivwjutixUvGB+N3DMz4JASE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEuLa95M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEuLa95M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39EFC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750331993;
	bh=IeWx5pYGqlgH5ktZP5A3vDoWOI3rWPsaPlupMcSvjKo=;
	h=To:Subject:From:Date:From;
	b=jEuLa95MO+UK9dNVhNV0jAS68zHNlRMSwvi6OOXmkwS+6r6kKIEaaR+LqRyO8Yvt3
	 gHlaMBPjzUoEss3jp8XPykM77UU0xIZKEJV+QYBVGJ5krmyzOJQ5grZN/Ay4LcSrkH
	 IhlkeXQPzZMqFbzWNbNe54yD4+1aQOdaOfUwOUM/i5vzjDs3UOvdhtaAV4xHk6Cjat
	 OvraTfVhBtSLCaneJgMW1gEXXP+UfXuwWRvtEHXeZBQssa80cl+RYFXMteHDTyXaFL
	 UWVn53HfHbXDWDz9g4h9YLPxw7S+nMTqKWJT8D7qTMcWcSlIM3ArXGelUJo8wsxBD1
	 8HwssXTQVhS/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E3DC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033199358.10874.14759701910148963907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499e90ad799ebed5e30cef5f3c1c691b70f3235f9e94e6a222de4db1583a5e50
Date: Thu, 19 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750331993
