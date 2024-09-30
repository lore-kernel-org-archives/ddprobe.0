Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1428B149DFD
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727732154; cv=none; b=nCIFhS0ajw5tpB9V7O3ZxaRB4BM5wwvuxigPOwj4kxWq0bCIMLAsFaZqayJY+gwKLumWQGP5KZSNuaYzLA6e29scIEHtTaQ7Q+vmG1vsG0hBmOSflxbFEKcjH1UJ5YJN1z1XCc1QyEN/CEryvm8Flus5d2KVWO0XAgzrq4Xu+3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727732154; c=relaxed/simple;
	bh=f6Ujbb57HQcfaKR9MfRt1I2IfqdqC05viL9m+n89Q/4=;
	h=To:Subject:From:Message-Id:Date; b=LRvqBlC0fmv1nRuO3JhrFW8xcQVqCNUSbgqFijvlv34ieGf2zJwhnbfl4waa26oEFuI0rxlfve+gFqxrFTIC3/z2pDJFmhVn2ZqcwW5ybEeqOBd5C26xA7N6rJksBjy++bTt9Oy6GUNGFqHvrctBDy78CTj5yqRBrN6Q+3XFOug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iei3jXYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iei3jXYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ADAC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727732153;
	bh=f6Ujbb57HQcfaKR9MfRt1I2IfqdqC05viL9m+n89Q/4=;
	h=To:Subject:From:Date:From;
	b=iei3jXYcc8fWSmHl9/xIz7+tmRUpysaMnMSHjBoy2iAnVBWS+u2UIH/sNv8iHCyM7
	 jT/Hz8oZhuABNOL9kys3Tb0yTRRs/BcPMVl/Ky+v/A7lLVPHp266NJVwUsPlCY/2qW
	 hgY4sfCLjNZqkKhLdMDkfY/IyXOJmDwGd7viX0ZRZKmUUNxx0etjuzgx5TiP6/m8YQ
	 pUcZEJdWQ+QKPqrDwngPh7N9fu2Uy/W7Ppp4ewAweEGCk66gP/CojWVbTwLn0GQcq6
	 +YxCqxFQUff2viIZk2N5LApDMMrNXgP+FLtTK0DOQiZNMMOfUVoyZuWxKVAQpjFY5P
	 X3NPx0xy9EbTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281ECEB2C9
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773215359.3353.17029695433156177635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97678f8e39a83e29bf6660c2c675fa43250cad9a57b1cc543dfb76a583de00aa
Date: Mon, 30 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727732153
