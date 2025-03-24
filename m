Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6FF1A5B84
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742821794; cv=none; b=rDKk6zc9tP0/koKmJsFuhvuHF5MEETfbqBcWQ2gXicsqpAA6BiOqHFdYwtVzTfBJaLIrGETJN3JoiZh8hDvoFvfzGWyfVvIZa7YXgBV2KMdzzlsWrH6oi8Dk96kf1p5XvIqxdh356cQeTftNTVzfO40Uye3XSN+abJ3a3hTKI5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742821794; c=relaxed/simple;
	bh=UBW0N5QyQDMLldX4RqR6+DHgc9QGBJInHqHinBMaPY8=;
	h=To:Subject:From:Message-Id:Date; b=SvxklK2l/YpkdiY8b7of/dhMw3TC+8wR04zPWFlTz719mWAMfS3bzUoovXrGQADQZszlfyB2qQWK8dUFBOv4X3x5wQROdQY7D/HvtQo+DUxrwk5/YZxC89TiDpOHKJbuhIV0NmSrBU6M1G8/YHnuYtdsZ+H75AOfNUlCkLwOWdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iu1VGBsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iu1VGBsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A8EC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742821793;
	bh=UBW0N5QyQDMLldX4RqR6+DHgc9QGBJInHqHinBMaPY8=;
	h=To:Subject:From:Date:From;
	b=iu1VGBsfIgZZbkx/OcAoMT+YENNcRBy5cA8DUoKfqlfndZ0pZJRL+EhaUA6V4aadC
	 5XyHS9Io9blbftA/gDJtQRZ5fgs73pqbKgpWlLhk4Xy05ROXIowZEzqwcwrahWZaYf
	 btItQKAJdq614B9cCBkayXUE4VgHfXB29U+GmVSVzNUSpD66F86L0FI0021LZ+y7Un
	 83edm/Axb6Xp1AMQnD47UZoXaAYopwsmqMie6YQXPemI1YBnVQBiZHZ5r+RR5TxZcI
	 TueaYHyo9GkfLYo7wO4Ult9pEsiu459foFVkHikVLy+ZMF9YIXxmUlT/TOulZI/vle
	 2fJ0gvNikyjYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F24FC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282179361.21714.15082159856910582658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d852f0844384e4aa2be44527e1cf13f147a0585a2d831713f446194280cf5828
Date: Mon, 24 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742821793
