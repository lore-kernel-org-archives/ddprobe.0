Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7A01A76CE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728990953; cv=none; b=UiVSVXzu6/FF1R+jSkinhRQMmzdU147NOLuXhykmSE9R3AkFQ341eCydd/0sxHDtOIWaydV6t1GDInVrKugBmNBsV9tA0n8hbjD+WBGYhct8asg6PkCiBhDSJYHsi+Izk2+vRhecHMcMpXEoAWEw23MpBZpfP67pcVioeHtM8LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728990953; c=relaxed/simple;
	bh=5HXR5AFQPf8ehkf7HY0zC5W4/XvKnaEDEwA+K/zLKwo=;
	h=To:Subject:From:Message-Id:Date; b=ZQiZzwzuncZlWsKy8yJC33e098ocF93B5uhBKM1UlV6vDUWvbsNtkSi6a+5cbj/4mT3OReLDCn/muURF9trDKNTPWRGYXwKRhIzPiUnKd0HdtSAmIpa4THNDpJpPNi6ruiruhdJsRQ4RXx3f2I8gvO39yFvNnbH/lnjJip9QsRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cD5kD5cm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cD5kD5cm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6997C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728990953;
	bh=5HXR5AFQPf8ehkf7HY0zC5W4/XvKnaEDEwA+K/zLKwo=;
	h=To:Subject:From:Date:From;
	b=cD5kD5cmQAt4qtGk/A7ZO65+npkbbOYNERLMflb4ocQodrZxM78XAVly0hBzIFbQX
	 ctwRhxO6WRWWmC8dAg0yFoDe0CV3quFKcTX0OkjaegzULzTXbgSv1XvzB0ZzmCBjm/
	 yTDs3C90q5cU2l8Y9VF89W5wm7P+bLbjeaRIUm/F43sqzfiYhjysMEprxFVbyuXEM6
	 /FL+EqhxEo2gQ5sNYluF1jIotsvjjbk/RCgAppwzz/rnsGAs+szAOqWGzmQcPRH7l+
	 JDLiBl9OgMwg15NMJxd+AWDzYbl6slu1eYsBAbPRIjAlEV+OWRlEXVKZRhd8kYB3Da
	 Z0vn60MXF2hBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974ECCFC288
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899095361.2773.5565368976161391674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1860f9035616c0f6038af95a033848ba156b715ad8f7e1c78bda56640c1a1fdf
Date: Tue, 15 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728990953
