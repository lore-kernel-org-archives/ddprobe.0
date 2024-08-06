Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339FBEADC
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722939354; cv=none; b=KlnfR6TAxHRzLQy4np6F+mAxhe3WGxkt1uQKeX5p+6ErqA4GqO9WqKKSQvDls/DRZj7/ykauxYT4Vg1DmNh/YgdvkJ5fVmiHkW95CF9w0WfnOm7+0oejQim0/JOjaslf5bZFlvvUM0gy4kko3KI8CCH76LX5InCE4dVkRkDbPw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722939354; c=relaxed/simple;
	bh=8O2x6xyIbtj4mtyMvCD8PXwXxWvoRw5i5lcSWdtU6vg=;
	h=To:Subject:From:Message-Id:Date; b=Xi7EdxMo5svPRmXgZhnztx5NEXPTOmQKqC6Ps8JaIHDdocbHoWs/HsksPurhPSMy7HZ6oKkHWrDSNwI2AUo+aPb5lAwFlbTmoEJAV4bLSvDr8s7od/3IbjkT9+txLua/pGiuWUU1zZYZk+WyLP48pXU6gGFYSyS2ObENeyHBUWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGbQOtkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGbQOtkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAED7C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722939353;
	bh=8O2x6xyIbtj4mtyMvCD8PXwXxWvoRw5i5lcSWdtU6vg=;
	h=To:Subject:From:Date:From;
	b=UGbQOtkEvYmHuIkYG9YMRMwHBaS/Bnl0wRmu85lxpFXlxz6wpDkKPpweNapUQCaoF
	 z/M2KG/2HYI22cRnL53iYzMwcIXnJbvjnnOz7H88EcsFPQnzWd2evIGAhsqIsg3vbY
	 9LmjBHqMhDJRi14EYGfDOM+eWVnZozc36cCahJiRkfFYe54en8nYyE1Dea8w2l+emU
	 N8gvUPsPeThcRuCZrD4gEBq+JM5mCFi+aC84n2MR0/GGajM7ck9UBZu9YBeNTvsYFw
	 DrMBdmYPZ/jUe0spChZ0Tkaa2Xj/MN6tMT8jpaLKpabiH03IcDd1wwvGj7ugbe5TW0
	 7hyAVi8my6MFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A84AC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293935362.21179.2627695675135310987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4a8b1e4b22b7602bdbe13d699beecac68ddfb8c332e5f110408eb2e0f6ff98
Date: Tue, 06 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722939353
