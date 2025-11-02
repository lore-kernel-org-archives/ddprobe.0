Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126041B7F4
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762080594; cv=none; b=Gdce0ep60uT8aLihjthIG0u1RhoFroV7W8DkfjXIE7fUegtfugrYNQYhbybZw3CoTKmLhyOcjIGCVoY2NsUJ4CeHAafRvyrPjGpmbIYcXNi+EOhZmccpGWzOcY7JFpdSy+cXqk5TYY+T2vXRNXfHR9H3MRUsYbkU+m3G1GGUKh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762080594; c=relaxed/simple;
	bh=HKTXg3bpp6Y0tA0+fkBjP52Xsu7VkA5vCsZI/svY4K0=;
	h=To:Subject:From:Message-Id:Date; b=NZ261pE1tSfmu3bZ+vIeZMlj7Kl/GwruGqw7LxTj+kJ3xHK4Yqxw2EJV9aMnUW4sW4boDoTmEHyRi7J4Y3FOKgz+BxbFb4Ldrd47Ponru+GaAo8+zDedbHkmmpeNkJpOCrEpXCBEbfwe+Q8whEYrUes1b3QPyGwjvc2E6JSE6i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlopu8q6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlopu8q6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B1DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762080593;
	bh=HKTXg3bpp6Y0tA0+fkBjP52Xsu7VkA5vCsZI/svY4K0=;
	h=To:Subject:From:Date:From;
	b=tlopu8q6PVdGn1gtHX2nRhyTxp3YlFYBbrbsh/A1G9OLLu0fUM+tCcpnxD4pbjH3l
	 H6lanlDgwfDg8ig9GQ9odcQ7Bgzw+e8lXlDTqgeLDptUw7cI5xl2bGykaOykCif4vI
	 kz4JjIUUMqJ7z9b6SX7BAux9ozsDBAddeh94hYt0oifb5giEQQ7w34eVSpPsG1VPNK
	 yem0tZCO8DphcCS6OQntsbox9oOdEDN2zEE0dNwGwFzs27XIlmWs9T93NXohHkgOit
	 AVtnHWc5tjZU6qzTJCrC4xK7RXWcH7xyDxWo8pnW+JmnAedkKlnRhT204NryJxxz5f
	 gu3tf+UHpj7tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C64CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208059359.20651.412710629622868685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3171a5c58d2d194f22e9373270614e2c02e7a8925c2109705cb90f882469834d
Date: Sun, 02 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762080593
