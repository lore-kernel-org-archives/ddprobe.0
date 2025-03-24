Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5612641C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742834994; cv=none; b=aHuux3KTu7A5y7PesP/lMlV2iXO0HcjXQxyGiPbuVnMrrt/+ktp7mGGSyE0+NJPp/uXyiKqGdyJ8QUe7IYzSx8mh+QmeIFhseppTfvjXeTi5jbxHnoz3oxVlVTalRXhv6lDUMeaP9nN71urr8MpWLyAlOlVKK6T967XfBu+QYP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742834994; c=relaxed/simple;
	bh=QnNO0sAbQd7nByqYIibnOaVS90xWU782nFIcGPm7zjI=;
	h=To:Subject:From:Message-Id:Date; b=Ti2Ogpi2HDTAlVqq9qwStySG7kpi8VKVTaw3XnpTQmu/HiQu8+UvVzxzuUDKiidDEF+FPPkE/XPh6cVK69DMCH61URasuiTr2R1BHmBFx1aDBFdrDdtXxorrrVPSE8G/xAN4Y/4VKrtoNeqfyEJC7dUHrasdfEXiNp4IuzxLc7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfQZJnDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfQZJnDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B892CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742834993;
	bh=QnNO0sAbQd7nByqYIibnOaVS90xWU782nFIcGPm7zjI=;
	h=To:Subject:From:Date:From;
	b=tfQZJnDYsb9iLL8Lph9s4wzyuhfCJQ4Ncw1ccut9G5jWHv1+ga05eMP4BYzfkb96T
	 3xagR1gGeb8Mhehrmq3rV3A69teel2lhkhkJPKu/rd23Zat3QDoDqzozse+RTtpA6O
	 C56ciOLIaWwOezW5Xt/dYuqG6HmmMrWqD5aaH58Ucm/DuAEJ34x6q0Q6iTFHpU7YTU
	 XUrcjt+LeS8GWs7JnEY8GuDhuS8tb3IJMNXIBy/dk9NlrK0UlNhU6t/VitnVAQPaki
	 EDv66g+0+6xUx9Ct/DrtDj1q8iXXs5ybIbfi5F0K8+hqjRJGodai3RBVwlXx2aUUAH
	 LqcAFdk1bv3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A547AC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283499366.4776.12656748672817605290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df728986d36b2ef095b1f1372fc6c0f65075f663d406fed9056c73264ba6a1b3
Date: Mon, 24 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742834993
