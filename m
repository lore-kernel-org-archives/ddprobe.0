Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DD345DF70
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786098634; cv=none; b=Q4Z+rZlcXETiDVxEMyrNOgzZygtmEFA1c/rtu3RqLSlqY8g2wPKsVqAFNhJNLvGAik3tN00tL8mNzcFPtY2b8OzfekM17YxCBIr/A5HRdXJTfwCpl6NimcP3oT4YNUaNxkiBoSFuGXl4gMbGa1atvT1pbqcJIfhYLdvwUSGtNCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786098634; c=relaxed/simple;
	bh=AxX/eaxp/Ci9JTqUmeYe1cN1/3vnVJ0+ITZZPGBL2DI=;
	h=To:Subject:From:Message-Id:Date; b=m4OjAY/IBaWN412UWeJRgLAqEkYXWxwMLneTnpyM/bSOUkWxQd4DPnQohemd+TnaV8TUT1TXS11jr5r9vpaHIanT9mWxEuMQcFjVXRoH7EbKnlMmqV7CyWOVSxbCLqAxNMJbRBH5rj/utIkTiTpMfaasI3Bc5HWEWIwdIHQ6aVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlkDndcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlkDndcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE46C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786098633;
	bh=AxX/eaxp/Ci9JTqUmeYe1cN1/3vnVJ0+ITZZPGBL2DI=;
	h=To:Subject:From:Date:From;
	b=YlkDndcAeSxGgjxXwMTmUezCnshCXKXnBGA0Mhka1jcNdKgiIh5AxY0IieF+vdpke
	 SeaY9XQUpr3Jb0xGgCWPWYgyUCjz4994ZNbrkG/akgaSOwYEqcH+mmCKV1CuRIimfW
	 A9iCUdfDfNOgL/koA3emk2mww+8Lxh8O5Tf2F7rI05hYtyqkQC7dFYaBaoWB1Pu5zP
	 wW3Iy47Gl+DPHe4MkwF26xgrGkmgTnHALiijtwee2ZzT72dJhIfpTznvB38miHEpJX
	 VnhmUQqQuO67WaxnRP23ibNVv0BNioeJ78nD5Ys72xGOdPyM5QQyc5I3nsqrG86X0u
	 mVajSqFk3Pe1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF65C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609863369.27190.2325568474777095421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c575b5d679b3047147b17614f98777ac9d43322d0ab01333752f468cb4b40fc8
Date: Fri, 07 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786098633
