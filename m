Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC645268FF0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747951793; cv=none; b=eWh6+pl+kAtzPgESVk59xrIYlL5eS6kdSVq0Qo6SzYy4HltdATLwCEAlyYb9WjwRjCXWBVMJASxpfPcIkR6gLE3kxH3haTmCUzdobSZOuBjeJLX6pzUfgZR7aTf5OeknWpPiQxPHrxJ0Ln55dLTUftMQVWO24P7mWbF0BOD143I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747951793; c=relaxed/simple;
	bh=+jVE261qmDkrcsOrXN8SUMgfo0JH+eZZKbQPd407C78=;
	h=To:Subject:From:Message-Id:Date; b=CiCYmrO1mQcF10Uo8N4gvbkeuZsbIkZN83rZPNdqAwAMTMg4JA+Sq9eLyJNATCXJnWH01IshJSJ+HeaQWGj1RNWzMpinRxS5OmgcTasFrFrSnk8UdEdIVdu8f2tq4uIEFuzVJkUHSO25MH4gTJFbmwbUYedXk85g0dsNNlN7Xy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXC7raNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXC7raNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC39C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747951793;
	bh=+jVE261qmDkrcsOrXN8SUMgfo0JH+eZZKbQPd407C78=;
	h=To:Subject:From:Date:From;
	b=dXC7raNzQfxn74kbutAvNNHZTTe8f3eCtcVzar3ogR6R3rAoKU0DZAeruuZYSLARa
	 U13F8dkVPTjEavb50638yPdINg4nWPaPeDzR2esBiCTLeZ4xuUb/u+Wk7h+mU1Ab+/
	 BMHZxd75KX+MS8k9ZI0FjI4V5h4EwzvwLDhq8YKuNgietQLvrogRg3vhLPxbXDsvyH
	 e44EeMkJK1id7gDXGwcrCQAeWyhIPmuXsNCO/YMqRYbCwVFGDch5SGDSzdzadV2nKL
	 Jz+kASh9jzZFD+ivKE4QdLX7JtfWlpvrZb0xtlVRtwGT2YNZCg2scmKHGQtIL1ATjq
	 nYHhyznjY7f2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F511C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795179357.23287.3712408984620912381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6cfe3e56aecfd8d63421a8f3c6f27704f94478ff41868955689ef210be5cb3b
Date: Thu, 22 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747951793
