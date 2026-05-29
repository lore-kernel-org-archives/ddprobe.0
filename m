Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E35F330676
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780083754; cv=none; b=jGmA4U04vO7uQhZMdUsQ31dZNSm+RshnHQi2wRkW3ZweCXVqpQvppNijctRiBNa21Dxvs5paapja4jIY+ugOkQw5QuZNzxGEcJIx4WYPCTI/K/KfUPLWg1aJHkRWgakor4qRumucFZ9GDavi1Wvx+TT7a2onyErMYFeEMY3xnF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780083754; c=relaxed/simple;
	bh=REm1rNeXOQZkU2L5xJkGDjm/Eu8imAXpl+3C9QpKmPc=;
	h=To:Subject:From:Message-Id:Date; b=mfUixwO9SVjPYsON+nf6e3XziWeL1OyLsXlzNWRUcdUK464JKIqnc3FeGgNdxGxen/H/99Dh5Kx3PCv7hcmxvau2IRzqV7fnJHlEFoXeUzNXZ6qqB0Kgqfwr8JMsxBeMadr5H0DWEt94VnnEkJEmYGkkBKxXz5GiF6rkUFvKyOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxEnafgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxEnafgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFFF2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780083754;
	bh=REm1rNeXOQZkU2L5xJkGDjm/Eu8imAXpl+3C9QpKmPc=;
	h=To:Subject:From:Date:From;
	b=OxEnafgHqzMnm9hUQTceFyJO/tXd0pGdx7wNsFurlXkWNjAiFnyIZ0/LvOoEmKuHa
	 RmoYho1qLAJrv2oIUzaubH4HtsAKc8moy7I28EYWdQu1GDe5cBAD3uW4fdH9y1qrVj
	 RKyx/AxeHjiiYEiI5kf1K7iZ3z29H02mnqsjR+jxSHk3IJplG1QCQ7gYoke6Dj/0my
	 ja3dx/un8l713DOzsYQLnS2u5SsWMkjQkfD7ODqo7099VsxObfZ6ZPJ1Umrko9UCap
	 mcGuJNXXQgjOlJWabUA/08U8B5SchTHB0B54/Kdmd8FFQNeJHdNEgAV0vMe3o0ruhl
	 AGZDoYWvchpOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C350FCD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008375377.14303.17055677318995919756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42588c79f9c9ce578459635cf305ea198fd8b63f9c2af11205f52210668f7b84
Date: Fri, 29 May 2026 19:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780083753
