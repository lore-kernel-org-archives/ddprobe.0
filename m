Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B00A7FD
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716690863; cv=none; b=pltFoqQcodncrEJtwdnTPFVuP1kqhMeh7zQMP/uytN2fzwR9HWgrJWPkE5wDqDmjheZBQKQV8Y/ZATlhJr81u8r2YHu3/e25a+37Zg11cnUOE+goQ8QqqLXVkOtYlod8Pu1nIUhXTPCvhrBIobMiY12sreRdoBwVmOJ2tgy7F70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716690863; c=relaxed/simple;
	bh=JiAvaFhzNOcTsr6/0QQtezeSsJZkUfKNjrSLrI3OGCI=;
	h=To:Subject:From:Message-Id:Date; b=bSw5LXXIi/w2foOXmmfdDBffjTe8qOmuQ6JM20cq/gTgH/31hfnPqNvpW8QjeTfMZE5uRwXeJakfGh3H38tvj1/XghOXBRV+AgjrNzY0iXsMHJen/F+HbRArImoIfMczZPHzKBUhD0eWGAxhrVelZt+cAmeCbroIscpcZksa9v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7SgGEJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7SgGEJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E071DC2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716690862;
	bh=JiAvaFhzNOcTsr6/0QQtezeSsJZkUfKNjrSLrI3OGCI=;
	h=To:Subject:From:Date:From;
	b=G7SgGEJvhF8Nb33Oa7N+iLrp69IpyAQ59uud9gdr9NbQ+B5k5ICPRVjdxFQqU8GQ3
	 XRZLEXxZpGmzKfR7r3lRf/VZUI+A02VOpahQavEwDoZmoQOfKcGKf1RQV4VQ53VKih
	 EjCLq4VIeRYbEIPGkxyMS9FluOdBSdxtSFwmzl5Eor2YbAe9ksk1cN6dMcZmD0FiJ4
	 2fwCbe8kxRMH9/tvV6bJpxKfWdQe9mIWffmsGaEFO789etlINCraCdv5wZeUCl5rjB
	 eofHV3Mh23IZJ1DxaEK7wZqQSRrNz+qbs6XjK60kE0cHcFc1lb2F91KyPyNPC/uVrP
	 nFNdxPOhsyBuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C523EC25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669086278.7010.5185370591049327711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bae3fe23483871f56089d8f7170b731cf4b0422498b5a21eb2eafd7bc484e2b
Date: Sun, 26 May 2024 02:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716690862
