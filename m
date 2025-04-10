Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF461DF258
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744299595; cv=none; b=Zcj0tFHX1XCMgcdyuWbaHqAGNbxfinspzcxIhyx/wCS6/QXOIwA9I4RWTOX7/zPttTyqbCDBiYjreFRBsJL6BN4xUy8zydl+y4+Szy1kZOMnO9y9LYNYovwlLyv5VVpptCc/uQdH05yvipr1cWLeiWNIzD+XdVrmHgtha26EVXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744299595; c=relaxed/simple;
	bh=CLnfAtPI2Ub6EAkxvXuwVl+SKoGFhtKTkKoFWBej6QE=;
	h=To:Subject:From:Message-Id:Date; b=BwglLhqD3ugL7aBNJlLn6jCGN0vFxs7TwZzs1X9Xo09xKUKbYbTgERBV3sYQS84EtB9tHHNY5RhQTPkIWCZ8U3uv6bbvmZkdQU6sIZ0lCiy0A3AYPBNimH19Ztxb+32TzWSToynoadnYz5pB+3Dw48zi73VxkN/2mGzPf9hhCFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ccp3Kfwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ccp3Kfwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9427C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744299593;
	bh=CLnfAtPI2Ub6EAkxvXuwVl+SKoGFhtKTkKoFWBej6QE=;
	h=To:Subject:From:Date:From;
	b=Ccp3KfwroJ97H2s03Bn1Iw98ExHdoWNUN/iL4LyPi24mU/N+T9q2WTmh0OoS9Te+0
	 sHxjnIsniM1zR0cE9cgKuyyM7WdBFGlBy36vwjFFS9FK3VFiazQjg5u1J/aIvEhAEC
	 Rb5/VijeH+/8hKgeub0npLnm/HhgAJLCNLJd50Zy2oVEGBJgXF6P+l5LOhY9yV3wpV
	 Hwuw1hJdQoBltw0nAF11UlP1/mWPFk7T7ehRDdiUGQU/g7xpJRi9m09/tMTU9F7E8/
	 2b+8P74AnvxcRtjLu1yvRD5eQ5U7cem+X4GCQV/HeE/Fa9BT8oCS0V1vBNwT6KcP6T
	 OtAkMMeV54jBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC2C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174429959358.7946.2522840200640724859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c759e6a14b7f8cc4e83369c3ad172876400349b4da312c2890661c22c7d97d
Date: Thu, 10 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744299593
