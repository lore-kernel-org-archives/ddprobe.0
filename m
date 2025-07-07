Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F7828642B
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751872194; cv=none; b=SGjX/7KfZUFpYIGoCV7dpZEaEk3BhGNfqz+GWS9WIwSuJjc3bZ1n4z+kBmtuGKgT7Rn1JX8gT4ndsFgsgUsXESrhBkIPYh31IfTyWmkFDcfEUFQnueDGymTUb3t9JHBcSRB8zyRGbzWKLguWSLAR/XMqL3JQmJU8COB0B/TRGDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751872194; c=relaxed/simple;
	bh=UXIf9zdR+itNDeFAWHPUdrLjdrLgTYyYN+blfRN1ue4=;
	h=To:Subject:From:Message-Id:Date; b=j29bkY13dXc+aXEvl14amuSxTfJFHmm7YSZnJqp+8B/Uo1uwxXCpUcSoVe6y2NB+wykHlNuqPzs+k9+bocVf3PTkJZDJF7smaDeaaev+VD+QyQTUzIL3nlf7uOVk6MiRE0sTXZFnen3c4uIkutJHRlvpqvjB/XV8xCERrgY6cLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUcLCRfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUcLCRfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8D3C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751872193;
	bh=UXIf9zdR+itNDeFAWHPUdrLjdrLgTYyYN+blfRN1ue4=;
	h=To:Subject:From:Date:From;
	b=tUcLCRfDu0DiS8I1En8AcHkiXymli7/bTAzehs6KfYOEjquYaW2mEf5NZhr6+79Dg
	 QPG/ObF7Y8MhHtVo7EOzVyFTh+8z+gTr1iXXvP9m49RPIixTj41HITjHcQOz9B00Vi
	 iKkOoN/gLSbFtQl2zfL+g5zHUKLSDkWvU/HKs8K6oCs3O33THyOpPT451f4psj+fQN
	 zZtHNQPuU5QQGl92wjyColMU1uryx0TyRnQQlecOzRodZwkQEK9trJJYhSqYr9qYf/
	 chRuAHubqVuOrdup76hItwAEjaRfQ5G6xBd8qtriv705mF4ra2JggkbsaVre2O9iM2
	 tu0gpSXb58I0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1FC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187219357.25760.7541124115707416952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d5f249a03e6787a0fb2cee606e220ae950a9b005c2247b17f3e8fd3f5c1651
Date: Mon, 07 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751872193
