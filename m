Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3C62BD035
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768289634; cv=none; b=P8VH2Zc4CuHMRkedEBZZjzt+A0nOdVqvKGLp6U6ojQTEPuckRDHtcc2ZODGjOUvt9VoNYdweCLtLb5DssviJ9T3WR5GflnmaLXkBVWlT668ZeGVYiE/+zmofz1KyHkFcTAI4VAwoFFodgtiDqMa8kfJwkBftNKUwCbBcx+RzQ+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768289634; c=relaxed/simple;
	bh=bQJ11uK8FJke3KWu4iJSUz2rXV8o41wE2RzSnFX6Mm0=;
	h=To:Subject:From:Message-Id:Date; b=lLgJvlKyGg9NqIKI9KhP1EBqx4tWHD434j4KBIz4wZqVlUkU+kjrftJ0ounOYppE5R0zkr+6dAoT4AHBIVTt6LIEQw1Fo3Ev3I/uQ/5efh/ZcD5ExHllKINrEJMAeu3Dd3Baq1YpyhZmJNFlJ6rtetk5VZ1Ckn8Pk7m5LjOaC40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDrk5XQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDrk5XQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBBC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768289633;
	bh=bQJ11uK8FJke3KWu4iJSUz2rXV8o41wE2RzSnFX6Mm0=;
	h=To:Subject:From:Date:From;
	b=cDrk5XQV+PY0UaZctwlwKDfDYKAybwYmraOiQhX97onKwzlUZOr0TUtq6RyyVu/22
	 GmY3JS8Q7Oc4vpgfnEI8x6NNtYleu2+X0XtA6LBkQaBX2VfQSh6OYndxtUTf37Ll1f
	 DMV4JaKlwnCwwiil4KTEuWItycOB9CuMNeCbjJezs0oVXSbOFkbEil4i8XJJRx1ikd
	 V7sxWmzm4DgEy97SCKDMM33qB40IjnxetB4zN8R9zKLtcH+h/6ViPScMRW6lFHehKP
	 G1ESShBZtUBi+9MelZbj2Hvh9sPj+IsD1YZk8x0n9VSg43262JO85Wx1Vo0FrVHZiX
	 9vkqVYSFDY6Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E7D29DDE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828963358.10431.11154163375374419398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd96e38994162bbf5ba8770ccac94cd0dbb957effd1240562b04a41f977600c
Date: Tue, 13 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768289633
