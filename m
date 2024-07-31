Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D73946F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722404754; cv=none; b=Ry0pKH/ZglyJ+tul654dFgFsYVr24fPqYM+jtVP4+IogBOCb9Lx/xDOVHzhNZpARYAVwnXB/PN7GSnwtGakuuMEKaOLJeSVmIgOTyKot7CBzxGYI3dy4d63mx9b6GF5zi4sETmEUncSGd1jeSYrksYiWJULLS5mVqJHdviPH2rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722404754; c=relaxed/simple;
	bh=Q0Il1CrS0N6cx9nQwkTgs3f/sQyj9yqkmG7qWuKAXho=;
	h=To:Subject:From:Message-Id:Date; b=ZZ+YmzUUg4c2ZX4vzFQjV41CytKy6FjvmytGmriROYtDgO6nQ7rmzc5HTjcZ21hJ7rJjeBwjSVyj6CvAInUpEC3dz9xPZk5IT2viQvGQi0J61XLWzZHcddZaU+vmP7RJVUFvmUul8Dgok3/1aTwaM2SmopJI1sKEj8w/9O5QqYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLU9GH7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLU9GH7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3A6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722404753;
	bh=Q0Il1CrS0N6cx9nQwkTgs3f/sQyj9yqkmG7qWuKAXho=;
	h=To:Subject:From:Date:From;
	b=iLU9GH7fgKPWwB7UER8oQcZI8m/vc3vD6CXaf+qX1AwT3yXRX2gaEHAA9Cm+zFxyL
	 TKRigkp6wXPi0sjXBSIfjM4DX/2v8CaprYq65J+VboyBMlPO34pWMTBmCS/K+43b51
	 WqkyzIcuWP019pLnvyTW1hPfRgl31LRjk3OcyUeb0Dyg40DK/fooaHEE+WWIjI1f+L
	 AHvuaikkEW/IS/7g3IirETXkdEJX5rKI+QIMQr2jpZtE+2qtGJn7iOWR1rn6D11TlC
	 Ez3zZ2sntr0KJI4MUkKrLF+Brq9alZNGeFVJTHmVUEXaMjSeVwlISsfdnWIilSKPJE
	 VQhVKbuECMXzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B5C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172240475359.3194.7989110356658956912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9acf017f001388cbf3324fffa43d12ba06741b0344171ba832facb701b150c11
Date: Wed, 31 Jul 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722404753
