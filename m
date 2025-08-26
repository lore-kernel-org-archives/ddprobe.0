Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27860191F72
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756211995; cv=none; b=KHmJn7CjaWPjqujZF496XAXf7uPZy2sMJ/ew7UZAjLIuaul7d5BNDgmv0+NpsI6MI6MCXFrezLmyJQ0WOVhMUyV3yfPa6x5lpTSD82TN3iqWo1PFd4vWB2wBSQ9wokEhFiVOIREWV1azj/WziAVyOOoUOaA4Frd4wxwV1x1yU18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756211995; c=relaxed/simple;
	bh=kGfSItnwqgAoYUJpC8L7SYEsPB306HiVjuxRNQHuJn0=;
	h=To:Subject:From:Message-Id:Date; b=Ze8+meauDmc4eDIH15jTCtrcNiDIBrDrra8785iEqDBBmjZX8aI1cixsJjpO9SfQKNiFi4CuPdSFo9EhF/R1McjkrTXMcW8TVq+p15F1DkLmIRyOztQEGQljStv1ggEgKMSh3M14xnR9vN7ySMEjnC7hOH8WYEn/yeK/CgnDP/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqiqAwUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqiqAwUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC9BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756211993;
	bh=kGfSItnwqgAoYUJpC8L7SYEsPB306HiVjuxRNQHuJn0=;
	h=To:Subject:From:Date:From;
	b=JqiqAwUo51GnahVfSzbuwdK6BYGmcsXV/8qgsf43BkRMmZ80PUZooKX1LmzKfZCrL
	 O2PGS1kbfFgeN+LnV8aV++MmTZKN8YQ9XwNJyi5+rc8Mp0cFWXN0ubqDcfOXix04sh
	 iA2dZ4O+jzPFQvWgvcVQ1PYBRor42w9i/hFjOK6XmdebIO8xe96fWRKFIA215BqObq
	 3KUqVib9lUOaFutog+RcDvB6TgYRS6ZSjaMOFq+vIxtSMf4aOuN1w3UfhXH45dzDAu
	 RrOat6Ksy8kpcUc5xv1Pe1MOG+YZTIe6D7H+hAV8BQmVMUO6wWziuzou2IRIKEhSzh
	 +X2xQ80oqkJbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1FFCA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621199357.23441.18418138261622923396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abec20dc4b03e82a037b52509d8555f8b2ea5a18ca0c77f5b64658b859d4c55d
Date: Tue, 26 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756211993
