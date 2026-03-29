Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0427D3128D4
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774784694; cv=none; b=kP/6RyQayqUsy3p9zDMfFwVDJmBurqGZAJY6Mm41vpouPwFbGPUjE2kcZDGTD8NckUxNDjJiKzNC6wWfXgPpc+5Itulek1ZP8Y7ZIWZTkxESIOAN3O5eHYGQdcgncEhY4h1lZtdq4LYUJQLg2oI1fyjUu4NkAjXnfTnC85bnZhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774784694; c=relaxed/simple;
	bh=43NWdFMZEhIqPalCkDvbq5ilPSRZ4uCC7kku+K0O1cM=;
	h=To:Subject:From:Message-Id:Date; b=dOsQyhCkfObRny15D3QSE1WyCcpYxLcuEvZEuTat+VaHXmWthC3I5+807CYZYVey5Jy1S69gZqtLHqTAzNMLrWV+zqdJBA1FuiYzKfRJ1SGkxqSBzrPjekNHAlrubXfTIGDjBsRXF1IYXHMXcmwL+iW8QAWxv+D2bYiJ47NTICs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVQg8YSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVQg8YSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4397C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774784693;
	bh=43NWdFMZEhIqPalCkDvbq5ilPSRZ4uCC7kku+K0O1cM=;
	h=To:Subject:From:Date:From;
	b=OVQg8YSoIjfz99Zfh13FW8m0VAydbwRiA7wBTjs/uWc9lR/va+vx3UxizKcxpkQib
	 INAl8WMW3i7ZWED8HK3oJbLg/5FnrbScyHpSXMQmPoTa0k7+vASumVnprj6/Ab5/0N
	 6QgQYyXv9iH6ZD9wwFMaf2B4XPyUldYGYzXyjsHbq5/IQLcmM3HdOcQlGdN6dhWzl/
	 ILPsEVbY6l+uO6PWj1zrI2hHSoNWcD24h6Wl4Yfcm5J8JSXHXtz6J5DDFwFqN36ygX
	 9+uN+2GJFoJJL4ld8H1o3EcdnJPSSBAHiz4UWrSJsYhVE8mdUyIL9ZaRreREZ6jZEi
	 Fc5dDGZI/flTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA2F3D5FE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478469358.3990.18277838408509312399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92ce7898c2fcd5c55a5804fbcb637b0cac57be639226502d63ea833cd97a64a
Date: Sun, 29 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774784693
