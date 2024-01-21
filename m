Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BD6125D5
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705814897; cv=none; b=i4FKGj3wELgs9mhHWnIHt+WrMUJiMjCpyRB/4oK4tAe4MsVk0XQvdxwLtbPO+7h+ZXHqpjZirWwCIPY4CGMql906ddBwyzMThMpMlGoGB8mmU/Wxz1VBMXsf8RrWPPKOr8mP9etYtVbVImInjVPeBOvs/m4z/GNX9JEaJ8yqggo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705814897; c=relaxed/simple;
	bh=hy7V614err1QBFsMjZFc8Q8uaqXqKebZuNBMdnpwzwY=;
	h=To:Subject:From:Message-Id:Date; b=SVTsv3Tr3b/87JjQl7DUS8Hn+Mzlyp43r7IW6SNKImZUCCjURT6CL77hh/Le2/0ra8uyzXzbIvwOJe4E5MJ8HjK/UMj9hu5KYxSDNP7uxK/e9IGCQ27Sk5rb3HfS1vE5oAKvxLnlQDvOEUUzOowfUePhI+c9/d9zwEfLypmDFCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIn4zqdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIn4zqdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79572C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705814896;
	bh=hy7V614err1QBFsMjZFc8Q8uaqXqKebZuNBMdnpwzwY=;
	h=To:Subject:From:Date:From;
	b=QIn4zqdkzeB/SbpKoxkH3J6C+9X7tZbkQuLXnBoR4pCXG91BB+D4MwO9JD7wmeFEd
	 gtGqziF6YniGeQ5XNonuKnAWl7Sg7ud36jMWVQlDiMDXQnxO3K83liagXiLxd+8IKQ
	 7dzzhQE9QEOC6HdOULRnYh2I6eh3rDxqtIBoJaqxG6eJnWe22QyvkWLXY+6t0p3sL+
	 RXjXpPkGDUKoHMgoGWopIxQkDl6dtPm4NbZlH/Wy/eekw7Gsgpa2ZFxLSLDk3cNQwY
	 /FhV5q4d3IaJb4+VIMyEP678GAmbenGeAZmIoCf2tTu978zI55qA5jByjMBN7L9I2n
	 QZsCb7oLfNB7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C81C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170581489637.17501.16501128785457082411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f08a8a93caccd002603892d62a8abae9161990206ed6cf98126ee97d0363b3
Date: Sun, 21 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705814896
