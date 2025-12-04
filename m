Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317C133D6E5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764849774; cv=none; b=CdlHulFYd+iQynSkLol+ZKH/yQtiHfdAAZpQz/RoJX+VzBjJ4dyuKKmapRrZE3KjeA4756fFRjWaO7WWTMFTAbeTB5Kmy+YJ5Lr5BpLPmUbG85fUAFIveTVYk2NQ7aAef+/a8j31tU71XzwenDRto6hOTyrUtwZL0zXfeAeJONY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764849774; c=relaxed/simple;
	bh=VGTqk90Gvr1bGpRjiTDwRp2l82eQtDyKelMUU0yp850=;
	h=To:Subject:From:Message-Id:Date; b=u+3lQ2LquC3w+igX7epJHgrdk7M1fLSi126SADPgDBwovPWU8pO2ZhpGjYH861e0o5DGVtrRmeY+RWiclFLhQscA58TJpYRjkRspffXtmscB5gCUorY4ikHFlcEV/2OLRL4AGO1rDg31j2FaiBIKjRdt+RijTT4mhykv9qB7bGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/wWH2nb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/wWH2nb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BA6C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764849773;
	bh=VGTqk90Gvr1bGpRjiTDwRp2l82eQtDyKelMUU0yp850=;
	h=To:Subject:From:Date:From;
	b=l/wWH2nbHxg9eTBi0h0vbmWdiT+AQd8tYhTXn7TN/xkqdA5gvGkgIjy0ylbawcodu
	 FvcJNxfBMQTpbVbDXQ71bKCEPfYBbWWOvcXnm9Kj61+7fsHWQvqy+5a1Fl8qH0aSp3
	 NJDidJjr6vV4eASgto+sjrEjueCjtjHnDTBQ5+NLuE6r5Eb+y5ezVYXD+7MVVXYHF2
	 /ccyQ56eLygK3ZXckerpEOGqqs7xLHj/mvgtB/+i9QeNif18w4yiyDeJMamElYh25C
	 4v+z9WlN7PPsV+VFuhBee1/f1aSF+6079EDviOgoxcmCcoGpjyIGlkW27nbxFq/NUr
	 ia/v1/OiYxH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F32D1F9CB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484977360.15354.4759540121703700272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10ada410548e7af7fab02c19fb5fb7461b509148f8395076b398094dc0094c3
Date: Thu, 04 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764849773
