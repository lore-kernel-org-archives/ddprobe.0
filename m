Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF2C1487F9
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 16:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713370763; cv=none; b=eDuso87mmHM8H12pNhRauJx+ITw5iDiY5Y3Y7C+8uGAJYKTLYF+phckc5dXNt392twZQGgRy1ebum11HMdlI2+7AeRdbWw9bGMAj8xL/BvE3yswceqtRsg76M7cWMlJYPEbuX/MBCRO6qH/C8n5dPwpVWJyy5+mnk0QVxNaiSnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713370763; c=relaxed/simple;
	bh=PS5F1hA+8I0CcNaOVoKcOSimFHPWExKtm6X44u8IiS4=;
	h=To:Subject:From:Message-Id:Date; b=SgQULJ6tT1f8WGILryF+9sTwkEh0QBZu3/rYg995KHSfzAhJh89/LUxIFVZH6NO6PMQPJhQtAqdGJxn6rw5XmSAFpi5aunr8TNXWagGWzLXMqVdYpGMstaTqiqf+qGSa6Xpp0NB2vQI5igUCOXidB6h4lgz8ld1lT98OAEkTG0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7f8IWcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7f8IWcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AA12C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 16:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713370763;
	bh=PS5F1hA+8I0CcNaOVoKcOSimFHPWExKtm6X44u8IiS4=;
	h=To:Subject:From:Date:From;
	b=p7f8IWcRTtlYlPW+8Nj9YpsmVOIBsERkfeEXq62LER0T7JhULbPdaRp4V/EahDED7
	 0+UUkiOi98ntNUoZPsB/6p2F1ububo8P4K2+o2Y4JxQrGmldeRf6tfXsv5ddk78qMh
	 PjsPDbYE50479x19CUAohKNH005BBRimBjueTQ9Y/IOxGpKFRIJmMlBZ7OGxrojmHa
	 +Oqc7kc024LtwyueqmQProZMXY5lh9i80CDUkY9A+1PCbTp8ku7RS+zBMys7ONxCeN
	 yD9jDiUt+T/CCGCDT8qPNCVG/7M2mHXkY24Yb0ZgbmHqbyZNGyvRUy4NXHFjrzgxaS
	 o/Rq7qidkNqug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFD30C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 16:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171337076289.770.2445140405314294693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c151391e82d5a51a23a8de51a3573a4f9fadd619e5cdd8c18a748a9e3d31b1e
Date: Wed, 17 Apr 2024 16:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713370762
