Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A642F56
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714523543; cv=none; b=GsWZLnSBQVqULcj/v0eF6BxO5teO1LW8ICk33es+Doo10ihv5A54uryHeJSvpzyKwOZXSOrFN9hpCluOdUtoke/zbmG+Fj31kYwOR2uxrDV8mDqT6zJfzye/cy2FdMA+Hq++0nUJm3cH9mEYW4tp//vcMifAm49hgzZEYAtRpeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714523543; c=relaxed/simple;
	bh=UtE6w1kfhLbaHMc+xIaf8UwY3Cvs9viCyosUUKm6Oaw=;
	h=To:Subject:From:Message-Id:Date; b=VX6pPZ0fzuhJiaS9JXlABdWvW2mkv/wRO7CVMssqLEK0pvJ9nS4McH6jTG/5RD0dOo0GUmLll0YQuUOLrsccOuoaVfgygCCgQ4KTiPQvnM4WpdcOVwYmoospaGi3sw9cudzHObG8SI73lHQzjn5b6rg4EcYYPrLrqSA/ofKNMd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlcszkYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlcszkYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB49AC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714523542;
	bh=UtE6w1kfhLbaHMc+xIaf8UwY3Cvs9viCyosUUKm6Oaw=;
	h=To:Subject:From:Date:From;
	b=qlcszkYuhosqtebSrPWVeV+H6C3zWMycM11PxUmekMzGcZCIf6aEuld835y74FgQW
	 xyrNHuR+zeZN1x7HUTpWvozbDXl4Cyr4xIsbUlJ6vUZq0tJxXVhmeX7bgSI+/8v5c9
	 eiIpSo9XqK95XQE4mmGg1JQ5WuM/1hDXuzFio7cAYg/XU3TAV1L3oUpuAnmW2/nx7i
	 d1s1yrCDViMzcoOAQEqojQ1p+V7M43fhfqEcryyqDHyxTiM+UwK9rnJjYG5LwAqpMA
	 gwjE5lQOdN3QfUXmr7zpsLvUVAMKdZp8ntN1DjdOBrNn+h5Ks4zi5CfjAo6AYqYHy3
	 j6/og8SAVGfQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3D5C10F16
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452354275.29609.16183863080646054725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87197cdae89acf8ecc9bbba1a18865eccaa1eb76a8d87a73d9720a3ad9b00a33
Date: Wed, 01 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714523542
