Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165072AD18
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749430794; cv=none; b=WQ0GGRh3jIevElG6IIETNz8hb7VpspluKpYZ3FK6HswxjgfnTo9Yg1AyW7KUYI2ND/D0yQJVn5VABtypQSukLItuBx2ANshj1IZo69NI7V+WnVGLIbqKLDahsvXQFjtA9eHD7OvBkvfAZxtRvfE0gGdTusDCwnIyTq8gOAnBF4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749430794; c=relaxed/simple;
	bh=SDw0giUGCKsa85b8WoNnPKGaTn4p/vpQO+Hjte4cv5c=;
	h=To:Subject:From:Message-Id:Date; b=Q/PTOj+JY/zeRNCi0uyeYXx1AzWBnWa+/VhxTYvphokT0goCEhK5NZPtFdWMGigyE0/cGC3TbRYOJjUx6kINLSyw2i9/IuS10gXiuvbldD7+nX22mC269kg7DWsoTLUSxaTxAZzoJzQajHumcqGPHIzxRWT97ntu3Rvorqjg2Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxQdn0wW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxQdn0wW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB5C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749430793;
	bh=SDw0giUGCKsa85b8WoNnPKGaTn4p/vpQO+Hjte4cv5c=;
	h=To:Subject:From:Date:From;
	b=rxQdn0wW1ZL4crQwbvQ60JIrKEI34UAH+q2ES270dPt7oEMKxLMIIJWRX9XvIcm7v
	 gUb0LDXxPzu+ayFjXP7rwBv9Xwq0/2PqilgEC4mOp+5HqtnZreLhAXiyjPaaEt2u3m
	 z7TUwT/aw0TjhdYV7cxiE5GqiCMdB6alTijZV8KjL2HdgiCevKbc5k/WMS7OieiCbh
	 TAHzWueLxUqs26DmVdfDHkcrihzUhRvHqh2zUV/NCoFFl0rn5dQBdWWfOtH9/zyDy9
	 1uGzOS2RVTrYqXMOeVGpkWgBIE2a/dTJPgNotgrQy6aVa5fLBZYGPVygV7ZGBPX3un
	 5NDJ6oMqH6WKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC07C61CE7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943079357.20210.17137635273952998302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89072ba2fbff1d51eefc361c6d51d6d51a017a393bbb2aa1e65771e8fc8267a
Date: Mon, 09 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749430793
