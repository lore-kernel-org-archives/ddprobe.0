Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5695F3C76AD
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786968034; cv=none; b=hY1goT2VPnebXJMAqkJH/FKgxXZqzmjoKTMfxvY5p9IQyJIzV3p54f3UbZL90qlQwZUyoWYtF6oXfyVPlXJ0P48KiHDaaQWB7Po3VuBOhSwH6R3H8hfHOJ78dxCE2z1+HYhlUY6zErd7sNryQu4skDrKow807B79ecFdCxsh//U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786968034; c=relaxed/simple;
	bh=xwmgx6vyDt/wxq+5U+rqMbQBx39NTf0TUm5YJHN0la8=;
	h=To:Subject:From:Message-Id:Date; b=gPXslxou3UrdqaoAbsHYkFQ/DOgpOyqnxL87uDfje6Z7W0XPRBd8b8So4ABU+DbK5fDWtTf2lRrtToOj1bndX3T7q1Ia4HIwq3ov5Tr36s9cLxpBHX1lnJvFKFpK3EAu21hNaPsw1Kk8AFoKayMidXl+zAMEFu5BK64YkISjo1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYH/IYUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYH/IYUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7748C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786968033;
	bh=xwmgx6vyDt/wxq+5U+rqMbQBx39NTf0TUm5YJHN0la8=;
	h=To:Subject:From:Date:From;
	b=SYH/IYUlOc82+RnPuTM2gJbVzfYjWEf7H7oCHQkgx4AK9heQcHSdAkL1DzFzR0zv2
	 s1QzDKizS3/uu20H/C/HreyO31TNohNCBvH6BR09AsnClaDqUpjGlKyUaSHPA/5F05
	 M4VF0PJukM7hroK6/UyWHQQa+SKEpjbjszX2oKOf2AQmdP7nnsr37IDpKOCIiw42kt
	 wj7+Y+xbxrFYqv1BtR5wLjN5CkUUm6SJ41vY17ws9b5tzsrxnPeUEyyLLbcbf8Wd7k
	 cCzTlg3wDCb88fvuiHu40geIGQnX0mnh2gh/IO4TPrfKVUDlqwiLA9aIOAJBJa5nFF
	 /FtMkBwXSGTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2063C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696803371.7697.1949135352697936907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4f5c38c04032556f3c921b2bec41cfeb9301cd37aeb8317f595d0aa81851e1
Date: Mon, 17 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786968033
