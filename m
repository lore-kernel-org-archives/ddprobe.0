Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2596F1F938
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779944554; cv=none; b=tc55wFOud9GKcIHnWzfrdkZJ4/BSdH2p5lawB6WjrWbPSS/OkIslBzX5Oq4wnNPy8T1hEdeFLVN8oavGeTn6BKEV7tcrN2E7HJn16et3rI5QXtwPzfTSznQTdqaBDfAC+houzPA4bLlNxFVMeDndaqXoGvprb8IZYqhvhLaAzrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779944554; c=relaxed/simple;
	bh=OUlEkjOdORZfmei+eP7iI9jEhSq9NvsU/EzYPLkcKsI=;
	h=To:Subject:From:Message-Id:Date; b=VOrsZT9+Wuec+gtj/pxCWNiyvrC1xJ5LaOB6+c12/Jy8JqGJAVkx5oc5CCygTdl8Wg0e3kHSpcS66q25DeZrtwTDVsRLsjzaBdhu7iGgfwilR/M4gF9DUyV/sO4FWwQ6J83dTGbp8GFXSh6cQu4DzB/022R1v8FYUf4EM7LSe3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNOx1DR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNOx1DR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E95C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779944553;
	bh=OUlEkjOdORZfmei+eP7iI9jEhSq9NvsU/EzYPLkcKsI=;
	h=To:Subject:From:Date:From;
	b=XNOx1DR1oS6kCclzQZ9Fr945QZZQPntx1yFqcW1TMWRarVkNNRKlQkJv6rPimKh5y
	 CO5497kPmvpdJRTXBzyie3EmHNMVOYwnbqCIFjIL4pSnCmaRh2i2ca0GsPTgz6o805
	 KLczs4r90rBmDzjsePEQ7CntElxgSybQ9K4cjDRAUCnRlhfKlLXn5PYe9F1V/G3d3K
	 Ufny/nXM7rBz+RWhnk8Mz+w82hrO0qh6p1T1OBWHyb75T3vdTPnoYDHgHRXiabK6ZM
	 rhDRS0nxi6qNlA6BfZptqXNoKFwwTsCqNkStmR//OaLlKQqNHsnE1frCGL8QB2BRwJ
	 ih7XmK737mmBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8343CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994455368.14843.6966071488373333506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5f4a72d9f12acebe0465fc9188f8b93ab5a59561269505d2bb45cd095a9640
Date: Thu, 28 May 2026 05:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779944553
