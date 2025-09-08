Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF722264C0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757329194; cv=none; b=tkpRSIzL5IUAevJOmZ5Y1VnWzI/fZrNg7sVAxDRUtAcJlhePODDHPfgh1rL4jjpAnxWUAjkSahQy27RP1j37YFvsQ/Ha2F7ji0cmYp8TpJM3+27IAPU0vAttO61FTy/wZ8GlQNiczB2D7OipkuYVhXvFkJqRrBhA/Z4OLinOk7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757329194; c=relaxed/simple;
	bh=/5BupvcimGkazCHv2euOlQKMHATtoQmd3FBUPr+FwdM=;
	h=To:Subject:From:Message-Id:Date; b=tGVRYmHkKLih8JtXN3/IcOyW8OgLmorySj8LsdMlI2+Q/qBEyqEJyuJ5YEyAAhJ7GVBBUJ8iG+4+2SHQ9c7vamFi2IkjHGMH2tKkMxBjeyQ1+f7sXLv/1E2r1t3n1PZIwfXWoI+sWN1FyiGFezFegAn7w8MVKA+oPRhh5z+9dh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8a+TpaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8a+TpaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE3FC4CEFE
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757329193;
	bh=/5BupvcimGkazCHv2euOlQKMHATtoQmd3FBUPr+FwdM=;
	h=To:Subject:From:Date:From;
	b=E8a+TpaOixiGYRuq2ZWmeK3or0DEfMenBfkBOJrXTVwMJVGDsWrNBiCmGCA32D4rh
	 mCR6+j8+7V7+fvS9E7O/wNjO+pkAWRz3QmVhe/FNWk1H+mTZ2ZdYca+yFSOp92GZAQ
	 kQ8jZ9PBSo3nHvn1pYYikpSpJFkZBnk6NT11Jiwo1YwSK4J0dXvxT1vAjPSooCrKll
	 EEZsiRZQWShG8Z5q9ai7iIKp4LitBnweeZQIUkR5EyTu0rbwJgekmxhxjEDYRLo5qE
	 321k9apGvKXV/GjTYEdMCDn4XwXNUU+iXHfW71mihXoqZP780w9hmfhuISO7nKeHQt
	 7QejfNug5j2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91353CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732919358.15339.6809180586090060107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33095072cbf49718ac69df287962cbe3796333c2b6cd419db31b4197b590cf87
Date: Mon, 08 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757329193
