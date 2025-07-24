Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3163D274B52
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753346994; cv=none; b=CKQ37glSfrCtt3etmIS72BkMq+42PzeNHvZP82SWyA6ZJmcWCDBNcW19IWfggS5B62ladXV5vcuyCsoRl9JXN4UrvqIHhW5PWJmzpkMO0Z4Qk+X1hjmiGmBQC6rW6nrXNd+6GVDlgn+Qf2t0l2vf6c12xbPZ8g4BShnaunrn6W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753346994; c=relaxed/simple;
	bh=IvmpvCtXTsdM8cUFMvzTmr7MlKq90ghZz6aURcHmhug=;
	h=To:Subject:From:Message-Id:Date; b=Mmwhy5wCX300eTuhN0TUTXYpltCOGeGycFlt9tnoIJ9ZoQz+LIg3CCWE/Hyr8ZHx/NlNYxGi3/R6AJt3lQgaB14vRJH0j0e+feONaDxmHNu0yd5fPKlg/1802nqUWL7DIE3IRTIw/m+thl54c4mqUpxv/jInMpzrOTBJXYZDrSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+XD5xTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+XD5xTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10E3C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753346993;
	bh=IvmpvCtXTsdM8cUFMvzTmr7MlKq90ghZz6aURcHmhug=;
	h=To:Subject:From:Date:From;
	b=g+XD5xTh1uxxVG7j6IyPXWSynuY26bKXZv9mgYt/EunFCHJX9SMcR0Q+CVdrjw3Vj
	 sSVYqvyZowNF/rmDhAQu+vO2gp9EkIGbzDdWnb/+s/3ZttpGIKqwevftVtr+YSaogQ
	 UxxmCipfSPZnuUljSjPK86zj+fYYmLDk+BjSdWzLRa8I1gvu0N20LbTel/ZwZZzANh
	 +FVwYFWswwVgb9z7w9T3aIk1i1ZNKf84+6xUoDMD/F2GEZe/VNr2aW3Yzzoe3XziZc
	 SZ8VHdqgxQJjg22ruC0i94OTSPoSOLlsyFBBJluat44BI5w32s4g24ZdTNE5qN7PbQ
	 32fRIo/7/pQlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977EEC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334699361.7451.8732968563284785076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc837fb4e913d9d522df56c5004d1e9da4fd918708cdf44452a929771728856
Date: Thu, 24 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753346993
