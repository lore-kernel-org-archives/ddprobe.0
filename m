Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233A921348
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765330374; cv=none; b=Uv5CQZj1VrEYqdnvq66GZ75Y+8CSVNcecH/ZYIXKSDeDRbOeU5K28dNiol/McFyBfCM9+fOUSp4Db3X9xTUhohuxM1QeRYDENzyo1h/bvCB69BdkD1mxoxwB5F5PyyLSF6vqctCkBdXzgNNYb/kBx+4oISk+P+UBDlZCXQyxZPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765330374; c=relaxed/simple;
	bh=iX/gwILV9Y8Fb/uos8lAA5/PnSRBg6Q9zF2lYVEq/j8=;
	h=To:Subject:From:Message-Id:Date; b=QchyB48sSsXy2ftyKqpFpxLZo5fduY9CSMMdZUf3TqRamdrtv2KdzDn+V9cB7Bl/7XZ3j1wxumrXfyQUEQRrHmhM48hngzi7j4XoDy/XnpXED/2+d1ziQq8x1AXw9PKJdXF3u1LJf4VwTs2xx9CRpLGC4q3RCXO3M2LKHDG7O60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vd54GdMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vd54GdMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD197C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765330373;
	bh=iX/gwILV9Y8Fb/uos8lAA5/PnSRBg6Q9zF2lYVEq/j8=;
	h=To:Subject:From:Date:From;
	b=Vd54GdMelQX46o4PQVUIxBWFUK1+s2X2r1KIgo2c9BRkvU+mjnO/6eDUcgqX4FLBg
	 t6kUTg8H2Q+ShIMhooJu48aSsbBvW/H+uxQ34SZRWM05eO5DB/YP5QXqTqHZB54rpt
	 HPj84XK7Q/zJG4YMaG6XjpZEsccQtyqW83K1jlbxrtUFrPMPHebl4+0FPlaSe1BOYy
	 ocRqxhtxIYNoKd8tb9++r5CiQiCGLhvvD3I4fvel4mNYwMMK93G69lM1iJn6VX/xgx
	 tYI5LDFJnwlg5IbjPl86cjhg3Ae4Kzvg9evHJMGfaCZwJdiHstgLD9yrQmjj8y9yL4
	 gLqzAvlaYOpQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98141D3B9B7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533037358.1855.2819977940266374498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d47fb1c130d090b8891fb6b2a66a3373988edb65a2a1a12da6b3c448d1de688
Date: Wed, 10 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765330373
