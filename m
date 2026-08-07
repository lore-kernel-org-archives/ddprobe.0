Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B813955E7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786128634; cv=none; b=EHtH7IPacNZe+1ql7WVWvAzlu5UizOnA7x8IhoSxLc41dvJKLQutx2NFkgzL5ahyzum6+X0O5eBb/8JfJYkeCWYwCKqZj8ymrvdcSpYMQnw4XnTDk4duzm0sYTTbyi9r92FqEcv5iAOrSPCXO/98k6EYWD9aIxK5B1HO8d01cwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786128634; c=relaxed/simple;
	bh=ygsv/lBJilSAgMlPl9fRPoIKjuJEIe80/WkK2d5EnVY=;
	h=To:Subject:From:Message-Id:Date; b=D7iqVAmTg8kIKtxr8Aj4P6VOrIfPi2GFwSAxKXw7xZ2SOTL9oyog5fpR5UP80qSs3I0ylUBmHo14fl4hdWctThyX7qCdYGQjq9ix5dyTGQ4xCjSSRUjdlqGMR1+j2ZJWd/NGzZKiRp5XZdTeViP6Hf9gFTrJAuGTFXiJCVnxsm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5T8OOdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5T8OOdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FF4C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786128633;
	bh=ygsv/lBJilSAgMlPl9fRPoIKjuJEIe80/WkK2d5EnVY=;
	h=To:Subject:From:Date:From;
	b=h5T8OOdliwe4Cf5qTiy7Nn4KRBp/6HKq1uQx7zXRBnM/U6Sq0pKMnS2TmrLZnMzll
	 79zMVdLNSajJZtWGzIzzt9SIAeGpqjVGGGOyUB02ryEfvs3I4eSvIngFeH3EmJFZE7
	 ArvVl2mBdPcq7W6H+eDgi7WZH3q82hQOVOrjNEBsXhyy6szhLVGVNA2DXy5UOBcDdO
	 rO5sDYiuyvbQzBZ31QUbpm++vPC1R1LQ+15BQsyy/Ffx0E42ru0jKTjgBSif9kLmvc
	 HkgNKXhAWrdWs5xiJBMZYPSB0Vqk9Q87MQVrBOywoYqPYVexe5zUDwjUQtvHCwE+qu
	 k0LnvVI7SvWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC54C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612863368.5737.3270697262699525964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cac09586376c59f30d70630b4b641a3029c10c15b88e89a6a8b3ce0b8ac517d
Date: Fri, 07 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786128633
