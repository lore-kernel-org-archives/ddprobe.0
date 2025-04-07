Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0F723A9A2
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744024194; cv=none; b=pGum4L3j2NPqLQNBJm/YZWNlFpAxkb32JaH6nJjn1UIKuIe2n66wJJJxQm0Ay1RgmLHQ9mzmk1v4bogW0luBfonoi0UJMnJbMZmXnB41/IlTDihWN4lsaq+7sdRGMWamE4MBpFKv0BVC+bXKfhBxOmkOvHYNog5BnfkLS5CcS1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744024194; c=relaxed/simple;
	bh=8UJSDum8Z/qTzHpYHjR+QlodeGiTVz77ERaDSflfkBI=;
	h=To:Subject:From:Message-Id:Date; b=iAyn6S2f3YJrUijpovANZAgaUTFoVwYTBetoLBnyxKIzlU+PCJiumKCKQwuA7hWLFUCwaI5jH/GmVMTiFigpb7Q0rZvtaS5TMs/RzN3HmNIW9Wq5mh3rQfvCOMPnLsqwwZ2UM/7sC47iN0QT7k0PkWZLq1/C1dl0dTrj+/VjypU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwTFzqzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwTFzqzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3700C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744024193;
	bh=8UJSDum8Z/qTzHpYHjR+QlodeGiTVz77ERaDSflfkBI=;
	h=To:Subject:From:Date:From;
	b=UwTFzqzXEtjswsed1xIpxlFbqMNjsgWASvxMYxg0uBQRI1TL6LVk2QPsQYU5SgrOE
	 yT+c4zmDb5FqiJbPOIvJlFhU1vXc0CR/AWzQ6PyHyx44it+ly2zemaa4y4l8QKpF+B
	 nyZWph91VOY6lJ3R9+hZVvo/sG2BpF9cXl25jSzW/I0SQNnP28v5epMkmB63ic+UNd
	 f18K8kYvDlHpczQ1CnOW9NnHd76AD+mKGNdJatycOfy+9+duWGY5+ak5NjCNHOItI+
	 YZYlmfE2VxIO7p1UTsMCbV0MKHTGF4b2f8m1NYYgE7lsrySYl1xbXVG2gnMm4OIKv9
	 8xlYOGhaA/K1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9346AC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402419359.31356.9305573557598695359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd5b50dedcbfed850ccf3daec54f46448e66c8462a387b0a728a2c38310c55f
Date: Mon, 07 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744024193
