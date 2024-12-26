Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3DB12E5B
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735228554; cv=none; b=oKGDljhYcIxl/lpLDdeLmUEhlXwSbE0cg+aREGBU8dMbF0iqOhpiixOCZAYh4XnJr7JjTGJi7PvCT/8XVnL0eP9mjdp/NiYXnBD1UftWJy3L9Pz/qs38NSntnoWyTOadyzXa57kyT+vTYd7ZHV+S9bLT+1kzHk6ZsGMii9O10Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735228554; c=relaxed/simple;
	bh=+XKjcpIjllFyiwy54smzRgJ0u4RY74PsoX9tus0L0dk=;
	h=To:Subject:From:Message-Id:Date; b=BoyAdQ9/wXwpGHM4z8W2FAqSqnMVocY8lvJBb4GR3hu4mnAv845Y0UvY6WvdwXt8Rb9XDN9/oIqEmB0Fxvg6j9Wh4FGU9kMMnqQ0nYEF5B5p7XB78jATTfMdHXWeoCKTEGKfawBtvgZHctwS6AWCbGJL5XbtWEXAJCqPlAkOqbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIkZ5Gwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIkZ5Gwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE782C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735228553;
	bh=+XKjcpIjllFyiwy54smzRgJ0u4RY74PsoX9tus0L0dk=;
	h=To:Subject:From:Date:From;
	b=eIkZ5GwifGdR4kVvLC2zfNk93gyYe7YqjdV8/DcLmtaW3lBcy/uQ1n+H8sIEO1GgC
	 1rRwXjN0H5jp+XHI64ERWllKDhfpUfSv+NHFkiU9NoFzOf3nyEFwTyQwpmb3FPahRD
	 O+vGoF+1NLDQh07TqUT2N0+7CKJ+x/ZvwoLTZVCm02ZtvHYpvfLkhcCuPER9X2qd3Y
	 2dxqhngc3EF8HXnZhCOI/6GQtd+luKcWGTBFzz/hCKdkAPlzHSQ70W/VJQhKVmJqAe
	 ygCkV1yCI3YfPVDhxMEomwTHz6bhoKYiTTnN/zA0Xq9JgtkfQeHZAdt6YhnmCIS3yp
	 INTud7EN53pDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98611E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173522855358.821.14852346688245177661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f149651834ecf71483daf6ad801dcf2f1eda58bf5e69226a24bc52e02ab8d9d4
Date: Thu, 26 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735228553
