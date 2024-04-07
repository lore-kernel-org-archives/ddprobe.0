Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA621E864
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712511496; cv=none; b=UyilvcCJzODs8JBnYy7o4I/kWSpNy4Vb1alfG76d8Qxj3uy/fDzTK331Y7VQPQU51ghSD8r2XmdTRpq3oiHDB+GZ4fT3nVsKUX7W0LUPKGH43sn5A2lvPNjeHK4xVVgdUotJhSU8CIm0UGS7VXlOAjO6IlMl6u39X3VH2ASHsNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712511496; c=relaxed/simple;
	bh=Td86V4mEEpn/r3IhIZF735ftulvvnWzrCLeW2TKYq2A=;
	h=To:Subject:From:Message-Id:Date; b=dvI9MPJbaG/HBttA67CnpYowNQriXsS/vc3El8kzsjJBYanxsTjbbPbopmWEJlROLTazGqL8RYYUVIls6HfX3B38vsNhFyW3nB++7vG2Yb0O69GTdMc9z3cL8Jpgh0rVtxIeRJaLpad+ubkAxW0QCKvkDscA+tm9Qk9XnzVS9L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngoKvAfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngoKvAfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C4BC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712511496;
	bh=Td86V4mEEpn/r3IhIZF735ftulvvnWzrCLeW2TKYq2A=;
	h=To:Subject:From:Date:From;
	b=ngoKvAfrE7cFiE5b2gqOlm9shdiya0TkNzKkZKu5ODkSL/9g+xPgOH0oEUak4EKP2
	 t5Rf5ZjbhyqwdfI9UPkrtDanci3a94p0OneT+5XBIg60ZKRilsi4dtc3hS5vVpcwLY
	 QGMSTsomF8BcrU65g0MDMKoy+ggNGNNqFHsQErNyA7e0D6AvP4Oh8dGKhdz8Jj+oNj
	 IWio5ZD/+g/4dAJbQ6WypKu9+KAkIdFG6Xt0bOtJoUe7Dr2MvnM14n+Q2htyeiGB0W
	 DTWz/s5tHjlWyyOczDMYcOZ+yQHkWVMjn8uPVvSvYxQfnKsaqLt+1ovge9RepRW8v8
	 nQFxVnSvAwBCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D59FCD128A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171251149637.20071.2312691692776591869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d76f6e43595a78f99edbd1e46f1154f8086a1cca99908793b57a8459778b9482
Date: Sun, 07 Apr 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712511496
