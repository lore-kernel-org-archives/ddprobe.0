Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5FB43166
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735815355; cv=none; b=MKRmHp3/99I5SpSX2imcXL9T7wTwiANMZxJcJB2ep4iw34WIUPN5DetuVn5suFeL3m3B/mAN7UJYssqzNnewVJAa+TS/5tUvNn+w/lkxEbmTkgbU2/d9TnSmKRmbPa8wx/aGJRuzZZb+cSrK1uwirzXqmY9MxbElaw9moq+fp7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735815355; c=relaxed/simple;
	bh=87FvDedCt6CQoUEq5O0hwUJYiCFG9311G2n/whFXGbo=;
	h=To:Subject:From:Message-Id:Date; b=gyNfVnq1+F3OC1hqRQp1ryjuz+c8ZhN8Cx4L8o2LqzgGt0wo5dBYkDRgoqnCXUv+mWXc3r9sYw+yfgn8ZmlWqisRr+jdVq0ZtJSuo0cG3Bn0C52CYUQwJRJuKYVV+V0EuBJ2704T09jcrGUiqtiWa9nSMVn0mqLKutYTHY1aH84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7TpguhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7TpguhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE548C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735815353;
	bh=87FvDedCt6CQoUEq5O0hwUJYiCFG9311G2n/whFXGbo=;
	h=To:Subject:From:Date:From;
	b=E7TpguhQBKNNzn7Zz5187K1OsdijVIsORaIl12xP88dqwfURUW1bmqu+Xu8sMTRW+
	 oPdGUMmkB701DL1Mc3IA923oKuo1S7vxc6sk1AkFTKlaTPhH/boSu7qaQscXoUfqPc
	 N5dEZhP8lsrf+5pw43rgZ4B/SttiqchF1QLJ5GKX8irV4toyEtWBtouRPqjACM4Jho
	 +m8ek+KY3ohPHNs2UxMZ601Ss2WmHb5VK7CWywXot7wzxh1fBUg2K/DIEeTWlZJhZR
	 TEkjI6Fwy/tKGuMd3e1qOMTp8xjITLUWvEXe+iXEc60nDFt3s+YCOU4VWI4r90Txrh
	 qrqtd/H0syPxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98895E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581535360.20928.2378627776852854046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae732f9416fc8b9bcf2c08c45e384e334269b65e69d69243df8fa1e1f4db753
Date: Thu, 02 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735815353
