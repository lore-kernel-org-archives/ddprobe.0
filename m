Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC426FAF
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706402897; cv=none; b=EdC7APh2Kv1ImRdP9UunR0xW2zuQva9jK9AZ73sTqGgEaXRvM7OLowl3SaCnlzMlvq7Cdp5xiOAsSUaoNgMHHYZlmYXXtG/T36Z4sxgauTC76YHFEVDM19NJIz5+EoHO2mvifThiNcDop9C6gIBoQga1Cf/zL9XltzoeCfNilVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706402897; c=relaxed/simple;
	bh=4YqsqzMZkxynWMqOYOlvRnlBCqpBrNbWQblCtupHxgw=;
	h=To:Subject:From:Message-Id:Date; b=Vrj5cb7V1RNhbIzGU4zP8LAJwbde8Vo+Sx/aFsnmCfthhCDnzsOV6KTcHPVaOGJ35GenorgpRWvleQeMfbwicjs07IE0VFoCou8TJZmOE3ubj9lUerWhO4lk/zRR0e4qt3ay7WjRyc/vMgL3XY6d3NG44Lx5r+LRgOTuiin2uYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEhb6qxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEhb6qxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74235C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706402896;
	bh=4YqsqzMZkxynWMqOYOlvRnlBCqpBrNbWQblCtupHxgw=;
	h=To:Subject:From:Date:From;
	b=TEhb6qxQs/bEZTKBJK4TYkXgacGID5ATViAf5X04MuuM6tjSROfx9YZB33UAnHU7B
	 mdwumKpaCoaKTX5FVrnnjebjimlM03pD5QbDyNzo+zjoyZb1XB86IFvS6dSJcTWJBp
	 f8Tn1MK8gdSGYUa/0iiuTGFvyu/WnVvu9E6C11V8KdwxWrjcQFhYfLodjLNmunUbNg
	 OF7ZjoV7YlsfIkDkt6UK5jta9oehaQ6T50sjfE49FEqyBhZdENH+qu1FTyuszbBFUF
	 BcvjXq72wj/GP+Y/A++H+Gf+49XT00+O48RwnnbzURgUF4apuV8TGm1HX+TfTp8Z1b
	 UqGNMP9KhSPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D300C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170640289637.30914.14425471777945711289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bfc8d0cbeadcbfdc2202be8ef781424d4d696238250d2ab34aaeaf7763ad040
Date: Sun, 28 Jan 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706402896
