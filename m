Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3149E8BFF
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728695754; cv=none; b=Z2ptTLMkjdwBZM0KLqXKHIA3WWxhIblclmFJf6NbFsZ+HeNDuvWkhjdhBJvI7hBJ4AuWnzhXwxz/11IgSvWt63e3fSrgi3qi1aecdiGFiClKEdD+M8BcxZ8s9XfUoabvPBvoJtWB73qFXbiZeX5oUtbu0eiSvUbQ6Rxr6c4TJZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728695754; c=relaxed/simple;
	bh=jppBg3aC7covZKpso6Mj182zyzl5JvIZDSX+unlU3VM=;
	h=To:Subject:From:Message-Id:Date; b=QoOqMIn3heZijKkX/8ByNp/k/f3R/wRLthjRuMiAm6eyWZS5GfZR9PyO601SR+kMWqWRkfvz2al8Tnc9fuUTlRD+GNuxpZ/x9Cidka0oVVcT3sDQ/Gc+YyD8Ird2RmvHjHRKcP/jrMV8j4Gc42G07qkKzFRgvLXQUsHZzGwvGX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uglVB9Mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uglVB9Mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27C2C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728695753;
	bh=jppBg3aC7covZKpso6Mj182zyzl5JvIZDSX+unlU3VM=;
	h=To:Subject:From:Date:From;
	b=uglVB9MopaOf35LcDtSQpvx6EXcrqQ63u+jZ37/t4W3OWQ3wchWBZ9kuJOYaWNoc0
	 L/jp4JYuZpe4xbg4KjZ7eOtTVF9oiacRh40e3Bvo+xINYEBZ1zm9kOD/k+NEeE/04G
	 G4MWvo8uQuyfgoeL77ux8/KhkSRTXZ5Ifq5aRNR/TTcbsmcj7LqNRf0yzHwWtryK6C
	 tYsH3bwN7vNQlkL0OM1RbOTEdMlGC0aFYPxSsGNwMaF5Cc8NH20p8X1BTHdb03vnlx
	 /XyWAeNsMvO/+ytJPxVyb+m7HH9so811Eog0vb4tiEypKRvgNbwSSFAjuSoMHm3wDc
	 /AEmxNdFFue5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91675D0EE1C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869575358.26148.17643865576936188979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53a6c3a297b4179c66d6c65125424292f0fde88f08077076c9d14d2ec83186a
Date: Sat, 12 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728695753
