Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2752B27C84B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772772294; cv=none; b=slJzgNNqSfDypU6yE1iuvPuM8iV++r9UXD6Y4HMoYZWOg7FOPi+qPNSgDZKED31CUov/gSdcUBInWwKeNfQ31ggQ91b9v7siNF6IImnogK61hF8kbgh5FO/4NqmUtbI8JBjUvQRnH+2eccds4JRv4My+fwVIv2zkNQ/PSEWWXCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772772294; c=relaxed/simple;
	bh=PFuHKSQFDBvCo+/ugJrCm7fk5aaJXV0A0sU8HVFmYMk=;
	h=To:Subject:From:Message-Id:Date; b=Ub2rVBKGUnvhBWlRDpeJLaT7v6Kq0M3Hn3KlrT1dBWpPIU829x5q7KlB3PqKw6L/fP3uIkU7u3dALuEwNFSYzyNrjdQF4pKDOlkvxeCxWEAHgNQT+wMEx1vQfq0QlxRSp+I5dUnoDEqMuaX4zeNjOuFJL+Ncer2p4UWk1wNikUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQ7n2+wS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQ7n2+wS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC39FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772772293;
	bh=PFuHKSQFDBvCo+/ugJrCm7fk5aaJXV0A0sU8HVFmYMk=;
	h=To:Subject:From:Date:From;
	b=uQ7n2+wS9+zLbuMnttVSwuCROsEyo3yMxz57GsTMdQq8lsul5KGFMuaHg6e8gScPO
	 ZKcsUtQ1bgsFwrFs7PN3tawEIthsSAccSrmfnMj8xMVgND/hcbgZC172IAztsBjic7
	 a/bXqJ6d6bazEKgKRJMJ0epcEnT51o1aMEdiGcrmhszSnJLLWDuQPdH77z2oZVJ8VG
	 xO2uoABC/o1vAS3Jo60nuRqlnvEiwR1qfS38Ht0BH8ucw01u8IP+ZpP7okfws6XkZg
	 d48+JUOUk9aWok+6QA0TECuGxTRkRdbMKhmlfFeIVqECPThSRuZYYUTMfbwYHm/Qoa
	 Kbl3oI0ci8s5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97587F513F4
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277229360.6843.10407204466454738004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d17eaedaa43a98c820fe2d91887815b601c8b6104b4fada38832bfbd9bce9bb
Date: Fri, 06 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772772293
