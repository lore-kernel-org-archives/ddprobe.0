Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499001DDA20
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743110994; cv=none; b=XG1/GBHbuD/PNYTwP9rovzfLl6u3WTgmCv4QDeOK2tkdJPZdR+pfQfrQ76KV3zsxZHAszubu1WJMw6mmauOFtzU8S02h5NS0WLiIYEyuxvc+GhjPOeu1BVWFk1wFjm4Z+Q5cTx4OjXcvuo8kqVzqkOVi6jPe7hNcI0LJ7hWf9Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743110994; c=relaxed/simple;
	bh=epEkxlaR0OnbpT+QcqppkTakPhLtRayvcuOVFbSg/g4=;
	h=To:Subject:From:Message-Id:Date; b=I2Ox05vU/UhwsmyW8OSJ/t90VUj1pumB8BWwtAIeH0uWL5ElNNv17D5hneCnJTe887un4H+TWpLOfNoieeye7WMn0ggvQqrBZ1akrumWkmEf1LjKzm4NhqgiZ+hKKkK6i2C78MWxVLMxJWuBtzOJ7kvlDS8hEJe6KkN+8Sp+lJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b14Gl11S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b14Gl11S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0CAC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743110993;
	bh=epEkxlaR0OnbpT+QcqppkTakPhLtRayvcuOVFbSg/g4=;
	h=To:Subject:From:Date:From;
	b=b14Gl11SdN/DDvl0TjJ/fN3nY8F7ma62syxV2TFqZdkXyBTM802dkc+Tsq0DTA+Wl
	 uXfPJvud2f+gy5+QbNrujSZlkvdu/clvwO6i8XohGy6XSi/i3cJ6MqR9uLA9kX9139
	 c50BtSmXJ2KYHoFGba7c0QPbqe/oL9vl+pWiBONVhe/eAhBUZO6WCAyYYidA2z85gi
	 EHnRI6dXu2sLTlGzqMniWHQvNVjrPNOvbu2Mlt6426B7B4vWm6txu8dZ22e2tz8Ijb
	 Gf0Q+HEFSX8FTj2aK5knsW0SVqN14i8w2MfDOBeFxn71W0f5hXAXi4I+9ptrmGQsKc
	 KX4e1SrQtYlbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08B8C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311099364.30259.16063112030454793211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2967110e2181520d6d1191a97534cc0d5631874391b0c09752f74db3eff3722b
Date: Thu, 27 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743110993
