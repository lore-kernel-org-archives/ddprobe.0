Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07222205AD0
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733256354; cv=none; b=ljYxRCoRDLRFCeZtmBZnQdnMAdEmsijVqkfu5q31TRpCZ0xWnDf1QDPR75RF1xeig1gTav8Yit1LldRnmw10fu6++Vk4DuAj+WC1rw1LpiUig/MrFIw3pL/nKV/3y1rLbmCyRtmRUC0ImnScoccZi006RWSk7BRCfbC7IbwM0j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733256354; c=relaxed/simple;
	bh=nRIhC64KagGdST77E6fJE89EvkteVRZ8UQkSWMe/pGE=;
	h=To:Subject:From:Message-Id:Date; b=khdtgYvdlnQnen95F32EUTIbJ9QHPxB3viDVj2fygwx3Rr0ozHkUmetwxxxh1JmOfiJVRGVlaTp1jngdgKakrlCMpyCzbXLPxQC79Ij1KTb5jOsuxVzQ3p9/YwRXTg12xd8kE4nBI69EV78DLPf79A7eOoHatlmqA8zBNiyBNig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nN8vS+g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nN8vS+g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEC5C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733256353;
	bh=nRIhC64KagGdST77E6fJE89EvkteVRZ8UQkSWMe/pGE=;
	h=To:Subject:From:Date:From;
	b=nN8vS+g0sVZ5RBZqgUPfv/A5MgIbML7/oPcmrQFHH8NlNVlSNLH1g4PqVkNo+7PYy
	 l67vrSe8d094lTlzbQssEuP2vGjwEocvBqkjET3lnV5CS9n/QMx3L1o4HHlRvtlHxo
	 kX8047tdkvTr2wI7pK3B1O+ARTTzdpvg741X7CoayjsDJ0N9JDBMrrtwDIobHe+q32
	 Csaob2P+srkPtVJktQv8ZLGSwpl+ceWR9kJe/rMzsskvBz5QOC2Y+DEFwtzG8hf+no
	 Ne0fof8uHSvTe3sEsJdpfnDBt6lTQ1GHbu9A+B+lcPz+GScqo6giWOc1f2xJpGk82x
	 uncql5eM5jj9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC0E74AD0
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173325635357.6588.6317629851163930265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030f0291eb5d5a601c559985228bdc46532cb8d3a7c92465e3ea61b1ab643993
Date: Tue, 03 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733256353
