Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E7614431C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717521983; cv=none; b=c5t9gyhLb5e5eDC4XLbm67wJcuqlqWBxPKH5uZQQOGHmXc8H1vDEN6KSoVoZdMLBx2Corm+Ft0RUk4GZC09stFNJkLbp4DWiN+uUD5JoLBRoOe/jHSE2mW3ViUbiGkVlEX0Lv/+uRKexfX71TPfUQHu4zx8HJxhW9fU2khoDouA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717521983; c=relaxed/simple;
	bh=E+yMQnQhd8mOZGkjTcqRtBf/OZl09d38kAGCMiecvqY=;
	h=To:Subject:From:Message-Id:Date; b=bhVyulNmf9r3tCjEdU9T4tToH7i2LZX4CTVoh+cSltnyKdRLATIl5ucewGLAR9dn6Sk7NT302DSEuiFzAUs9OJMcd9v7+wYqgT0oVTe9qAvgDvqOlVTnHRgbNQQCvdaMjNLhigUBiI8UK5N8gGIAJAduIkASjhixYsxiWIfK1K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvbHsYC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvbHsYC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6906C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717521982;
	bh=E+yMQnQhd8mOZGkjTcqRtBf/OZl09d38kAGCMiecvqY=;
	h=To:Subject:From:Date:From;
	b=RvbHsYC4Bdr7QCCfLhNRgUVZ95bfbqj6Y5AocHD9F/iSS+f7alyQCeAv3pmaFpAac
	 l48yI5H9OAogWRE35+kfu4CtFang1ndZ45gDX7qRu/U1OD89IClQjr0+A9cR9tVqst
	 L4uW9MPq6+fRpFBDJy3Sg/SI9ksn+RysxnwPEKYqG9d2O1E7j0ETnW1ZKIzfY6Tw3r
	 aGmJBQo3/tclK7o0BAJNkvFlhP0e6gPV6mpS8reMCL4/Fzpqjv7v+HznfDQqChi3gO
	 zH1bWGIl9BoQqK5BwbZSZZHEkYui+QdsflSyI9D+fYo1D9p4RTX10OGDLzxzpgsY7k
	 Q84VwbnhuRYOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C180AC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752198277.10107.10824005435655610112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf409331ac6c6ad8b46f7e6f1365d4623626b30351f7955fcc0e1a7782673b1
Date: Tue, 04 Jun 2024 17:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717521982
