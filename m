Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E220C8CE
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727916954; cv=none; b=rYm/QKIPjxzm5wfHKoc4sf+zNIAkvStIRHYP7Z/eSoDbmDUjKo8eub2pZMiloE+CNEvPIP2bdbp8DS/IFtLyl2z/FnkcHXg+0jRUGwK5yyda9rWgk4w+j99mxhF+7UwTBWJ16pvtiJKrmgsbBIWMTzw8tsPoo72D26krsr39Mhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727916954; c=relaxed/simple;
	bh=xAonJqLp8aFV8uqJwwHVrAcy3EvDBDnNcYxG0cDriG4=;
	h=To:Subject:From:Message-Id:Date; b=qm4wng4m27F10FyiMhioJKcRz1Puq0RFajXbkEWkiFpjv10FhzxEjTS/lSUMKgmVfkaYL+cC64a7C11BZOPsxudA1NrfPbF4ODSam+aG6Ba6E6mx/m6x5apLDnZYLU4+Sa5KztgT7XmM4RSd5ODxR4uXb4odouMWOdCvLWgJC18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+HM57Yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+HM57Yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7861C4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727916953;
	bh=xAonJqLp8aFV8uqJwwHVrAcy3EvDBDnNcYxG0cDriG4=;
	h=To:Subject:From:Date:From;
	b=N+HM57YoDDw3fp+aTEixhbLSYhPH2AILHyFBcqqi4roTdJz5VMCZpxPKawx1LSiVm
	 u5+PR8zC9bLT26LYavD4xlQ7K5E/+eXraFF8gjjU24UrtY7epqSaz3J5fIJLVWnU4g
	 e35jm23kmqxt7S3QgAjENz106Vxlo4IrwArWx7GJWJ4gn7qV21Ryhfu8ZSjTGYEacY
	 wUOKKYQvKyHHKjC3o6H3dv2ivQVegoL68oIADxk0N03SbmxO8Kt63NVspn3xA8CuSG
	 KASvnWCJY6Y8FgfcV4GueHx0k/IgrWvjWARU0C/aeNSyyFUHS/kOFrnsBu/XIhBbJ6
	 qGTtn77+sdlrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E72CF854C
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791695368.5932.11149279047582362596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c98c1f03ab7af005ab80525c39b1b5239f259fd3e50c958d8b5213a670c6be0
Date: Thu, 03 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727916953
