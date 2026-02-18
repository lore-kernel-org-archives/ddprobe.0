Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24456342503
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771430094; cv=none; b=LdG9TC/JBUAI5ux9eZ6ojRMb9iNNxTkjWvI4s9J/iZAr7RYoAhdZGG2Q5L3gHXueursYNZvarBnUx9U2Up7LOLTm+y8n4J2tvBy1A8++ycTarqFmZOQN9K88roH1tI52wI59s4QpfUH1IwchJUwkmaE2WSQLZ3o83qFIUgBmQLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771430094; c=relaxed/simple;
	bh=uwTqb6c3ewMFJ4H7gjVZ8mANatqY+lvO9fsYBtWSSkE=;
	h=To:Subject:From:Message-Id:Date; b=igHpY++NFHGIliWbrd19Yef0cxUDmi3wGCJ045f7AOGa4nOyVGz2GD7HfcZuHN41Woy/AfqB2RsdRr8YorH2nEbEqu9//bBjLKqud++fTN2HAk44W/Ib50tsCa+eMLru5MiyxIZD9jhkBvukGWWcDkuV5fVOKDYytxjM0ioZd68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ao6udhzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ao6udhzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DE0C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771430093;
	bh=uwTqb6c3ewMFJ4H7gjVZ8mANatqY+lvO9fsYBtWSSkE=;
	h=To:Subject:From:Date:From;
	b=Ao6udhzYYuL0ivhLTtviAGV8jW4rUvDHSQN3kAjgjzljTYYkeIgejAwNyi+8NX38g
	 1HNJECHpZXTxUn9nwd1hCx/xxPjOa+r37KZj0UjXcMH21JCo41xra4HIF/Jif9aE5W
	 +DBf9XB+Bi4/vEO+R8QX1NW5fajUYoqkh8zgh9xhk9ZCFixD77iDMrCZWZaMV7v8Mr
	 uNK6jtG+tBcxzpi4maaKqxrCjKfQztPZYbg74/HUlZdeOkhOCBTLHFPjaXMQt3Mhc3
	 JZpmKk8KKPtfIrLa3ooMVfaw6ke6JA2nRKh0qTM9+0eNP/X3eAaQ9iYKTzUj8Aa+RQ
	 /OQedZQeLOciQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9B8E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143009359.16798.8238192552681551832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a267d785945cf9e33999dbd6274d4afc90e342a49746da8fb674621ab39f648
Date: Wed, 18 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771430093
