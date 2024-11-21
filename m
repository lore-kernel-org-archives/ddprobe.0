Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DEE1D9A6D
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732227954; cv=none; b=AUXPXw3g0U4T288JsFChAzEhU0TefFY4vKrszvLGDNQX5EnE0u8uRMYLTHm3hwnKLc3stZ/7J+pqeOkNZp+fc+QPgN8IJoemq/XDyskjJC/d7y2D/gsfxgK/3ib9BZXmmPfOOG226xjwW9XkIBZG1itwpzYbXqO+Ybql1cgWPKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732227954; c=relaxed/simple;
	bh=STA/VkpfrOoOWWSf9chpVCuTYEWOmM+f1d3tDzO6c4k=;
	h=To:Subject:From:Message-Id:Date; b=ga81y1zX/qfHioWOFpttOxPhpKvjgjThHrMQOFjaxjqTBLiLKPJLEoc0jH0DAwy17JHPvetsLOIPaWQnFW1P00rfXlR8jrHpJlBpDrVEN+kyKt5GD38wc66W+gQGCQjkDGKz3F7yw6F/qPfUKpS8sExg+SsHYJ7r4dkeTCG8AEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVQR9zqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVQR9zqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DBAC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732227953;
	bh=STA/VkpfrOoOWWSf9chpVCuTYEWOmM+f1d3tDzO6c4k=;
	h=To:Subject:From:Date:From;
	b=QVQR9zqz/akPNZ7OJUOcCYpSNFbpEfrRUQ5skMihE6TwIcAcy0TvmvRN8KBjH85Nz
	 ugd6xbpIDHphpTziOPy22KBycC0zHxZY5s1Qp+l69yxDQtO1SuDRLn5TfRvT+txWm7
	 2pA7avkVDBCna66C9Njxv/K0I0Jw09KZml/90IhfFEfkVc9YN55/w9qYywDY8Rw4Wh
	 lZnorrUzOdIniSbTHXiXGPStcleznslmZWqf+utNzIljKo+LuZB40QeyiOg7BQLErz
	 5efq0U0/LF0XSBqMDrnBXYIJbF/vgrZoskqaFdfD+ppOO/AFpyIqynF63kVL56AAdW
	 nb0CWrbHfVYgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD722E64025
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173222795365.3418.12204117031715932297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741049499faf075a82012c39f4f4ad962a8627adfc5f07b78a5164f55a1ccd37
Date: Thu, 21 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732227953
